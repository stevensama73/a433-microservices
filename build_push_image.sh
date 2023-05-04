#!bin/bash

# Membuat docker image bernama item-app dengan tag v1
docker build -t item-app:v1 .

# Menampilkan daftar docker images di local
docker images

# Melakukan duplikat terhadap docker image ke nama dan tag yang baru
docker tag item-app:v1 ghcr.io/stevensama73/item-app:v1

# Membuat environment variable dengan nama CR_PAT
export CR_PAT='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'

# Melakukan login ke github packages dengan username dan password dari environment variable dan juga option terakhir ag>echo $CR_PAT | docker login ghcr.io -u stevensama73 --password-stdin
echo $CR_PAT | docker login ghcr.io -u stevensama73 --password-stdin

# Melakukan push docker images ke github packages
docker push ghcr.io/stevensama73/item-app:v1
