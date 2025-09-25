# Simple Flask App (Docker)

A minimal Flask application to demonstrate Docker builds.

## Build

```bash
docker build -t demo/simple-app:latest docker/simple-app
```

## Run

```bash
docker run -d -p 5000:5000 --name simple-app demo/simple-app:latest
```

Visit http://localhost:5000 to see the greeting.

## Stop / Clean up

```bash
docker rm -f simple-app
```