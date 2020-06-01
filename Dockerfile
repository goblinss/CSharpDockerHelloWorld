FROM mcr.microsoft.com/dotnet/core/sdk AS build
COPY . ./app
WORKDIR /app/
RUN dotnet build -c Release -o output

FROM mcr.microsoft.com/dotnet/core/aspnet AS runtime
COPY --from=build /app/output .
ENTRYPOINT ["dotnet", "CSharpDockerHelloWorld.dll"]
EXPOSE 8080