FROM ubuntu
ENV ORA_CLOUD_CLUSTER="ASHBURN"
ARG LICENSE_KEY="123-00010223"
LABEL MAINTAINER dj@devops.com
COPY Sample.sh /code/Sample.sh
COPY testfile /code/testfile
RUN chmod +x /code/Sample.sh
RUN echo "LICENSE KEY IS "$LICENSE_KEY
WORKDIR /code
#ENTRYPOINT ["sh","Sample.sh"]
CMD sh Sample.sh testfile
