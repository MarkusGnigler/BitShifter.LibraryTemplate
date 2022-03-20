cd ../..

$Version = "1.0.0"

echo "Pack version: $Version"

dotnet pack ./nuget.csproj `
   --configuration Release `
   --output "./artifacts" `
   /p:Version=$Version

rm -R bin, obj

cd .template.config

pause