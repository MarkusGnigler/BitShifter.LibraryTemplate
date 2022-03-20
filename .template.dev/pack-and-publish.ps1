cd ..

docker build --tag publish --build-arg Version=1.0.0 .

docker run --rm publish --api-key ${ApiKey} --source "https://api.nuget.org/v3/index.json"

exit 0