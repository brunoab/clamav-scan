ClamAV Scan
===========

Bash script to scan for viruses on unix/linux server using clamAV

Configuration
-------------

variable     | example value  | description
-------------|----------------|------------
mail_to      | you@test.com   | The mail adresse the scan log is sent to
mail_subject | Clamav scan    | The mail subject
mail_header  | scan on monday | The mail body header
log_file     |./clamav.log    | the name of the log file


Usage
-----

./clamav-scan folder_or_file
