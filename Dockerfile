# ベースとなるDockerイメージ指定
FROM ubuntu:24.04

# タイムゾーンの設定
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 必要なパッケージのインストール
RUN apt-get update && apt-get install -y \
    sudo \
    git \
    vim \
    curl \
    wget \
    tar

# # TeX Liveのダウンロード
# RUN wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
# RUN wget http://ftp.jaist.ac.jp/pub/CTAN/systems/texlive/tlnet/install-tl-unx.tar.gz
# # TeX Liveの展開
# RUN tar -xzf install-tl-unx.tar.gz

RUN sudo apt install texlive-full -y

# RUN code --install-extension James-Yu.latex-workshop

# 作業ディレクトリの設定
WORKDIR /workspace

RUN mkdir -p /workspace/.vscode/
RUN mkdir -p /workspace/tex

# .vscodeとtexディレクトリのコピー
COPY .vscode /workspace/.vscode
COPY tex /workspace/tex

RUN wget https://www.ieice.org/ftp/tex/ieicej/LaTeX2e/ieicej3.3N.zip
RUN unzip ieicej3.3N.zip -d /workspace/tex/style/
RUN rm -r ieicej3.3N.zip
# いつもの
# docker build -t <image-name> .
# docker build -t lualatex_image .

# docker run -it --name <container-name> <image-name>
# docker run -it --name lualatex_container lualatex_image