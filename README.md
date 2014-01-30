ClamAV Scan
===========

Bash script to scan for viruses on unix/linux server using clamAV, a mail is sent if a virus is found.

Configuration
-------------

Open **clamav-scan.sh** file and adjust configuration variables

Variable     | Example value  | Description
-------------|----------------|------------
mail_to      | you@test.com   | The mail adresse the scan log is sent to
mail_subject | Clamav scan    | The mail subject
mail_header  | scan on monday | The mail body header
log_file     |./clamav.log    | the name of the log file


Usage
-----

Make **clamav-scan.sh** file executable, and run it:

```
chmod u+x clamav-scan.sh
./clamav-scan.sh &ltfolder_or_file&gt;
