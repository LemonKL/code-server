#!/bin/bash

tag='registry.cn-hangzhou.aliyuncs.com/kliang/code-server:1.0'

docker rmi ${tag} || true

docker build -t ${tag} .

if [ "push" == "$1" ]; then
  docker push ${tag}
fi