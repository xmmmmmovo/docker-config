curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun

sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
    "registry-mirrors": [
      "https://hub-mirror.c.163.com",
      "https://mirror.baidubce.com",
      "https://dockerhub.azk8s.cn"
    ],
  "insecure-registries" : [
    "hub-mirror.c.163.com",
    "mirror.baidubce.com",
    "dockerhub.azk8s.cn"
  ]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker