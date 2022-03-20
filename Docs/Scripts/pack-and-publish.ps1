cd ../.. # cd to docker context

$LibraryVersion = 1.0.0
$NugetApiKey = ""

docker build --tag publish --build-arg Version=$LibraryVersion --file Dockerfile.Pack .

docker run --rm --publish 443:443 publish --api-key $NugetApiKey --source "https://api.nuget.org/v3/index.json"

exit 0