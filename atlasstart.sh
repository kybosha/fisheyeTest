#Start up FishEye and Stash

current="$(pwd)"

#JIRA

#	cd ~/Documents/Atlassian/Jira6.3/atlassian-jira-6.3.3-standalone/bin/
#		echo "$current"
#		echo
#		read -p "We will now start JIRA - Press any key to continue"
#		echo
#		sh start-jira.sh
#		echo
#	sleep 15

#FishEye
	sudo -u fisheye
	echo $USER	
	cd /opt/Atlassian/fisheye/fecru-3.8.0/bin 
		echo "$current"
		echo
		read -p "We will now start FishEye - Press any key to continue"
		echo
		sh start.sh --quiet
		echo
	sleep 15

#Stash
	sudo -u stash 
	cd /opt/Atlassian/stash/atlassian-stash-3.8.0/bin 
		echo "$current"
		echo
		read -p "We will now start Stash - Press any key to continue"
		echo
		sh start-stash.sh
		echo
	sleep 15

	PID=`ps aux | grep java | grep fisheye | awk '{print $2}'`
        	if test -z $PID
       		then
        		echo "FishEye is down..."
        	else
        		echo "FishEye is running... PID $PID"
        	fi

	sleep 5

#Stash

	PID=`ps aux | grep java | grep stash | awk '{print $2}'`
        	if test -z $PID
        	then
        		echo "Stash is down..."
        	else
        		echo "Stash is running... PID $PID"
        	fi

	sleep 5


