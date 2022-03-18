cd ../..

dotnet pack ./nuget.csproj --output "./dist"

rm -R bin, obj

cd .template.config

pause