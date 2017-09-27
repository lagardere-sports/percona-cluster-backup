FROM percona:5.6

RUN \
  apt-get update -y -q && \
  apt-get install netcat curl python percona-xtradb-cluster-garbd-5.7 -y

# Setup gsutil
RUN cd /usr/local/bin; curl https://storage.googleapis.com/pub/gsutil.tar.gz | tar xfz -

# Setup kubectl
RUN cd /usr/local/bin && \
    curl https://storage.googleapis.com/kubernetes-release/release/v1.7.5/bin/linux/amd64/kubectl -O && \
    chmod +x /usr/local/bin/kubectl

COPY backup.sh /usr/local/bin/
COPY customize_backup.sh /backup/backup.sh

COPY restore.sh /usr/local/bin/
COPY customize_restore.sh /backup/restore.sh
