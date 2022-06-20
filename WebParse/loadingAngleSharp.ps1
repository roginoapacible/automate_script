If ( -Not ([System.Management.Automation.PSTypeName]'AngleSharp.Parser.Html.HtmlParser').Type ) {
    $standardAssemblyFullPath = (Get-ChildItem -Filter '*.dll' -Recurse (Split-Path (Get-Package -Name 'AngleSharp').Source)).FullName | Where-Object { $_ -Like "*standard*" } | Select-Object -Last 1

    Add-Type -Path $standardAssemblyFullPath -ErrorAction 'SilentlyContinue'
} # Terminate If - Not Loaded
