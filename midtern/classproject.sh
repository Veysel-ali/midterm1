banner Veysel
echo "Enter domain"
read a

nslookup a
nslookup a > read.txt

echo "WHOIS Result"
 whois $a
whois $a >> read.txt

echo "Sublist3r Result"
sublist3r -d  $a
sublist3r -d $a >>read.txt

echo "TheHarvester Result"

 theHarvester -d  $a -l 500 -b  google
 theHarvester -d  $a -l 500 -b  google >> read.txt

