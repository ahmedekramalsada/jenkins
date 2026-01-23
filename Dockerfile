FROM ubuntu:22.04
RUN apt update && apt install -y curl
COPY app.sh /app.sh
CMD ["bash", "/app.sh"]