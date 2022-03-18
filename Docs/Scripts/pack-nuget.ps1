cd ../..

dotnet pack ./nuget.csproj `
   --configuration Release `
   --output "./dist"

rm -R bin, obj

cd .template.config

pause