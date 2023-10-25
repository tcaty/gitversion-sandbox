TAG=gitversion

docker rm $TAG
docker image rm $TAG
docker build -t $TAG .
docker run --rm --name $TAG -it --entrypoint /bin/bash $TAG