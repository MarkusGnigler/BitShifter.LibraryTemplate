# Library solution template with unit tests

This project contains a starting library structure and ist distributed as dotnet template via NuGet.org

Install the template from nuget.org

```
dotnet new --install BitShifter.LibraryTemplate::1.0.1
```

Create a new library with this template.

```
dotnet new library -o Company.Product
```

Available options are:

```
Library structure with Unit Tests and Docker support (C#)
Autor: Markus Gnigler
Optionen:
  -f|--framework  The target framework for the project.
                      net5.0
                      net6.0
                  Standard: net6.0

  -t|--tests      Add a unit test project.
                  bool - Optional
                  Standard: true

  -p|--pipeline   Chose the test and release pipeline type.
                      github
                      gitlab
                  Standard: github
```

### Folder structure

```
BitShifter.LibraryTemplate/
|
|– Docs/
|  |- Scripts/
|
|- Src
|   |- BitShifter.LibraryTemplate
|
|- Tests
|   |- BitShifter.LibraryTemplate.Tests
```
