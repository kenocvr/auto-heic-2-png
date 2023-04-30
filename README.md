# auto-heic-2-png
The script will monitor the "Documents" directory for new HEIC files and automatically convert them to PNG format.


First, you need to install the imagemagick package, which provides the magick command for converting image formats, and fswatch package to monitor the directory for changes.

To install these packages, you can use Homebrew:

`brew install imagemagick fswatch`

Make the script executable:

`chmod +x heic_to_png.sh`

Run the script:

`./heic_to_png.sh`

To run the script in the background, you can use:

`./heic_to_png.sh &`
