FROM maven:3-jdk-8
ENV ORIGIN="/data-mvn/"
ENV MWORK="/workspace-mvn"


RUN mkdir -p $MWORK

WORKDIR /workspace-mvn

COPY ./run_cpy.sh /entrypunto.sh

ENTRYPOINT ["/entrypunto.sh"]
CMD ["bash"]
# COPY ./data /data-mvn/org

