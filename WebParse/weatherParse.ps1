clear-host
write-host "Enter a city in ontario (example: toronto, hamilton, brampton, oakville)"
$location = Read-Host
"`n"
$Request = Invoke-WebRequest -Uri "https://www.timeanddate.com/weather/canada/$location/ext"
$Parser = New-Object AngleSharp.Html.Parser.HtmlParser
$Parsed1 = $Parser.ParseDocument($Request.Content)
$Parsed2 = $Parser.ParseDocument($Request.Content)
$daysGet = $Parsed1.All | Where-Object TagName -eq "tbody"
$daysList = $daysGet.ChildNodes | Select-Object -Property textcontent
$titleGet = $Parsed2.All | Where-Object TagName -EQ "h2"
$Title = $titleGet | Select-Object -Property innerhtml
$array = @($daysList)
$Title[0].InnerHtml
$Title[1].InnerHtml
"`n"
$array.textcontent