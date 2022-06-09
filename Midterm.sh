banner Welcome to My Recon Project 
#2
echo "Enter domain"
read a
#3
nslookup a
nslookup a > read.txt
#4
echo "WHOIS Result"
 whois $a
whois $a >> read.txt

dig $a
dig $a >> read.txt

#5
echo "Sublist3r Result"
python3 SubDomainizer.py  -u  $a  -o domain.txt


file="domain.txt"

while read -r line; do
    echo 
 nslookup  $line
 theHarvester -d  $line -l 500 -b  google
done <$file 
