
$hzB64   = [IO.File]::ReadAllText("C:\Users\20251\WorkBuddy\20260503145611\hz_b64.txt").Trim()
$bjB64   = [IO.File]::ReadAllText("C:\Users\20251\WorkBuddy\20260503145611\bj_b64.txt").Trim()
$heroB64 = [IO.File]::ReadAllText("C:\Users\20251\WorkBuddy\20260503145611\photo_b64.txt").Trim()

$template = [IO.File]::ReadAllText("C:\Users\20251\WorkBuddy\20260503145611\birthday_template.html")
$out = $template.Replace("__HERO_B64__", $heroB64).Replace("__HZ_B64__", $hzB64).Replace("__BJ_B64__", $bjB64)
[IO.File]::WriteAllText("C:\Users\20251\WorkBuddy\20260503145611\birthday_final.html", $out, (New-Object System.Text.UTF8Encoding $false))
Write-Host "Done. Size: $($out.Length)"
