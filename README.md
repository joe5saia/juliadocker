# juliadocker
Basic setup for running working with Julia inside a container with VScode

Just sub in the new `Manifest.toml` and `Project.toml` and rebuild the container

To test:
`docker build . -t "juliadev"`
`docker run -it --rm -v "$PWD":/app juliadev julia helloworld.jl`
