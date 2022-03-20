# 
# docker build --tag pack --build-arg Version=1.0.0
# docker run pack --api-key $ApiKey --source https://api.nuget.org/v3/index.json
# 
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build

WORKDIR /sln

COPY . .

ENV DOTNET_CLI_TELEMETRY_OPTOUT=1

ARG Version

RUN dotnet pack nuget.csproj \
   --configuration Release \
   --output artifacts \
   /p:IncludeSymbols=true /p:SymbolPackageFormat=snupkg \
   /p:Version=$Version

# ARG ApiKey
# RUN dotnet nuget SetApiKey ApiKey

ENTRYPOINT [ "dotnet", "nuget", "push", "artifacts/*.nupkg", "--skip-duplicate" ]
CMD [ "--source", "https://api.nuget.org/v3/index.json" ]