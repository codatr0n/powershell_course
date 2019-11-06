# 1) Lav to tekstfiler med lignende, men forskelligt, indhold (fx en linje, der er anderledes). Brug Diff til at sammenligne dem.
diff -ReferenceObject (Get-Content text1.txt) -DifferenceObject (Get-Content text2.txt)
# output:
# InputObject SideIndicator
# ----------- -------------
# purple      =>           
# blue        <= 

# 2) Export-CSV laver ændringer i systemet. Hvilken parameter kan man bruge, hvis man vil være sikker på ikke at overskrive en eksisterende fil?
Export-Csv -NoClobber

# 3) Hav forbindelse til internettet. Kør “Networking troubleshooting pack” i PowerShell og tjek
# forbindelsen til “https://www.cphbusiness.dk/om-cphbusiness”. For at gøre det skal man først
# finde en kommando der kan bruge en troubleshooting pack og finde ud af, hvad den rigtige
# pakke hedder. Det hele kan findes i PowerShells hjælp.


# 4) Find en cmdlet, der viser dato og tid.
Get-Date

# 5) Hvilken type objekt er output fra svaret på foregående opgave?
(Get-Date).GetType().Fullname
# output: System.DateTime

# 6) Brug Select-Object sammen med den fundne cmdlet til kun at vise dagens navn
Get-Date | Select-Object -ExpandProperty DayOfWeek

# 7) Hvad er forskellen på output fra
#   a. Get-Date | Select-Object -Property DayOfWeek
#   b. Get-Date | Select-Object -Expand DayOfWeek
(Get-Date | Select-Object -Property DayOfWeek).GetType().FullName
# a: typen er System.Management.Automation.PSCustomObject
(Get-Date | Select-Object -Expand DayOfWeek).GetType().FullName
# b: typen er System.DayOfWeek

#Ekstra opgaver:
# 1. Hvordan kan man fortælle Stop-Service, hvilke(n) service(s), man vil stoppe, ud over ved at
# bruge Get-Service.

# 2. Hvordan ændrer man separator-tegnet i Export-CSV?
Get-Service | Export-Csv -path "services.csv" -Delimiter ";"

# 3. Hvordan fjerner man den første linje med kolonneinformation fra output fra Export-CSV?

# 4. Find en cmdlet, der frembringer et ”tilfældigt” tal.
Get-Random -Minimum 1 -Maximum 10

# 5. Find in cmdlet, der viser installerede hotfixes.
Get-Hotfix

# 6. Vis en liste over installerede hotfixes sorteret efter installationsdato, men vis kun
# installationsdato, brugernavn og hotfix ID. Gem resultatet som HTML.
Get-HotFix | Sort-Object -Property InstalledOn -Descending | Select-Object InstalledOn, InstalledBy, HotfixID 
Get-HotFix | Sort-Object -Property InstalledOn -Descending | Select-Object InstalledOn, InstalledBy, HotfixID | ConvertTo-Html | Out-File 'hotfixes.html'