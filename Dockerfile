FROM fedora:latest

LABEL version="0.0.1" maintainer="Asthowen<contact@asthowen.fr>"

RUN yum -y install make automake gcc gcc-c++ kernel-devel curl
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN cargo install cargo-generate-rpm

COPY entrypoint.sh ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]