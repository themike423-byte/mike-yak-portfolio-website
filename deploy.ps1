# Portfolio Deployment Script

Write-Host "`n============================================" -ForegroundColor Cyan
Write-Host "  CRITICAL FIXES DEPLOYMENT" -ForegroundColor Cyan
Write-Host "============================================`n" -ForegroundColor Cyan

if (-not (Test-Path "index.html")) {
    Write-Host "Error: index.html not found." -ForegroundColor Red
    exit 1
}

Write-Host "FIXES APPLIED:" -ForegroundColor Yellow
Write-Host "  - Hero section cleaned up" -ForegroundColor White
Write-Host "  - Personal section: 'one kid' (accurate)" -ForegroundColor White
Write-Host "  - Partner categories in correct location" -ForegroundColor White
Write-Host "  - 12 partners in each new category" -ForegroundColor White
Write-Host ""

Write-Host "Starting deployment...`n" -ForegroundColor Green

git add .
git commit -m "Critical fixes: hero cleanup, family info, partner categories"
git push

Write-Host "`nDeployment complete!" -ForegroundColor Green
Write-Host "Site: https://mike-yakovlev-portfolio.vercel.app/`n" -ForegroundColor Cyan
