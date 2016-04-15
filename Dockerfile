FROM centos:centos6
RUN yum install -y epel-release
RUN yum install -y nodejs npm
ADD ./package.json ./package.json
ADD ./index.js ./index.js
RUN npm install
ENTRYPOINT ["node", "index.js"]
CMD ["echo", "add a parameter"]
