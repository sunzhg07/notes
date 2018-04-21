echo "==============================="
echo "+install gslx680_ts_acpi driver"
echo "==============================="
sudo make 
sudo make install
echo "============================================================"
echo "+install touchscreen firmware: silead_ts.fw to /lib/firmware"
echo "============================================================"
sudo cp tsforEzpad6pro/silead_ts.fw /lib/firmware/
echo "+block the upstream silead driver"
echo "============================================================"
sudo cp tsforEzpad6pro/blacklist.conf /etc/modprobe.d/blacklist.conf
echo "good job! restart your system and enjoy it!"

