yesterday=`date -d yesterday +%Y/%m/%d`
curl -s "https://www.wunderground.com/history/airport/GNV/$yesterday/DailyHistory.heml?&format=1" > weather.txt
max_temp=` cat weather.txt | awk -F "," '{print $2}' | sort -n | tail -n1`
echo the max temp is $max_temp