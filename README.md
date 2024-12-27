# Onur Altun's Install Toolkit

A simple and easy-to-use Windows toolkit to install essential software packages, such as Google Chrome, WinRAR, Adobe Reader, and Mozilla Firefox. The application allows IT professionals to manage download links for these software installers, save them, and execute installations based on user selection.

## Features

- Edit and save download links for:
  - Google Chrome
  - WinRAR
  - Adobe Reader DC
  - Mozilla Firefox
- Simple GUI with:
  - Menu for settings and about information
  - Checkbox list for selecting software to install
  - Download links editable through a separate settings window
- Easy-to-use installation process for selected software
- Supports silent installations for all listed programs

## Installation

1. Clone or download this repository.
2. Ensure you have PowerShell and necessary permissions to execute scripts.
3. Run the script in PowerShell to launch the toolkit.

## Usage

1. Launch the `Onur Altun's Install Toolkit`.
2. Navigate to the **File** menu to:
   - Edit download links for the installers.
   - View the **About** section with project details.
3. In the main window, select the software you want to install by checking the corresponding checkboxes.
4. Click **Install Selected** to begin the installation process.

The toolkit will download the software packages and install them silently.

## Development

This project uses PowerShell with Windows Forms to create a graphical user interface (GUI) for managing software installations. It leverages standard Windows installation methods for silent installation of software.

### To contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-name`).
3. Make changes and commit them (`git commit -am 'Add feature'`).
4. Push to the branch (`git push origin feature-name`).
5. Create a new pull request.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Contact

For any inquiries or contributions, please contact Onur Altun at [petabyte64@gmail.com](mailto:petabyte64@gmail.com).
