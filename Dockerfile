FROM python:3

ENV BUILDKIT_PROGRESS=plain
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Create a directory for the application code
RUN mkdir /code
WORKDIR /code

# Install dependencies
COPY requirements.txt /code/
RUN pip install -r requirements.txt
RUN pip install gunicorn

# Copy the rest of the application code
COPY . /code/

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["gunicorn", "cars_store.wsgi:application", "--bind", "0.0.0.0:8000"]
