
dotnet new library -o Company.Net5 --framework net5.0
dotnet new library -o Company.Net6 --framework net6.0
dotnet new library -o Company.Test --tests false
dotnet new library -o Company.Github --pipeline github
dotnet new library -o Company.Gitlab --pipeline gitlab
# dotnet new library -o Company.Docker --docker false

exit 0