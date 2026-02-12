# PawsConnect Quick Start Script
# This script will help you start your Flutter app quickly

Write-Host "🐾 PawsConnect Quick Start" -ForegroundColor Cyan
Write-Host "=========================" -ForegroundColor Cyan
Write-Host ""

# Navigate to project directory
Set-Location -Path "C:\Users\Nigga\Downloads\Dart"

# Check if Flutter is installed
Write-Host "✓ Checking Flutter installation..." -ForegroundColor Yellow
$flutterCheck = flutter --version 2>&1
if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Flutter is installed!" -ForegroundColor Green
} else {
    Write-Host "✗ Flutter not found. Please install Flutter first." -ForegroundColor Red
    exit 1
}

# Get dependencies
Write-Host ""
Write-Host "✓ Installing dependencies..." -ForegroundColor Yellow
flutter pub get

# Check for devices
Write-Host ""
Write-Host "✓ Checking for available devices..." -ForegroundColor Yellow
$devices = flutter devices 2>&1
Write-Host $devices
Write-Host ""

# Check if any devices are available
if ($devices -match "No devices detected") {
    Write-Host "✗ No devices detected!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Options:" -ForegroundColor Yellow
    Write-Host "1. Start an emulator" -ForegroundColor White
    Write-Host "2. Connect a physical device" -ForegroundColor White
    Write-Host ""
    
    # List available emulators
    Write-Host "Available emulators:" -ForegroundColor Yellow
    flutter emulators
    Write-Host ""
    
    $choice = Read-Host "Would you like to start an emulator? (y/n)"
    if ($choice -eq "y" -or $choice -eq "Y") {
        $emulatorId = Read-Host "Enter emulator ID (or press Enter to skip)"
        if ($emulatorId) {
            Write-Host "Starting emulator..." -ForegroundColor Yellow
            Start-Process -FilePath "flutter" -ArgumentList "emulators", "--launch", $emulatorId -NoNewWindow
            Write-Host "Waiting for emulator to boot (60 seconds)..." -ForegroundColor Yellow
            Start-Sleep -Seconds 60
        }
    }
} else {
    Write-Host "✓ Devices found!" -ForegroundColor Green
}

# Run the app
Write-Host ""
Write-Host "🚀 Starting PawsConnect app..." -ForegroundColor Cyan
Write-Host ""
Write-Host "Tip: Press 'r' for hot reload, 'R' for hot restart, 'q' to quit" -ForegroundColor Yellow
Write-Host ""

flutter run
