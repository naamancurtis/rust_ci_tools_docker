FROM rust

RUN apt-get update -y \
  && apt-get install -y --no-install-recommends cmake \
  && apt-get install -y --no-install-recommends libsasl2-dev

RUN rustc --version; cargo --version; rustup --version;
RUN rustup component add rustfmt
RUN rustup component add clippy
RUN cargo install cargo-chef
RUN cargo install cargo-audit

ENTRYPOINT ["bash"]
