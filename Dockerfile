# Using Python Slim-Buster
FROM xluxz/geezproject:buster
# emon-ubot
# melon

RUN git clone -b emon-ubot https://github.com/masjarwo123/emon-ubot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/masjarwo123/emon-ubot/emon-ubot/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3", "-m", "userbot"]
