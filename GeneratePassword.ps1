# Controls length of password
$Length = 48

# Intializes password varible
$Password = ""

# Character sets for password
$Numbers = 1,2,3,4,5,6,7,8,9,0
$SymbolsArray = @('~', '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '<', '>', '?', '/', '.', ',')
$LowerCase = 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
$UpperCase = 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'

for ($i = 1; $i -le $Length; $i++)
{
    $Selector = 1..4 | Get-Random
    
    #Write-Host "Loop: $i Selector: $Selector"
    
    if ($Selector -eq 1)
    {
        $Password = $Password + (get-random $Numbers).ToString()
    }
    if ($Selector -eq 2)
    {
        $Password = $Password + (get-random $SymbolsArray).ToString()
    }
    if ($Selector -eq 3)
    {
        $Password = $Password + (get-random $LowerCase).ToString()
    }
    if ($Selector -eq 4)
    {
        $Password = $Password + (get-random $LowerCase).ToString()
    }
}

# Writes new password to screen, can be commented out to hide password
Write-Host "New password for is: $Password"

# Clears password variable
$Password = ""