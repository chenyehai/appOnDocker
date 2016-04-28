FROM ubuntu:latest
MAINTAINER chenyehai<chenyehai737@126.com>

# update list
RUN apt-get update -y
RUN apt-get upgrade -y

# install
RUN apt-get install bash -y
RUN apt-get install python -y
RUN apt-get install git -y
RUN apt-get install sed -y

RUN apt-get install python-pip -y
RUN pip install flask

# copy the update and run app shell
RUN mkdir /myweb
RUN git -C /myweb clone "https://github.com/chenyehai/GraduateDesigned.git"
git -C /myweb/GraduateDesigned checkout develop
RUN pip install -r /myweb/GraduateDesigned/pack_requirements
COPY update_and_run_app.sh /myweb/

CMD ["echo","Welcome to use Docker"]

EXPOSE 80:80
EXPOSE 8080:8080
