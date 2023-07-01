#!bin/bash

# Membuat docker image bernama order dengan tag v1
docker build -t stevensama73/order:latest .

# Menampilkan daftar docker images di local
docker images

# Melakukan duplikat terhadap docker image ke nama dan tag yang baru
docker tag stevensama73/order:latest ghcr.io/stevensama73/order:latest

# Membuat environment variable dengan nama CR_PAT
export CR_PAT='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'

# Melakukan login ke github packages dengan username dan password dari environment variable dan juga option terakhir ag>echo $CR_PAT | docker login ghcr.io -u stevensama73 --password-stdin
echo $CR_PAT | docker login ghcr.io -u stevensama73 --password-stdin

# Melakukan push docker images ke github packages
docker push ghcr.io/stevensama73/order:latest