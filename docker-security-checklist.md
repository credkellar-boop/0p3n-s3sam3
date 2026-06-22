## 1. Image Security
* [ ] **Never use the `:latest` tag.** Always bind deployments to a specific cryptographic digest or version tag to maintain configuration control.
* [ ] Use minimal parent distributions (such as Alpine or distroless images) to radically reduce the available attack surface.
* [ ] Scan images during CI/CD execution using vulnerability assessment frameworks (`docker scout quickview` or `trivy image`).

## 2. Runtime Restrictions
* [ ] Run container processes as a non-root user account by explicitly declaring `USER node` or similar configurations in the Dockerfile.
* [ ] Mount the root filesystem as read-only by appending the `--read-only` flag at container runtime.
* [ ] Drop default kernel capabilities that are unnecessary for execution:
```bash
docker run --cap-drop=ALL --cap-add=NET_BIND_SERVICE target_image
