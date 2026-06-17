#Choose a basic Python environment
FROM python:3.9-slim

#Worked inside a folder called /app in the container
WORKDIR /app

#Copied requirements file into the container
COPY requirements.txt .

#Installed flask and prometheus_client
RUN pip install -r requirements.txt

#Copying all your project files into the container
COPY . .

#Run your app when the container starts
CMD ["python", "app.py"]