
# $isTemplateInstalled = dotnet new --list | grep 'base-test' -eq null;
$isTemplateInstalled = dotnet new --list | grep 'base-test';

Write-Host "isTemplateInstalled: $isTemplateInstalled"

# cd ..

# if ($isTemplateInstalled)
# {
#     dotnet new --uninstall .
# }
# else
# {
#     dotnet new --install .
# }

pause