FROM python:3.6.5
RUN pip install Flask==1.0.2 redis==2.10.6
RUN useradd -ms /bin/bash admin
USER admin
COPY app /app
WORKDIR /app
CMD ["python", "app.py"] 
