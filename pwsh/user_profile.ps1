# Alias
Set-Alias ll ls
Set-Alias grep findstr
Set-Alias g git
Set-Alias touch New-Item
Set-Alias which where.exe
function vsc { Set-Location "D:\Bon\VSCode" && code . }
function ln ($target, $link) {
    New-Item -ItemType SymbolicLink -Path $link -Value $target
}
function sudo { Start-Process pwsh -Verb Runas}
