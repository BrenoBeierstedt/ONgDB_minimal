FROM graphstack/ongdb:3.6.2

ENV NEO4J_AUTH=neo4j/letmein

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

ENV APOC_VERSION 3.6.0.0
ENV APOC_URI https://cdn.graphfoundation.org/apoc/dist/org/neo4j/procedure/apoc/${APOC_VERSION}/apoc-${APOC_VERSION}-all.jar


RUN wget -P /plugins ${APOC_URI}

ENV GRAPHQL_VERSION 3.5.0.1
ENV GRAPHQL_URI https://github.com/neo4j-graphql/neo4j-graphql/releases/download/${GRAPHQL_VERSION}/neo4j-graphql-${GRAPHQL_VERSION}.jar
RUN wget -P /plugins ${GRAPHQL_URI}

EXPOSE 7474 7473 7687

CMD ["neo4j"]
