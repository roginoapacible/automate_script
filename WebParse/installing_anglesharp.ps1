#The Get-PackageProvider cmdlet returns a list of package providers that are connected to Package Management. Examples of these providers include PSModule, NuGet, and Chocolatey. You can filter the results based on all or part of one or more provider names.
#To get a list of available providers, run Get-PackageProvider -ListAvailable. Note that a package provider name can be different from its module name.
Get-PackageProvider -ListAvailable

#The Get-PackageSource cmdlet gets a list of package sources that are registered with PackageManagement on the local computer. If you specify a package provider, Get-PackageSource gets only those sources that are associated with the specified provider. Otherwise, the command returns all package sources that are registered with PackageManagement.
Get-PackageSource

#The Register-PackageSource cmdlet adds a package source for a specified package provider. Package sources are always managed by a package provider. If the package provider cannot add or replace a package source, the provider generates an error message.
Register-PackageSource -Name MyNuGet -Location https://www.nuget.org/api/v2 -ProviderName NuGet

#Find-Package finds software packages that are available in package sources. Get-PackageProvider and Get-PackageSource display details about your providers.
find-package AngleSharp

Install-Package 'AngleSharp' -Scope 'CurrentUser' -SkipDependencies
