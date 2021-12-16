function cprint() {
	numRegex='[0-9]+$'
	usrFile=$1
	usrTime=$2
	defLen=15
	defTime=3

	# Command line argument processing
	if [[ $usrTime =~ $numRegex ]]; then
		# A valid number of lines and refresh rate were passed in
	else
		# Invalid or no lines and refresh rate were provided
		# so instead, using defaults instead.
		usrLen=$defLen
		usrTime=$defTime
	fi

	while [ true ]; do
		clear
		cat $usrFile
		sleep $usrTime
	done
}

# https://coderwall.com/p/qepsyq/shell-function-to-download-file
function download {
	$(which curl) -o ${1##*/} $1
}

function wetter {
	curl -4 wttr.in/$1
}

