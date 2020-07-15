#!/bin/sh

# ========================================== #
#  Squeezelite / CamillaDSP starter script!  #
#  ***     Easy change of filters       ***  #
#  JesperLykke (lykkedk) 2020                #
#                                            #
#  Execute with /home/tc/filter.sh nofilter  #
#  Execute with /home/tc/filter.sh filter_1  #
#  Execute with /home/tc/filter.sh filter_2  #
#  Execute with /home/tc/filter.sh filter_3  #
#  Execute with /home/tc/filter.sh filter_4  #
#  Execute with /home/tc/filter.sh filter_5  #
# ========================================== #

case "$1" in
nofilter)
echo
sleep 0.5
echo "Kill squeezelite + squeezelite-custom"
sudo killall squeezelite 2>/dev/null
sudo killall squeezelite-custom 2>/dev/null
sleep 0.5
echo "Kill CamillaDSP"
sudo /home/tc/CamillaDSP.sh stop 2>/dev/null
sudo killall camilladsp 2>/dev/null
echo
echo "Starting squeezelite with no filters"
sleep 0.5
# Enter the correct string below for starting squeezelite without filters
# This starts the default/normal squeezelite without filters
sudo squeezelite -n NO_DSP_DAC -o sound_out -a 160:4::1 -b 10000:20000 -U -U -z
# =======================================================================
echo
ps aux | grep squeezelite
ps aux | grep squeezelite-custom
ps aux | grep camilladsp
;;

filter)
echo
sleep 0.5
echo "Kill squeezelite + squeezelite-custom"
sudo killall squeezelite 2>/dev/null
sudo killall squeezelite-custom 2>/dev/null
sleep 0.5
echo "Kill CamillaDSP"
sudo /home/tc/CamillaDSP.sh stop 2>/dev/null
sudo killall camilladsp 2>/dev/null
echo
sleep 0.5
echo "Starting CamillaDSP with DEFAULT filter @ loopback"
sudo /home/tc/CamillaDSP.sh start
echo "Starting squeezelite @ loopback (with filters)"
sleep 0.5
# Enter the correct string below for starting squeezelite with filters
# This starts my squeezelite-custom with a filter
sudo /mnt/mmcblk0p2/tce/squeezelite-custom -n DSP_DAC -o squeeze -a 160:4::1 -b 10000:20000 -r 44100-192000:2500 -U -U -z
# ====================================================================
echo
ps aux | grep squeezelite
ps aux | grep squeezelite-custom
ps aux | grep camilladsp
;;

filter_1)
echo
sleep 0.5
echo "Kill squeezelite + squeezelite-custom"
sudo killall squeezelite 2>/dev/null
sudo killall squeezelite-custom 2>/dev/null
sleep 0.5
echo "Kill CamillaDSP"
sudo /home/tc/CamillaDSP.sh stop 2>/dev/null
sudo killall camilladsp 2>/dev/null
echo
sleep 0.5
echo "Starting CamillaDSP with filter @ loopback"
sudo /home/tc/CamillaDSP.sh start_1
echo "Starting squeezelite @ loopback (with filters)"
sleep 0.5
# Enter the correct string below for starting squeezelite with filters
# This starts my squeezelite-custom with a filter
sudo /mnt/mmcblk0p2/tce/squeezelite-custom -n DSP_DAC -o squeeze -a 160:4::1 -b 10000:20000 -r 44100-192000:2500 -U -U -z
# ====================================================================
echo
ps aux | grep squeezelite
ps aux | grep squeezelite-custom
ps aux | grep camilladsp
;;

filter_2)
echo
sleep 0.5
echo "Kill squeezelite + squeezelite-custom"
sudo killall squeezelite 2>/dev/null
sudo killall squeezelite-custom 2>/dev/null
sleep 0.5
echo "Kill CamillaDSP"
sudo /home/tc/CamillaDSP.sh stop 2>/dev/null
sudo killall camilladsp 2>/dev/null
echo
sleep 0.5
echo "Starting CamillaDSP with filter @ loopback"
sudo /home/tc/CamillaDSP.sh start_2
echo "Starting squeezelite @ loopback (with filters)"
sleep 0.5
# Enter the correct string below for starting squeezelite with filters
# This starts my squeezelite-custom with a filter
sudo /mnt/mmcblk0p2/tce/squeezelite-custom -n DSP_DAC -o squeeze -a 160:4::1 -b 10000:20000 -r 44100-192000:2500 -U -U -z
# ====================================================================
echo
ps aux | grep squeezelite
ps aux | grep squeezelite-custom
ps aux | grep camilladsp
;;

filter_3)
echo
sleep 0.5
echo "Kill squeezelite + squeezelite-custom"
sudo killall squeezelite 2>/dev/null
sudo killall squeezelite-custom 2>/dev/null
sleep 0.5
echo "Kill CamillaDSP"
sudo /home/tc/CamillaDSP.sh stop 2>/dev/null
sudo killall camilladsp 2>/dev/null
echo
sleep 0.5
echo "Starting CamillaDSP with filter @ loopback"
sudo /home/tc/CamillaDSP.sh start_3
echo "Starting squeezelite @ loopback (with filters)"
sleep 0.5
# Enter the correct string below for starting squeezelite with filters
# This starts my squeezelite-custom with a filter
sudo /mnt/mmcblk0p2/tce/squeezelite-custom -n DSP_DAC -o squeeze -a 160:4::1 -b 10000:20000 -r 44100-192000:2500 -U -U -z
# ====================================================================
echo
ps aux | grep squeezelite
ps aux | grep squeezelite-custom
ps aux | grep camilladsp
;;

filter_4)
echo
sleep 0.5
echo "Kill squeezelite + squeezelite-custom"
sudo killall squeezelite 2>/dev/null
sudo killall squeezelite-custom 2>/dev/null
sleep 0.5
echo "Kill CamillaDSP"
sudo /home/tc/CamillaDSP.sh stop 2>/dev/null
sudo killall camilladsp 2>/dev/null
echo
sleep 0.5
echo "Starting CamillaDSP with filter @ loopback"
sudo /home/tc/CamillaDSP.sh start_4
echo "Starting squeezelite @ loopback (with filters)"
sleep 0.5
# Enter the correct string below for starting squeezelite with filters
# This starts my squeezelite-custom with a filter
sudo /mnt/mmcblk0p2/tce/squeezelite-custom -n DSP_DAC -o squeeze -a 160:4::1 -b 10000:20000 -r 44100-192000:2500 -U -U -z
# ====================================================================
echo
ps aux | grep squeezelite
ps aux | grep squeezelite-custom
ps aux | grep camilladsp
;;

filter_5)
echo
sleep 0.5
echo "Kill squeezelite + squeezelite-custom"
sudo killall squeezelite 2>/dev/null
sudo killall squeezelite-custom 2>/dev/null
sleep 0.5
echo "Kill CamillaDSP"
sudo /home/tc/CamillaDSP.sh stop 2>/dev/null
sudo killall camilladsp 2>/dev/null
echo
sleep 0.5
echo "Starting CamillaDSP with filter @ loopback"
sudo /home/tc/CamillaDSP.sh start_5
echo "Starting squeezelite @ loopback (with filters)"
sleep 0.5
# Enter the correct string below for starting squeezelite with filters
# This starts my squeezelite-custom with a filter
sudo /mnt/mmcblk0p2/tce/squeezelite-custom -n DSP_DAC -o squeeze -a 160:4::1 -b 10000:20000 -r 44100-192000:2500 -U -U -z
# ====================================================================
echo
ps aux | grep squeezelite
ps aux | grep squeezelite-custom
ps aux | grep camilladsp
;;

help)
/home/tc/CamillaDSP.sh
;;

esac

exit 0
