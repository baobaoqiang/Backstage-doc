---
title: Backstage 开发者平台
---

![infrastructure](../img/infrastructure.jpg)

# 太初集成容器管理系统、制品库、监控


## 点击“查看详情”进入容器管理系统

`Kubernetes`的`dashboard`，可视化工具，基于web的高度可扩展平台，供开发人员更好的了解`Kubernetes`集群的复杂性

1. 将`kubernetes`环境的配置的`config`文件拷贝到`octant`服务器的`/root/.kube/config`；
2. 容器管理系统呈现环境的可视化内容。

## 点击“查看详情”进入制品库

制品库是用于存放镜像的仓库，主要是构建项目需要的基础镜像和项目构建成功生成的最终镜像

1. 登录制品库；
1. 点击项目，点击创建项目；
![help-project-create](../img/help-project-create.png)
1. 使用命令push镜像，将镜像推送到自己创建的项目名称下；
![help-image-push](../img/help-image-push.png)
1. 下载镜像使用时，点击项目里的镜像，进入详情，在“拉取命令”列，点击pull命令复制命令下载。
![help-image-pull](../img/help-image-pull.png)



## 点击“查看详情”进入监控

1. 登录监控
2. 配置数据源
    1. 点击 Data Sources
    1. 点击 Add data source
    1. 选择 Prometheus
    1. 填写 Name，URl，点击Save & Test
![grafana-data-source](../img/grafana-data-source.png)
3. 点击 import，输入[Grafana Dashboard](https://grafana.com/grafana/dashboards)提供的id，导入展示模板
![grafana-import](../img/grafana-import.png)
