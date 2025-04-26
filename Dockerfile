# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy the API code
COPY ./ ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variables (optional but good practice)
ENV PYTHONUNBUFFERED=1

# Run database migrations before starting
RUN alembic upgrade head

# Expose port
EXPOSE 8000

# Start the FastAPI server
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8000"]
