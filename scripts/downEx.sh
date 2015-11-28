#!/bin/bash

function download {
         	curl -o kernel.html https://kernel.org
		link=$(cat kernel.html | grep -A1 "latest_link" | grep "href=" | cut -d '"' -f2)
		echo $link
		#subLink=${link:1}
		fulLink=$link
		echo $fulLink
		wget -c $fulLink
}
function extract {
		tar -xvJf *.tar.xz
		cd linux-3*
		ls
}

wget -q --tries=10 --timeout=20 http://google.com
if [[ $? -eq 0 ]]; then
        echo "Online"
		download
		extract
else
        echo "Offline"
		extract
fi
