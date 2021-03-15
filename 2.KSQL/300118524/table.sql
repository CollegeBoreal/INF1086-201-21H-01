CREATE TABLE zoureni_table as
    select message, count(*) as note 
    FROM
    zoureni_stream
    WHERE SYSLOG_IDENTIFIER = 'systemd-logind'
    OR _COMM = 'sshd'
    GROUP BY message ; 
