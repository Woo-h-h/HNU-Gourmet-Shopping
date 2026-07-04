FROM openjdk:8-jre-alpine

WORKDIR /app

# 时区设置
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone

# 复制打包好的 JAR
COPY target/hm-dianping-0.0.1-SNAPSHOT.jar /app/app.jar

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
