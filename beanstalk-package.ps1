dotnet publish -c Release
Compress-Archive -Path ./bin\Release\netcoreapp3.1\publish\* -DestinationPath csharphelloworld.zip -Force
Compress-Archive -Path csharphelloworld.zip, aws-windows-deployment-manifest.json -DestinationPath beanstalk-app-bundle.zip -Force