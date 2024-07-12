# List of words (comma-separated with spaces), reversed
$words = "Paper" "Item One", "Better Item", "Even Better", "You Get It"

# Initial delay before starting
Start-Sleep -Seconds 4

# Loop through each word in the reversed list
foreach ($word in $words) {
    # Mimic typing the word and pressing Enter
    Write-Host "Typing: $word"
    Add-Type -AssemblyName System.Windows.Forms
    foreach ($char in $word.ToCharArray()) {
        [System.Windows.Forms.SendKeys]::SendWait($char)
        Start-Sleep -Milliseconds (50 + (Get-Random -Minimum 1 -Maximum 50))  # Random delay between characters (adjust as needed)
    }
    [System.Windows.Forms.SendKeys]::SendWait("{ENTER}")

    # Wait for 5 seconds
    Start-Sleep -Seconds 5

    # Press Enter again
    [System.Windows.Forms.SendKeys]::SendWait("{ENTER}")

    # Wait for another 5 seconds
    Start-Sleep -Seconds 5
}
