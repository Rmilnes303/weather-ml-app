FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir Flask gunicorn -r requirements.txt

# Copy the rest of the application code
COPY . .

# Run the app
CMD ["python3", "app.py"]
