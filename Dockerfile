# pull base image

# https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc
# https://github.com/fcwu/docker-ubuntu-vnc-desktop/blob/develop/Dockerfile.amd64
FROM dorowu/ubuntu-desktop-lxde-vnc

# set working directory
WORKDIR /usr/src/app

# add to $PATH
#ENV PATH /usr/src/bpp-api/node_modules/.bin:$PATH

# install apps 
RUN apt update -y \
 && apt install -y ibus-mozc \
 #&& ibus restart \
 && gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'jp'), ('ibus', 'mozc-jp')]" \
 && curl -fsSL get.docker.com | bash \
 && curl -sL https://ibm.biz/idt-installer | bash \
 && apt install -y nodejs npm \
 && npm install -g n \
 && n stable \
 && apt purge -y nodejs npm 
# && wget https://go.microsoft.com/fwlink/?LinkID=760868 -o vscode.deb \
# && apt install ./vscode.deb

#EXPOSE 80
#ENTRYPOINT ["/startup.sh"]
