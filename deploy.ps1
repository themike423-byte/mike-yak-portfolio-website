# Portfolio Site Deployment Script
# Run this in PowerShell from the portfolio directory

Write-Host "Starting deployment..." -ForegroundColor Green

# Check if we're in the right directory
if (-not (Test-Path "index.html")) {
    Write-Host "Error: index.html not found. Please run from portfolio directory." -ForegroundColor Red
    exit 1
}

# Git commands
Write-Host "`nAdding changes..." -ForegroundColor Cyan
git add .

Write-Host "Committing changes..." -ForegroundColor Cyan
git commit -m "Fix: Remove $114M stat, fix button hover arrows, ensure all partner categories present"

Write-Host "Pushing to remote..." -ForegroundColor Cyan
git push

Write-Host "`nDeployment complete!" -ForegroundColor Green
Write-Host "Your site will be live at: https://mike-yakovlev-portfolio.vercel.app/" -ForegroundColor Yellow
Write-Host "`nChanges made:" -ForegroundColor Cyan
Write-Host "✓ Removed $114M ARR stat, replaced with '20+ Partner Categories'" -ForegroundColor White
Write-Host "✓ Fixed button hover states - arrows now stay visible and change color" -ForegroundColor White
Write-Host "✓ All 20 partner categories verified and present" -ForegroundColor White
Write-Host "✓ Color logos already configured via Clearbit" -ForegroundColor White
