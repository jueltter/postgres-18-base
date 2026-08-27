FROM postgres:18

RUN apt-get update  \
    && apt-get install -y postgresql-18-pgaudit tzdata locales  \
    && localedef -i es_EC -c -f UTF-8 -A /usr/share/locale/locale.alias es_EC.UTF-8  \
    && rm -rf /var/lib/apt/lists/*

# Set the System Timezone to Ecuador
ENV TZ=America/Guayaquil
# Set the Postgres Timezone
ENV PGTZ=America/Guayaquil

ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_MESSAGES=en_US.UTF-8
ENV LC_COLLATE=es_EC.UTF-8
ENV LC_CTYPE=es_EC.UTF-8
ENV LC_TIME=es_EC.UTF-8
ENV LC_NUMERIC=es_EC.UTF-8

COPY conf/postgres.conf /etc/postgresql/postgresql.conf