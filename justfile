build-and-push PKGS='':
  docker buildx use local


  make \
    GOAMD64=v1 \
    PKGS={{ PKGS }} \
    TAG=v1.5.1 \
    PLATFORM=linux/amd64 \
    INSTALLER_ARCH=amd64 \
    REGISTRY=ghcr.io \
    USERNAME=djeebus/talos \
    push
