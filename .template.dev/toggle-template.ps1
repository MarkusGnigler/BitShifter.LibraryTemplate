
$isTemplateInstalled = dotnet new --list | grep 'Library/TDD/Testing/XUnit/UnitTest' -ne ''

cd ..

if ($isTemplateInstalled)
{
   Write-Host "Uninstall template"
   dotnet new --uninstall .
}
else
{
   Write-Host "Install template"
   dotnet new --install .
}

cd .template.config

pause