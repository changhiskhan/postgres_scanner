FROM ankane/pgvector:v0.2.6

RUN apt-get update \
	&& apt-get install -y --no-install-recommends postgresql-14-hll \
	&& apt-get autoremove -y \
	&& apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY postgresql.conf /var/lib/postgres/data/