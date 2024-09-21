FROM openjdk:17-jdk-slim
# endereço para a pasta target
# .jar que é gerado sempre que compila o projeto
ARG JAR_FILE=target/*.jar
# copiar o .jar para dentro da nossa imagem
# renomeia para app.jar
COPY ${JAR_FILE} app.jar
# comando que serão executados
# assim que o container inicializar
ENTRYPOINT ["java","-jar","/app.jar"]
