nvram set cron_jobs=*/10 * * * * killall splashd; sleep 8 && splashd >> /tmp/nocat.log 2>&1 &
nvram commit
