FROM ubuntu:18.04
WORKDIR /var/jenkins_home/workspace/hmje-deploy/python-server/news_word

# 모든 파일.
COPY * ./

# timezone
ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# python, jdk
RUN apt-get update
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:webupd8team/java
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update
RUN apt-get install python3.10 -y
RUN apt-get install g++ openjdk-8-jdk curl -y
RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10
RUN python3.10 -m pip install --upgrade pip --user
RUN python3.10 -m pip install konlpy
RUN python3.10 -m pip install -r requirements.txt

# Add the script to the Docker Image
ADD news_word.sh /root/news_word.sh
ADD 2016-10-20.txt /root/2016-10-20.txt

# Give execution rights on the cron scripts
RUN chmod 0644 /root/news_word.sh
RUN chmod 0644 /root/2016-10-20.txt

# cron
RUN apt-get update
RUN apt-get -y install cron

# Add the cron job
RUN crontab -l | { cat; echo "0 12 * * * bash /root/news_word.sh"; } | crontab -
RUN crontab -l | { cat; echo "0 0 * * * bash /root/news_word.sh"; } | crontab -

CMD ["cron", "-f"]