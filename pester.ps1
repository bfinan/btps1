Describe 'Notepad' {
    It 'Exists in Windows fodler' {
        'C:\Windows\neotepad.exe' | Should -Exist
    }
}
