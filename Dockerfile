# Use an official GDAL image as the base image
FROM ghcr.io/osgeo/gdal:ubuntu-small-3.9.0

# install pip and lsb-release (optional) system package
RUN apt-get update && apt-get -y install python3-pip python3-venv lsb-release --fix-missing && apt-get clean all

# create and ctivate virtual env
ENV VIRTUAL_ENV=/opt/geoenv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt /app/

# Install the necessary dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run Jupyter Notebook when the container launches
CMD ["jupyter-lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
