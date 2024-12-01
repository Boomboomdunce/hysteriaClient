# Hysteria2 Client Docker Image


This repository contains the Dockerfile and GitHub Actions workflow for building the Hysteria2 client Docker image. Hysteria2 is a powerful proxy tool optimized for harsh network environments.

## Quick Start

Pull and run the Docker image:

```bash
docker pull [your-dockerhub-username]/hysteria2-client:latest
docker run -d \
  --name hysteria2-client \
  -v /path/to/config.yaml:/etc/hysteria/config.yaml \
  -p [local-port]:[local-port] \
  [your-dockerhub-username]/hysteria2-client:latest
```

## Configuration

1. Create a `config.yaml` file with your Hysteria2 client configuration
2. Mount this configuration file when running the container

Example config.yaml:
```yaml
server: your-server:443
auth: your-auth-string

# Transport
transport:
  type: ws # or wss
  path: /path

# TLS settings
tls:
  sni: your-sni.com
  insecure: false # set to true to disable certificate verification

# Local SOCKS5 proxy settings
socks5:
  listen: 0.0.0.0:1080
```

## Tags

- `latest`: Latest stable build from the main branch
- `dev`: Development build from the dev branch
- `vX.Y.Z`: Version tagged releases

## Building Locally

To build the image locally:

```bash
git clone https://github.com/[your-username]/hysteriaClient.git
cd hysteriaClient
docker build -t hysteria2-client .
```

## Environment Variables

The container accepts the following environment variables:

- `CONFIG_PATH`: Path to the config file (default: `/etc/hysteria/config.yaml`)

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
