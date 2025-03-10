podman build -t pdm-python .

podman run --publish 5000:5000 pdm-python
