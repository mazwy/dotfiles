# Prompt
Import-Module posh-git
Import-Module -Name Terminal-Icons
Import-Module PSReadLine
Import-Module PSFzf

# Load prompt config
function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName }
$PROMPT_CONFIG = Join-Path (Get-ScriptDirectory) 'mazwy.omp.json'
oh-my-posh --init --shell pwsh --config $PROMPT_CONFIG | Invoke-Expression

# PSReadLine
$PSReadLineOptions = @{
	PredictionSource = 'History'
	PredictionViewStyle = 'ListView'
	EditMode = 0
	HistoryNoDuplicates = $true
	HistorySearchCursorMovesToEnd = $true
    	Colors = @{
		# Use a ConsoleColor enum
 		"Error" = [ConsoleColor]::DarkRed
    }
}
Set-PSReadLineOption @PSReadLineOptions
function OnViModeChange {
    if ($args[0] -eq 'Command') {
        # Set the cursor to a blinking block.
        Write-Host -NoNewLine "`e[1 q"
    } else {
        # Set the cursor to a blinking line.
        Write-Host -NoNewLine "`e[5 q"
    }
}
Set-PSReadLineOption -ViModeIndicator Script -ViModeChangeHandler $Function:OnViModeChange

# Fzf
Set-PsFzfOption -PSReadLineChordProvider 'Ctrl+f' -PSReadLineChordReverseHistory 'Ctrl+r'

# Aliases
Set-Alias -Name vim -Value nvim
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Commands
function which ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue | 
		Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue	
}
