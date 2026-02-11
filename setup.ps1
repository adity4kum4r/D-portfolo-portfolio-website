# setup-portfolio.ps1
Write-Host "🚀 Starting portfolio setup..." -ForegroundColor Green

# Check Node.js
if (!(Get-Command node -ErrorAction SilentlyContinue)) {
    Write-Host "❌ Node.js not found!" -ForegroundColor Red
    exit 1
}

# Create project
npx create-next-app@latest portfolio-website --typescript --tailwind --app --no-eslint --yes
cd portfolio-website

# Install deps
npm install framer-motion lucide-react @types/node class-variance-authority clsx tailwind-merge
npm install -D tailwindcss-animate

# Create folders
mkdir -Force components,lib,public/images | Out-Null

Write-Host "✓ Project created! Now creating files..." -ForegroundColor Green
