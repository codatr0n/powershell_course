# 1) Vis en liste over igangv�rende processer
Get-Service

# 2) Vis de 100 nyeste begivenheder fra applikationsloggen
Get-EventLog -LogName Application -Newest 100

# 3) Vis en liste over alle kommandoer af typen cmdlet – NB! Læs hjælpen til Get-Command
Get-Command -CommandType Cmdlet

# 4) Vis en liste over alle aliaser
Get-Alias

# 5) Lav et nyt alias, s� man kan starte Notepad fra PowerShell med kommandoen ”np”
New-Alias np notepad.exe

# 6) Vi en liste over Windows services, hvis navn begynder med bogstavet M NB! Brug Powershells hjælp, og husk, at ”*” fungerer som wildcard mange steder i Windows og PowerShell
Get-Service M*

# 7) Vis en liste over alle regler i Windows Firewall
Get-NetFirewallRule

# 8) Vis en liste over alle indgående regler i Windows Firewall
Get-NetFirewallRule -Direction Inbound

# Ekstra opgaver hvis man keder sig:
# 1. Findes der en cmdlet, der kan konvertere output fra andre cmdlets til HTML?
ConvertTo-Html

# 2. Findes der cmdlets, der kan dirigere output fra andre cmdlets til en fil eller en printer?
Out-File
Out-Printer

# 3. Hvor mange cmdlets findes der til håndtering af processer? (Husk, navngivningskonventionen for cmdlets bruger engelske navneord i ental).
Get-Command -noun process

# 4. Hvilken cmdlet kunne man bruge til at skrive til en eventlog?
Get-Command -noun EventLog
Write-EventLog 

# 5. Hvilke cmdlets findes der til at arbejde med aliaser? (Husk ental igen).
get-command -Noun alias

# 6. Kig på hjælpeteksten til Out-File-cmdlet’en. Hvordan ændrer man kolonnebredde på output?
Out-File -Width 120

# 7. Hvad er den korteste måde, man kan skrive en kommando, der viser en liste over kørende processer på en computer kaldet SERVER1? (Brug alias’er og forkort parameternavne).
gps -c SERVER1

# 8. Hvilket emne i hjælp kan fortælle mere om, hvordan man arbejder med arrays i PowerShell?
help about_arrays

# 9. Hvordan simulerer man en �ldre version af powershell?
powershell.exe -version 3.0