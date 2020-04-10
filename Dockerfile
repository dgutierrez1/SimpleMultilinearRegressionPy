# Latest python
FROM python:latest

# Packages that we need 
COPY requirements.txt /app/
WORKDIR /app
# instruction to be run during image build
RUN pip install -r requirements.txt
# Copy all the files from current source duirectory(from your system) to
# Docker container in /app directory 
COPY . /app

ENTRYPOINT ["python"]
# We want to start app.py file. (change it with your file name) 
# Argument to python command
CMD ["app/model.py"]