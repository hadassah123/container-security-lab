# Use minimal base image (security best practice)
FROM python:3.11-slim

# Create non-root user (security)
RUN useradd -m appuser

WORKDIR /app

# Copy requirements first (layer caching)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app
COPY app.py .

# Run as non-root
USER appuser

EXPOSE 5000

CMD ["python", "app.py"]