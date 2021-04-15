# Base Image'imiz
FROM python:3.7

# Uygulamamızın dosyalarını sanal ortama aktarıyoruz
COPY . .

# Flask uygulamamızın kullanacağı ortam değişkenlerini giriyoruz.
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=80

# Uygulamamızın ihtiyacı olan modülleri yüklüyoruz.
RUN pip install -r requirements.txt

# Docker'ın çalışacağı port'u belirliyoruz
EXPOSE 80

# Flask uygulamamızı çalıştıracak komutları giriyoruz.
CMD ["flask", "run"]
