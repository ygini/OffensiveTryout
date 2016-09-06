# FakePDF

# Disclamer

Use at your own risk, don't be stupid, don't be rude, don't use against a system without authorizations

## Description

This Cocoa app is made to look like a PDF file. You can name it "Financial Report" for example, store it on a USB flash drive and drop it on in your building.

When someone will find the USB stick and try to read the doc, the app will start a custom script you can customize, open a real PDF and wipe itself.

Default implementation of the script recommand to ask the Mac to say something with a loud voice and then send an e-mail to all employees offering food and brevage for tomorrow breakfast.

## Customization

In the FakePDF folder you will find source code and ```cleanup.sh``` script used to run custom code when the application start.

Edit the content of ```customBehavior``` function inside ```cleanup.sh``` to do what you want (say something with the Mac, send an e-mail, etc.).

You can also customize the PDF file from Xcode (don't just rename it from the Finder, Xcode need to be aware of the new name) and the icon who look like a PDF preview. Just export a first page from a document as PNG (like ```logo.png``` file) and run the ```generateIcons.sh``` with path to your png as first argument. The script will create various size version of your file and set them to be used by Xcode at the next build time.

To build this app, open FakePDF.xcodeproj, set your signature ID (to avoid gatekeeper warnings) and build the app. 

Don't run the app on your own computer. The app can be run only once. During the first run the app wipe itself and let only the real PDF.

Please, don't be rude with your users. Use this for educational purpose, as a game.
