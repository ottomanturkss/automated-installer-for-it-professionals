Add-Type -AssemblyName System.Windows.Forms

# Create a new form
$form = New-Object System.Windows.Forms.Form
$form.Text = "Onur Altun's Install Toolkit"
$form.Width = 500
$form.Height = 500  # Increased height for better layout
$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedDialog
$form.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen

# Set a modern color scheme
$form.BackColor = [System.Drawing.Color]::FromArgb(240, 240, 240)

# Create MenuStrip for the menu
$menuStrip = New-Object System.Windows.Forms.MenuStrip

# Create "File" menu
$fileMenu = New-Object System.Windows.Forms.ToolStripMenuItem("File")
$menuStrip.Items.Add($fileMenu)

# Create "Settings" menu under File
$settingsMenu = New-Object System.Windows.Forms.ToolStripMenuItem("Settings")
$fileMenu.DropDownItems.Add($settingsMenu)

# Create "Edit Download Links" option in Settings
$editLinksOption = New-Object System.Windows.Forms.ToolStripMenuItem("Edit Download Links")
$settingsMenu.DropDownItems.Add($editLinksOption)

# Create "About" menu under File
$aboutMenu = New-Object System.Windows.Forms.ToolStripMenuItem("About")
$fileMenu.DropDownItems.Add($aboutMenu)

# Add click event for the About menu item
$aboutMenu.Add_Click({
    [System.Windows.Forms.MessageBox]::Show("Powered by Onur Altun`nEmail: petabyte64@gmail.com`nThis software is for IT professionals.", "About", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
})

# Add MenuStrip to form
$form.MainMenuStrip = $menuStrip
$form.Controls.Add($menuStrip)

# Create TextBoxes to edit download links
$chromeLinkBox = New-Object System.Windows.Forms.TextBox
$chromeLinkBox.Text = 'http://dl.google.com/chrome/install/375.126/chrome_installer.exe'
$chromeLinkBox.Width = 300
$chromeLinkBox.Font = New-Object System.Drawing.Font("Segoe UI", 10)

$winRARLinkBox = New-Object System.Windows.Forms.TextBox
$winRARLinkBox.Text = 'https://www.rarlab.com/rar/winrar-x64-701tr.exe'
$winRARLinkBox.Width = 300
$winRARLinkBox.Font = New-Object System.Drawing.Font("Segoe UI", 10)

$adobeReaderLinkBox = New-Object System.Windows.Forms.TextBox
$adobeReaderLinkBox.Text = 'https://atlanticofficetechnologies.com/tools/Adobe/Reader/AcroRdrDC.exe'
$adobeReaderLinkBox.Width = 300
$adobeReaderLinkBox.Font = New-Object System.Drawing.Font("Segoe UI", 10)

$firefoxLinkBox = New-Object System.Windows.Forms.TextBox
$firefoxLinkBox.Text = 'https://archive.mozilla.org/pub/firefox/releases/133.0/win64/tr/Firefox%20Setup%20133.0.exe'
$firefoxLinkBox.Width = 300
$firefoxLinkBox.Font = New-Object System.Drawing.Font("Segoe UI", 10)

# Create Labels for TextBoxes
$chromeLinkLabel = New-Object System.Windows.Forms.Label
$chromeLinkLabel.Text = "Chrome Installer Link:"
$chromeLinkLabel.Width = 300  # Updated width to match TextBox
$chromeLinkLabel.Font = New-Object System.Drawing.Font("Segoe UI", 10)

$winRARLinkLabel = New-Object System.Windows.Forms.Label
$winRARLinkLabel.Text = "WinRAR Installer Link:"
$winRARLinkLabel.Width = 300  # Updated width to match TextBox
$winRARLinkLabel.Font = New-Object System.Drawing.Font("Segoe UI", 10)

$adobeReaderLinkLabel = New-Object System.Windows.Forms.Label
$adobeReaderLinkLabel.Text = "Adobe Reader DC Link:"
$adobeReaderLinkLabel.Width = 300  # Updated width to match TextBox
$adobeReaderLinkLabel.Font = New-Object System.Drawing.Font("Segoe UI", 10)

$firefoxLinkLabel = New-Object System.Windows.Forms.Label
$firefoxLinkLabel.Text = "Firefox Installer Link:"
$firefoxLinkLabel.Width = 300  # Updated width to match TextBox
$firefoxLinkLabel.Font = New-Object System.Drawing.Font("Segoe UI", 10)

# Create Button to save the edited links
$saveLinksButton = New-Object System.Windows.Forms.Button
$saveLinksButton.Text = "Save Links"
$saveLinksButton.Width = 100
$saveLinksButton.Font = New-Object System.Drawing.Font("Segoe UI", 10)

# Add controls for the "Edit Download Links" menu option
$settingsForm = New-Object System.Windows.Forms.Form
$settingsForm.Text = "Edit Download Links"
$settingsForm.Width = 400
$settingsForm.Height = 400  # Adjusted height for better layout
$settingsForm.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedDialog
$settingsForm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterParent

# Add the link labels and textboxes to the settings form
$settingsForm.Controls.Add($chromeLinkLabel)
$chromeLinkLabel.Location = New-Object System.Drawing.Point(20, 20)

$settingsForm.Controls.Add($chromeLinkBox)
$chromeLinkBox.Location = New-Object System.Drawing.Point(20, 45)

$settingsForm.Controls.Add($winRARLinkLabel)
$winRARLinkLabel.Location = New-Object System.Drawing.Point(20, 80)

$settingsForm.Controls.Add($winRARLinkBox)
$winRARLinkBox.Location = New-Object System.Drawing.Point(20, 105)

$settingsForm.Controls.Add($adobeReaderLinkLabel)
$adobeReaderLinkLabel.Location = New-Object System.Drawing.Point(20, 140)

$settingsForm.Controls.Add($adobeReaderLinkBox)
$adobeReaderLinkBox.Location = New-Object System.Drawing.Point(20, 165)

$settingsForm.Controls.Add($firefoxLinkLabel)
$firefoxLinkLabel.Location = New-Object System.Drawing.Point(20, 200)

$settingsForm.Controls.Add($firefoxLinkBox)
$firefoxLinkBox.Location = New-Object System.Drawing.Point(20, 225)

$settingsForm.Controls.Add($saveLinksButton)
$saveLinksButton.Location = New-Object System.Drawing.Point(120, 270)

# Open the settings form when the "Edit Download Links" menu item is clicked
$editLinksOption.Add_Click({
    $settingsForm.ShowDialog()
})

# Button click to save the edited links
$saveLinksButton.Add_Click({
    Write-Host "Chrome Link: $($chromeLinkBox.Text)"
    Write-Host "WinRAR Link: $($winRARLinkBox.Text)"
    Write-Host "Adobe Reader Link: $($adobeReaderLinkBox.Text)"
    Write-Host "Firefox Link: $($firefoxLinkBox.Text)"
    
    # Update the installer scripts with the new links
    $chromeLink = $chromeLinkBox.Text
    $winRARLink = $winRARLinkBox.Text
    $adobeReaderLink = $adobeReaderLinkBox.Text
    $firefoxLink = $firefoxLinkBox.Text
    
    # Close settings form after saving
    $settingsForm.Close()
})

# Create a TableLayoutPanel for the main form layout
$tableLayout = New-Object System.Windows.Forms.TableLayoutPanel
$tableLayout.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayout.RowCount = 6  # Updated row count
$tableLayout.ColumnCount = 1
$tableLayout.RowStyles.Add((New-Object System.Windows.Forms.RowStyle([System.Windows.Forms.SizeType]::Percent, 60)))
$tableLayout.RowStyles.Add((New-Object System.Windows.Forms.RowStyle([System.Windows.Forms.SizeType]::Percent, 20)))
$tableLayout.RowStyles.Add((New-Object System.Windows.Forms.RowStyle([System.Windows.Forms.SizeType]::Percent, 10)))
$tableLayout.RowStyles.Add((New-Object System.Windows.Forms.RowStyle([System.Windows.Forms.SizeType]::Percent, 5)))
$tableLayout.RowStyles.Add((New-Object System.Windows.Forms.RowStyle([System.Windows.Forms.SizeType]::Percent, 5)))
$tableLayout.RowStyles.Add((New-Object System.Windows.Forms.RowStyle([System.Windows.Forms.SizeType]::Percent, 5)))  # Added row style
$tableLayout.Padding = [System.Windows.Forms.Padding]::new(10)

$form.Controls.Add($tableLayout)

# Create FlowLayoutPanel for checkboxes
$flowPanel = New-Object System.Windows.Forms.FlowLayoutPanel
$flowPanel.Dock = [System.Windows.Forms.DockStyle]::Top
$flowPanel.FlowDirection = [System.Windows.Forms.FlowDirection]::TopDown
$flowPanel.WrapContents = $false
$flowPanel.AutoScroll = $true
$flowPanel.Padding = [System.Windows.Forms.Padding]::new(5)

# Create Checkboxes for programs
$checkbox1 = New-Object System.Windows.Forms.CheckBox
$checkbox1.Text = "Google Chrome"  # Updated text
$checkbox1.Padding = [System.Windows.Forms.Padding]::new(5)
$checkbox1.Font = New-Object System.Drawing.Font("Segoe UI", 10)
$flowPanel.Controls.Add($checkbox1)

$checkbox2 = New-Object System.Windows.Forms.CheckBox
$checkbox2.Text = "WinRAR"  # Updated text
$checkbox2.Padding = [System.Windows.Forms.Padding]::new(5)
$checkbox2.Font = New-Object System.Drawing.Font("Segoe UI", 10)
$flowPanel.Controls.Add($checkbox2)

$checkbox3 = New-Object System.Windows.Forms.CheckBox
$checkbox3.Text = "Adobe Reader"  # Updated text
$checkbox3.Padding = [System.Windows.Forms.Padding]::new(5)
$checkbox3.Font = New-Object System.Drawing.Font("Segoe UI", 10)
$flowPanel.Controls.Add($checkbox3)

$checkbox4 = New-Object System.Windows.Forms.CheckBox
$checkbox4.Text = "Mozilla Firefox"  # Updated text
$checkbox4.Padding = [System.Windows.Forms.Padding]::new(5)
$checkbox4.Font = New-Object System.Drawing.Font("Segoe UI", 10)
$flowPanel.Controls.Add($checkbox4)

# Add FlowPanel to TableLayoutPanel
$tableLayout.Controls.Add($flowPanel, 0, 0)

# Create a button for the installation
$button = New-Object System.Windows.Forms.Button
$button.Text = "Install Selected"  # Ensure this text is set correctly
$button.Font = New-Object System.Drawing.Font("Segoe UI", 12)
$button.BackColor = [System.Drawing.Color]::LightGray  # Changed to light gray for better visibility
$button.ForeColor = [System.Drawing.Color]::Black  # Changed text color to black for better contrast
$button.Padding = [System.Windows.Forms.Padding]::new(10)
$button.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat  # Changed FlatStyle to Flat
$button.AutoSize = $true  # Automatically size the button to fit the text
$tableLayout.Controls.Add($button, 0, 1)  # Ensure button is added to the layout
$tableLayout.SetColumnSpan($button, 1)  # Span the button across the column
$tableLayout.SetRowSpan($button, 1)  # Span the button across the row

# Expand the checkbox area
$flowPanel.AutoSize = $true  # Allow the flow panel to auto-size based on its contents
$flowPanel.WrapContents = $true  # Allow checkboxes to wrap to the next line if needed
$tableLayout.Controls.Add($flowPanel, 0, 0)  # Ensure flow panel is added to the layout

# Install button click event
$button.Add_Click({
    # Retrieve the edited download links
    $chromeLink = $chromeLinkBox.Text
    $winRARLink = $winRARLinkBox.Text
    $adobeReaderLink = $adobeReaderLinkBox.Text
    $firefoxLink = $firefoxLinkBox.Text  # Added line

    if ($checkbox1.Checked) {
        Write-Host "Installing Google Chrome..."
        $LocalTempDir = $env:TEMP
        $ChromeInstaller = "ChromeInstaller.exe"
        (new-object System.Net.WebClient).DownloadFile($chromeLink, "$LocalTempDir\$ChromeInstaller")
        & "$LocalTempDir\$ChromeInstaller" /silent /install
        
        $Process2Monitor = "ChromeInstaller"
        
        Do {
            $ProcessesFound = Get-Process | Where-Object { $_.Name -eq $Process2Monitor } | Select-Object -ExpandProperty Name
            If ($ProcessesFound) {
                Write-Host "Still running: $($ProcessesFound -join ', ')"
                Start-Sleep -Seconds 2
            } else {
                Remove-Item "$LocalTempDir\$ChromeInstaller" -ErrorAction SilentlyContinue -Verbose
            }
        } Until (!$ProcessesFound)
    }
    
    if ($checkbox2.Checked) {
        Write-Host "Installing WinRAR..."
        $LocalTempDir = $env:TEMP
        $WinRARInstaller = "WinRARInstaller.exe"
        (new-object System.Net.WebClient).DownloadFile($winRARLink, "$LocalTempDir\$WinRARInstaller")
        & "$LocalTempDir\$WinRARInstaller" /S
        
        $Process2Monitor = "WinRAR"
        
        Do {
            $ProcessesFound = Get-Process | Where-Object { $_.Name -eq $Process2Monitor } | Select-Object -ExpandProperty Name
            If ($ProcessesFound) {
                Write-Host "Still running: $($ProcessesFound -join ', ')"
                Start-Sleep -Seconds 2
            } else {
                Remove-Item "$LocalTempDir\$WinRARInstaller" -ErrorAction SilentlyContinue -Verbose
            }
        } Until (!$ProcessesFound)
    }

    if ($checkbox3.Checked) {
        Write-Host "Installing Adobe Reader DC..."
        $LocalTempDir = $env:TEMP
        $AdobeReaderInstaller = "AdobeReaderInstaller.exe"
        (new-object System.Net.WebClient).DownloadFile($adobeReaderLink, "$LocalTempDir\$AdobeReaderInstaller")
        & "$LocalTempDir\$AdobeReaderInstaller" /sAll /msi

        $Process2Monitor = "AcroRd32"

        Do {
            $ProcessesFound = Get-Process | Where-Object { $_.Name -eq $Process2Monitor } | Select-Object -ExpandProperty Name
            If ($ProcessesFound) {
                Write-Host "Still running: $($ProcessesFound -join ', ')"
                Start-Sleep -Seconds 2
            } else {
                Remove-Item "$LocalTempDir\$AdobeReaderInstaller" -ErrorAction SilentlyContinue -Verbose
            }
        } Until (!$ProcessesFound)
    }

    if ($checkbox4.Checked) {  # Added block for Firefox installation
        Write-Host "Installing Mozilla Firefox..."
        $LocalTempDir = $env:TEMP
        $FirefoxInstaller = "FirefoxInstaller.exe"
        (new-object System.Net.WebClient).DownloadFile($firefoxLink, "$LocalTempDir\$FirefoxInstaller")
        & "$LocalTempDir\$FirefoxInstaller" /silent /install
        
        $Process2Monitor = "firefox"
        
        Do {
            $ProcessesFound = Get-Process | Where-Object { $_.Name -eq $Process2Monitor } | Select-Object -ExpandProperty Name
            If ($ProcessesFound) {
                Write-Host "Still running: $($ProcessesFound -join ', ')"
                Start-Sleep -Seconds 2
            } else {
                Remove-Item "$LocalTempDir\$FirefoxInstaller" -ErrorAction SilentlyContinue -Verbose
            }
        } Until (!$ProcessesFound)
    }

    $form.Close()
})

# Show the form
$form.ShowDialog()
