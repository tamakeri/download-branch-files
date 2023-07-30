#this is a powershell script to  make links  all your branch files or directly download from your browser
$flag = $true

$characterSet = 97..122 -as [char[]] # a -z not incledus A-Z
Foreach ($char_one in $characterSet)
{
    Foreach ($char_two in $characterSet)
        { 

       " https://github.com/tamakeri/project_name/raw/branch_name/$char_one$char_two "  >> #your_txt_file_ goes_here_with_no_quotes

        #the command above here  look for aa and az files if your files are in xaa - xzz you should add x before char_one  without space

        # or u can use your browser to download the files( warning if there is too many  connection will fail try to wait  with command 

        #.\msedge.exe.lnk https://github.com/tamakeri/project_name/raw/branch_name/$char_one$char_two 
        # Timeout 10
        
        
        #the characters u want to stop
        if ( "d"-eq $char_one  )
        {
            if ( "n"-eq $char_two  ){$flag = $false ; break}
        } 
        }
    if ( $flag -eq $false  )
    {
    Write-Host " we are done"
    break
    }
}
