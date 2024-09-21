FROM python:3.11-slim-bookworm

COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/uv

WORKDIR /app

COPY requirements.txt /app
RUN /bin/uv venv && /bin/uv pip install -r requirements.txt 

COPY . /app

CMD ["/bin/uv", "run", "streamlit", "run", "app.py"]

# docker build -t multiple-pdf-reader .
# docker run -it -p 8501:8501 multiple-pdf-reader
# http://localhost:8501
