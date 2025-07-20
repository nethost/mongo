group "default" {
  targets = ["latest"]
}

target "latest" {
  context    = "."
  dockerfile = "Dockerfile"
  platforms  = ["linux/amd64", "linux/arm64/v8"]
  tags = [
    "registry.cn-shanghai.aliyuncs.com/nethost/mongo:8.0",
    "docker.io/nethost/mongo:8.0",
    "quay.io/nethost/mongo:8.0",
    "ghcr.io/nethost/mongo:8.0",
  ]
  push = true
}