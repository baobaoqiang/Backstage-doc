# 设置基础镜像
# FROM nginx
FROM harbor.rdev.tech/ccp-rail-base/nginx:1.15.5
# 定义作者
MAINTAINER test <mengyuan@rdev.com>

# 将dist文件中的内容复制到 /usr/share/nginx/html/ 这个目录下面
COPY site/  /usr/share/nginx/html/

#删除default.conf
RUN rm /etc/nginx/conf.d/default.conf

#用本地的 default.conf 配置来替换nginx镜像里的默认配置
COPY default.conf /etc/nginx/conf.d/default.conf

# 文件夹添加权限
RUN chmod -R 755 /usr/share/nginx/html/