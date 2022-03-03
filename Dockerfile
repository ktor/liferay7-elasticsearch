FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.1

RUN bin/elasticsearch-plugin install --batch analysis-icu && \
    bin/elasticsearch-plugin install --batch analysis-stempel && \
    bin/elasticsearch-plugin install --batch analysis-smartcn && \
    bin/elasticsearch-plugin install --batch analysis-kuromoji
