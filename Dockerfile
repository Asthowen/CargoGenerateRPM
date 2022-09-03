FROM fedora:latest

LABEL version="0.0.1" maintainer="Asthowen<contact@asthowen.fr>"

RUN yum -y install make automake gcc gcc-c++ kernel-devel curl pkg-config openssl-devel perl
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN cargo install cargo-generate-rpm

COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
