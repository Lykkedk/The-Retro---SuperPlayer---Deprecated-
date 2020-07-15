#!/bin/sh

FILTER="RP_red_44100.yml"
FILTER_DESC="0 - DEFAULT filter"

FILTER_1="Filter_test_1"
FILTER_1_DESC="1 - Description"

FILTER_2="Filter_test_2"
FILTER_2_DESC="2 - Description"

FILTER_3="Filter_test_3"
FILTER_3_DESC="3 - Description"

FILTER_4="Filter_test_4"
FILTER_4_DESC="4 - Description"

FILTER_5="Filter_test_5"
FILTER_5_DESC="5 - Description"

FILTER_DIR="/home/tc/DSP_Engine/filters/"
# Comment[#] out if NOT using websocket server
OPTIONS="-p3011"
# ================================
DESC="CamillaDSP Engine"
DAEMON=/home/tc/DSP_Engine/camilladsp
PIDFILE=/var/run/camilla.pid

case "$1" in
	start)
		if [ -f $PIDFILE ]; then
		echo "$PNAME already running."
		exit 1
		fi
		echo "Starting $DESC: $PNAME..."
		start-stop-daemon --start --quiet -b -m -p $PIDFILE --exec $DAEMON -- $OPTIONS $FILTER_DIR$FILTER
		echo "$FILTER enabled :: $FILTER_DESC"
		;;

	start_1)
    if [ -f $PIDFILE ]; then
    echo "$PNAME already running."
    exit 1
    fi
    echo "Starting $DESC: $PNAME..."
    start-stop-daemon --start --quiet -b -m -p $PIDFILE --exec $DAEMON -- $OPTIONS $FILTER_DIR$FILTER_1
		echo "$FILTER_1 enabled :: $FILTER_1_DESC"
		;;

  start_2)
    if [ -f $PIDFILE ]; then
    echo "$PNAME already running"
    exit 1
    fi
    echo "Starting $DESC: $PNAME..."
		start-stop-daemon --start --quiet -b -m -p $PIDFILE --exec $DAEMON -- $OPTIONS $FILTER_DIR$FILTER_2
		echo "$FILTER_2 enabled :: $FILTER_2_DESC"
		;;

	start_3)
    if [ -f $PIDFILE ]; then
    echo "$PNAME already running."
    exit 1
    fi
    echo "Starting $DESC: $PNAME..."
    start-stop-daemon --start --quiet -b -m -p $PIDFILE --exec $DAEMON -- $OPTIONS $FILTER_DIR$FILTER_3
		echo "$FILTER_3 enabled :: $FILTER_3_DESC"
		;;

  start_4)
    if [ -f $PIDFILE ]; then
    echo "$PNAME already running."
    exit 1
    fi
    echo "Starting $DESC: $PNAME..."
    start-stop-daemon --start --quiet -b -m -p $PIDFILE --exec $DAEMON -- $OPTIONS $FILTER_DIR$FILTER_4
    echo "$FILTER_4 enabled :: $FILTER_4_DESC"
		;;

	start_5)
		if [ -f $PIDFILE ]; then
		echo "$PNAME already running."
	 	exit 1
	 	fi
	 	echo "Starting $DESC: $PNAME..."
	 	start-stop-daemon --start --quiet -b -m -p $PIDFILE --exec $DAEMON -- $OPTIONS $FILTER_DIR$FILTER_5
	 	echo "$FILTER_5 enabled :: $FILTER_5_DESC"
		;;

	stop)
		if [ ! -f $PIDFILE ]; then
		echo "$PNAME is not running."
		exit 1
		fi
		echo "Stopping $DESC: $PNAME..."
		# We need to kill squeezelite. CamillaDSP allways have to be started first duo to squeezelite is blocking ALSA
		sudo killall squeezelite
		sudo killall squeezelite-custom
		start-stop-daemon --stop --quiet -p $PIDFILE
		sudo rm -f $PIDFILE
		;;

	restart)
		echo "Restarting $DESC..."
		$0 stop
		sleep 1
		$0 start
		;;

	status)
		if [ -f $PIDFILE ]; then
		PID=`cat $PIDFILE`

		PIDS=`/bin/busybox pgrep $DAEMON | awk '{printf "%s ", $1}'`

		for GOTPID in $PIDS; do
		if [ x"$GOTPID" = x"$PID" ]; then
		echo "$PNAME is running. PID=$PID"
		exit 0
		fi
		done
		fi

		echo "$PNAME not running."
		exit 1
		;;
	*)

		echo -e "Usage: $0 [start|stop|restart|status]"
		echo
		echo "====== Filter description ======"
		echo $FILTER $FILTER_DESC
		echo $FILTER_1 $FILTER_1_DESC
		echo $FILTER_2 $FILTER_2_DESC
		echo $FILTER_3 $FILTER_3_DESC
		echo $FILTER_4 $FILTER_4_DESC
		echo $FILTER_5 $FILTER_5_DESC
		echo "================================"
		echo

		exit 1
		;;

esac

exit 0
