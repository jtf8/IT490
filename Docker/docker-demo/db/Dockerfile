FROM postgres
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=changeme
ENV POSTGRES_DB=covidtesting
COPY setup.sql /docker-entrypoint-initdb.d/
