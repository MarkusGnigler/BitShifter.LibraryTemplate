cd ..

docker build -t pack --buil-arg Version=1.0.0

docker run pack --api-key $ApiKey --source https://api.nuget.org/v3/index.json

exit 0