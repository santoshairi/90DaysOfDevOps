FROM ubuntu

WORKDIR /app

RUN apt update && apt install -y curl

COPY hello /app/

EXPOSE 8080

CMD ["bash"]


