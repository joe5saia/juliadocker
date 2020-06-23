FROM julia:1.4

RUN apt-get update && apt-get install -y \
    build-essential \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY Manifest.toml /app/Manifest.toml
COPY Project.toml /app/Project.toml

ENV JULIA_PROJECT=/app
RUN julia -e 'using Pkg;Pkg.instantiate();Pkg.precompile()'

CMD ["julia"]