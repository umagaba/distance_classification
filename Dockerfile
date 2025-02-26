FROM python:3.11
WORKDIR /app
RUN apt-get update && apt-get install -y libgl1-mesa-glx
COPY . .
RUN pip install numpy pandas scikit-learn wandb opencv-python matplotlib
CMD ["python", "distance_classification.py"]
