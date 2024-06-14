FROM alpine:3.20
COPY install_postgres.sh .
RUN sh -x ./install_postgres.sh
ENTRYPOINT su-exec postgres pg_ctl start -D /var/lib/postgresql/data && su-exec postgres psql
#CMD

#ENTRYPOINT su-exec postgres initdb -D /var/lib/postgresql/data

# WORKDIR /app
# COPY
# ADD . /... ??
# RUN ...
# EXPOSE portnumber




#ADD . /app/
#RUN npm install
#
#EXPOSE 2368
#VOLUME /app/logs
#
#CMD npm run start
