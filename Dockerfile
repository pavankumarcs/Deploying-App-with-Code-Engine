FROM python:3.12
WORKDIR /app
COPY requirements.txt .
RUN python -m pip install --no-cache-dir -r requirements.txt
COPY . /app/               
CMD ["python", "demo.py"]



# /app is the path inside the container, not your host folder.
# the /app name can be changed. for eg: /my_app_container   its just a name for the container like we assign for host folder
# myapp is your host folder on your Mac.
# When you do COPY . /app, Docker takes everything from your local myapp folder (the folder where the Dockerfile lives) and puts it inside the container at /app.
# So even though your local folder is named myapp, inside the container it just becomes /app. You can actually call it anything — /app, /workspace, /project — it’s just an internal path.
# Your container doesn’t know or care about your host folder name; it only sees the filesystem inside the container.



# Instruction	Function (one line)
# FROM python:3.12	Sets the base image with Python 3.12 installed.
# WORKDIR /app	Sets /app as the working directory inside the container.
# COPY requirements.txt /app/	Copies the requirements file from host into the container.
# RUN python -m pip install --no-cache-dir -r requirements.txt	Installs Python dependencies inside the container.
# COPY . /app	Copies all project files from host into /app in the container.
# CMD ["python", "demo.py"]	Sets the default command to run the app when the container starts.
