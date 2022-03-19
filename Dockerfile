# 
# docker build -t pack --buil-arg Version=1.0.0
# docker run pack --api-key $ApiKey --source https://api.nuget.org/v3/index.json
# 
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build

ARG Version

WORKDIR /sln

COPY . .

ENV DOTNET_CLI_TELEMETRY_OPTOUT=1

RUN dotnet pack nuget.csproj \
   --configuration Release \
   --output dist \
   /p:Version=$Version

ENTRYPOINT [ "dotnet", "nuget", "push", "/sln/dist/*.nupkg" ]
CMD [ "--source", "https://api.nuget.org/v3/index.json" ]