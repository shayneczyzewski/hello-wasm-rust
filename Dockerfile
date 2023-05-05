FROM rust:1.67

RUN cargo install wasm-pack

WORKDIR /app

CMD ["wasm-pack", "build", "--target", "nodejs", "--out-name", "Foo"]
