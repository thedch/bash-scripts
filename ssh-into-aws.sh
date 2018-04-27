#!/bin/bash
# Author: Daniel Hunter
# February 06 2018

##
# Instructions: Everywhere there is an instanceID, change it to be an instanceID
# of your own (get from AWS console). I have three different instances I use
# frequently, so I have three different arguments. You can have as many or as few
# as you like.
##

T="$(date +%s)" # get current time to use later

if [ "$#" -ne 1 ]; then
        # Ensure the user provided command line arguments
        echo "[ERROR] Please provide stop, t2, p2, or car as an argument."
        exit 3
fi

if [ "$1" == 'stop' ]; then
    # If the command line argument was stop, shut down all instances
    aws ec2 stop-instances --instance-ids i-016940554988ae126
    aws ec2 stop-instances --instance-ids i-088218b334cf97c8d
    aws ec2 stop-instances --instance-ids i-0f0651b333034b762
    exit 0
fi

# Change 'p2', 't2', 'car' to be whatever is convenient for you -- this is purely a
# user convenience feature
if [ "$1" == 'p2' ]; then
    instanceId='i-016940554988ae126'
    user='ubuntu'
fi

if [ "$1" == 't2' ]; then
    instanceId='i-088218b334cf97c8d'
    user='ubuntu'
fi

if [ "$1" == 'car' ]; then
    instanceId='i-0f0651b333034b762'
    user='carnd'
fi

# Start the instance
echo 'Booting up the instance...'
aws ec2 start-instances --instance-ids $instanceId && \
aws ec2 wait instance-running --instance-ids $instanceId && \
instanceIp=$(aws ec2 describe-instances --filters "Name=instance-id,Values=$instanceId" --query "Reservations[0].Instances[0].PublicIpAddress")

echo 'Waiting a few seconds to ensure full startup...'
sleep 10 # Sleep while the instance boots just in case it didn't fully

# SSH into the instance
ssh -L 8888:localhost:8888 -i ~/.ssh/aws-key-fast-ai.pem "$user"@"$instanceIp"

# When the SSH command finishes, shut down the instance
aws ec2 stop-instances --instance-ids $instanceId

T="$(($(date +%s)-T))"
M="$((T/60))"
echo "Time Elapsed: ${M} Minutes"
