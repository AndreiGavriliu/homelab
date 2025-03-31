#!/bin/bash
set -e

export LB=10.0.0.30

export MASTER_01=10.0.0.31
export MASTER_02=10.0.0.32
export MASTER_03=10.0.0.33
export WORKER_01=10.0.0.34

export USER=gavu

# The first server starts the cluster
k3sup install \
  --cluster \
  --user $USER \
  --ip $MASTER_01 \
  --ssh-key /Users/gavu/Personal/Andrei\ Gavriliu/certificates/id_rsa_nopass \
  --k3s-extra-args '--disable traefik --disable servicelb --disable local-storage' \
  # --k3s-version v1.29.6+k3s2

# The second node joins
k3sup join \
  --server \
  --ip $MASTER_02 \
  --user $USER \
  --server-user $USER \
  --server-ip $MASTER_01 \
  --ssh-key /Users/gavu/Personal/Andrei\ Gavriliu/certificates/id_rsa_nopass \
  --k3s-extra-args '--disable traefik --disable servicelb --disable local-storage' \
  # --k3s-version v1.29.6+k3s2

# The third node joins
k3sup join \
  --server \
  --ip $MASTER_03 \
  --user $USER \
  --server-user $USER \
  --server-ip $MASTER_01 \
  --ssh-key /Users/gavu/Personal/Andrei\ Gavriliu/certificates/id_rsa_nopass \
  --k3s-extra-args '--disable traefik --disable servicelb --disable local-storage' \
  # --k3s-version v1.29.6+k3s2

k3sup join \
  --ip $WORKER_01 \
  --user $USER \
  --server-user $USER \
  --server-ip $MASTER_01 \
  --ssh-key /Users/gavu/Personal/Andrei\ Gavriliu/certificates/id_rsa_nopass \
  # --k3s-version v1.29.6+k3s2
