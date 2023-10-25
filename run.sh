TAG=gitversion

docker rm $TAG
docker image rm $TAG
docker build -t $TAG .
docker run --rm --name $TAG -it --entrypoint /tools/dotnet-gitversion $TAG