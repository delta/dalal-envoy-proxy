## envoy proxy for grpc-web client

### Prerequisites

- envoy proxy [installtion guide](https://www.envoyproxy.io/docs/envoy/latest/start/install)

### Check prerequisites

```bash
envoy --version
```

### Validating Envoy configuration

```bash
envoy --mode validate -c <filename.yaml>
```

### Run Envoy

- development

  ```bash
  envoy -c dev.envoy.yaml
  ```

### TODO

- [ ] production envoy configuration
- [ ] dockerize envoy (development and production)
