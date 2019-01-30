FROM node:slim
USER root
RUN apt update && apt install -y git python build-essential && apt clean
RUN npm -g --unsafe-perm install joplin
COPY backup.sh /root/backup.sh
RUN sed -i 's,URL,$URL,' /root/backup.sh                \
 && sed -i 's/Myuser/$USER/' /root/backup.sh            \
 && sed -i 's/mypassword/$PASSWORD/' /root/backup.sh    \
 && sed -i 's,mylocation,$LOCATION,' /root/backup.sh    \
 && chmod +x /root/backup.sh
ENTRYPOINT /root/backup.sh