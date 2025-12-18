# Portfolio Deployment Script

Write-Host "`nStarting deployment...`n" -ForegroundColor Green

# Git commands
Write-Host "Adding changes..." -ForegroundColor Cyan
git add .

Write-Host "Committing changes..." -ForegroundColor Cyan
git commit -m "Update portfolio"

Write-Host "Pushing to remote..." -ForegroundColor Cyan
git push

Write-Host "`nDeployment complete!" -ForegroundColor Green
Write-Host "Your site will be live at: https://mike-yakovlev-portfolio.vercel.app/`n" -ForegroundColor Cyan
