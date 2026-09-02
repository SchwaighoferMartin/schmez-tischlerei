# Website-Update: kopiert index.html + bilder aus dem Nextcloud-Ordner und
# veroeffentlicht sie auf https://schwaighofermartin.github.io/schmez-tischlerei/
$quelle = "C:\Users\Martin\Nextcloud\01 Schmez Tischlerei GmbH\Praktikant\KI Webinar"
$repo   = "C:\Users\Martin\schmez-website"

Copy-Item "$quelle\index.html" "$repo\index.html" -Force
Copy-Item "$quelle\bilder\*"   "$repo\bilder\"    -Recurse -Force -Exclude "_original"

Set-Location $repo
git add -A
git commit -m ("Website-Update " + (Get-Date -Format "yyyy-MM-dd HH:mm"))
git push
Write-Host "Fertig. In 1-2 Minuten live: https://schwaighofermartin.github.io/schmez-tischlerei/"
