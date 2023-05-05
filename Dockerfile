FROM rust:1.67

ARG USER_ID
ARG GROUP_ID

RUN addgroup --gid $GROUP_ID user
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID user
USER user

RUN cargo install wasm-pack

WORKDIR /app

ENTRYPOINT ["wasm-pack", "build", "--target", "nodejs"]
