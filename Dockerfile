FROM python:latest

WORKDIR /app

COPY requirements.txt .      # ⬅️ सबसे ज़रूरी स्टेप
RUN apt-get update -y && apt-get upgrade -y
RUN pip3 install -U pip setuptools
RUN pip3 install -U -r requirements.txt

COPY . .                     # ⬅️ FallenRobot का कोड भी कॉपी करो

CMD ["python3", "-m", "FallenRobot"]
