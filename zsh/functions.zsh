cprint() {
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

todo() {
	gtd_id=`trello board list -o tsv | grep 00GTD | cut -d$'\t' -f 1`
	inbox_id=`trello list list -b $gtd_id -o tsv | grep Inbox | cut -d$'\t' -f 1`

	if [ -z ${2+x} ]; then
		trello card create -l $inbox_id -n $1
	else
		trello card create -l $inbox_id -n $1 -d $2
	fi

}
