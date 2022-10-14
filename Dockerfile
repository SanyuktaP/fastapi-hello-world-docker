FROM python:3.7
RUN pip install fastapi uvicorn
EXPOSE 80
COPY . /app
WORKDIR /app
CMD ["uvicorn","app:app","--host","0.0.0.0","--port","80"]
#CMD ["uvicorn","app:app","--reload"]