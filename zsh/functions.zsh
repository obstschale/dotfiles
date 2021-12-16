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


function rollback {

	if [ -e './system/includes/constants.php' ]
	then
		DBUSER=$(grep -m 1 '^db_user' ./sites/default/churchtools.config | cut -d '=' -f2 | xargs)
		DBPASS=$(grep -m 1 '^db_password' ./sites/default/churchtools.config | cut -d '=' -f2 | xargs)
		DBNAME=$(grep -m 1 '^db_name' ./sites/default/churchtools.config | cut -d '=' -f2 | xargs)
		echo -e "Database Name:\t$DBNAME"

		BUILD=$(echo "SELECT value FROM cc_config WHERE name = 'build'" | mysql -u $DBUSER --password=$DBPASS -N $DBNAME)
		echo -e "DB Build:\t$BUILD"

		CONSTANT=$(grep -m 1 BUILD_VERSION ./system/includes/constants.php | cut -d"\"" -f4)
		echo -e "Code Build:\t$CONSTANT"

		if [ $BUILD -eq $CONSTANT ]
		then
			echo "Already current"
			return
		fi

		echo "Rolling back ..."
		echo "UPDATE cc_config SET value=$CONSTANT WHERE name = 'build'" | mysql -u $DBUSER --password=$DBPASS $DBNAME

	else

		echo "./system/includes/constants.php Not Found."
		echo "Make sure you are in the root dir of churchtools"
		echo "Exiting"
	fi

}

function import_support_data {
	echo "Drop ct_support";
	mysql -u root --execute "drop database ct_support;"

	echo "Create ct_support;"
	mysql -u root --execute "create database ct_support;"

	echo "Import Data: $1"
	pv $1 | mysql -u root ct_support
}

function geolocation {
	GEO=$(curl -s "https://api.freegeoip.app/json/?apikey=$FREEGEOIP_APIKEY")

	LAT=$(echo $GEO | json | grep latitude | cut -d: -f2 | cut -d, -f1 | xargs)
	LON=$(echo $GEO | json | grep longitude | cut -d: -f2 | cut -d, -f1 | xargs)

	#echo "Latitude: $LAT";
	#echo "Longitude: $LON";

	echo "[$LAT,$LON]";
}