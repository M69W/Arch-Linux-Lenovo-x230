#!/bin/bash
# /usr/lib/systemd/system-sleep/e1000e-probe.sh
# handles e1000e driver suspend problems:
#	pci_pm_suspend(): e1000_suspend+0x0/0x20 [e1000e] returns -2
#	dpm_run_callback(): pci_pm_suspend+0x0/0x150 returns -2
#	PM: Device 0000:00:19.0 failed to suspend async: error -2
#	PM: Some devices failed to suspend

case "$1" in
   "pre") rmmod e1000e
   ;;
   "post") modprobe e1000e
   ;;
esac
