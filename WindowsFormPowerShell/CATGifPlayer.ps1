#Just something I explore and having fun creating it
#Is something basic to do durring my Sunday, happy weekend

#Create a form
Add-Type -AssemblyName System.Windows.Forms
$Form = New-Object System.Windows.Forms.Form
$Form.AutoSize = $true
$Form.StartPosition = "CenterScreen"
Write-Host "Running GIF Player ..."

#Adding some text
$Form.Text = "GIF Player"
$Label = New-Object System.Windows.Forms.Label
$Label.Location = New-Object System.Drawing.Size(0,0)
$Label.AutoSize = $true
$Label.Font = New-Object System.Drawing.Font ("Comic Sans MS",20, [System.Drawing.Fontstyle]::Bold)
$Label.Text = "Hello Sunday ~"
$Form.Controls.Add($Label)

#Adding GIF
$gifbox = New-Object Windows.Forms.picturebox
$giflink= (Get-Item -Path 'C:\Users\Sabrina Kay\Pictures\cathello.gif') #you may need to change this part, the path
$img = [System.Drawing.Image]::fromfile($giflink)
$gifbox.AutoSize = $true
$gifbox.Image = $img
$Form.Controls.Add($gifbox)

#Execute the form
$Form.ShowDialog()
