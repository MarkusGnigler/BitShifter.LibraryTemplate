cd ..

$Version = "1.0.0"

echo "Pack version: $Version"

dotnet pack ./nuget.csproj `
   --configuration Release `
   --output artifacts `
   /p:Version=$Version

rm -R bin, obj

$CI_PROJECT_ID=50
$CI_SERVER_URL='https://git.bit-shifter.at'
$NUGET_APIKEY='1qnii95U-p5LuEok5839'
#####
$CI_REGISTRY_USER='PixelDance'
# $CI_JOB_TOKEN=$NUGET_APIKEY
$CI_JOB_TOKEN='o1SGi1gS92$'
$CI_REGISTRY_URL="$CI_SERVER_URL/api/v4/projects/$CI_PROJECT_ID/packages/nuget/index.json"

# dotnet nuget add source $CI_REGISTRY_URL `
#    --name gitlab `
#    --username $CI_REGISTRY_USER `
#    --password $CI_JOB_TOKEN `
#    --store-password-in-clear-text

dotnet nuget push artifacts/*.nupkg `
   --skip-duplicate `
   --api-key $NUGET_APIKEY `
   --source "$CI_SERVER_URL/api/v4/projects/$CI_PROJECT_ID/packages/nuget/index.json"
   # --source gitlab

cd .template.config

pause