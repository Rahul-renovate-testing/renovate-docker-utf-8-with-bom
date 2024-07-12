FROM mcr.microsoft.com/dotnet/aspnet:8.0@sha256:6c4df091e4e531bb93bdbfe7e7f0998e7ced344f54426b7e874116a3dc3233ff AS base
WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS publish
WORKDIR /app

FROM base as final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "--help"]
