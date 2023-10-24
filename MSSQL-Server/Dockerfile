FROM mcr.microsoft.com/mssql/server

USER root

RUN apt-get update && apt-get install -y unixodbc-dev

ENV ACCEPT_EULA=Y \
    SA_PASSWORD=Un!q@to2023 \
    MSSQL_PID=Express \
    CU=CURRENT

CMD ["/opt/mssql/bin/sqlservr"]
