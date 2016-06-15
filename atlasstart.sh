#Start up all of the Atlassian tools

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

#Confluence

#	cd ~/Documents/Atlassian/Conf/atlassian-confluence-5.6.5/bin/
#		echo
#		read -p "We will now start Confluence - Press any key to continue"
#		echo
#		sh start-confluence.sh
#		echo
#	sleep 15

##Confirmation that the services are running

#JIRA

#	PID=`ps aux | grep java | grep jira | awk '{print $2}'`
#        	if test -z $PID
 #       	then
#        		echo "JIRA is down..."
 #       	else
  #      		echo "JIRA running... PID $PID"
   #     	fi

#	sleep 5

#FishEye

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

#Confluence

#	PID=`ps aux | grep java | grep confluence | awk '{print $2}'`
 #       	if test -z $PID
  #      	then
   #     		echo "Confluence is down..."
    #    	else
     #   		echo "Confluence is running... PID $PID"
        	#fi
