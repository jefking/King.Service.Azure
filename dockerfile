FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env
WORKDIR /app

# Copy and build
COPY ./King.Service.AzStorage ./King.Service.AzStorage
COPY ./King.Service.Tests ./King.Service.AzStorage.Tests
COPY ./King.Service.Demo ./Demo

# Unit Test Project
RUN dotnet test King.Service.AzStorage.Tests/King.Service.AzStorage.Tests.csproj

# Public Project
RUN dotnet publish Demo/King.Service.AzStorage.Demo.csproj -c release

# Create Output Container Image
FROM mcr.microsoft.com/dotnet/runtime:6.0
WORKDIR /app

# Copy Demo
COPY --from=build-env /app/Demo/bin/release/net6.0/publish/. .

# Temp Entry
ENTRYPOINT [ "dotnet",  "King.Service.Demo.dll"]