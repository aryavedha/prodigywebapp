FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ["prodigywebapp/prodigywebapp.csproj", "prodigywebapp/"]
RUN dotnet restore "prodigywebapp/prodigywebapp.csproj"
COPY . .
WORKDIR "/src/prodigywebapp"
RUN dotnet build "prodigywebapp.csproj" -c Release -o /app/build
RUN dotnet publish "prodigywebapp.csproj" -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "prodigywebapp.dll"]
