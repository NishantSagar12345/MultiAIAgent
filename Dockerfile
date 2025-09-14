FROM python:3.10-slim
##Essential enviroment variables
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONBUFFERED=1
##Work directory inside docker container
WORKDIR /app    
##Installing system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

COPY . .
RUN pip install --no-cache-dir -e .
EXPOSE 8501
EXPOSE 9999
CMD ["python","app/main.py"]