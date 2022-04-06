#/bin/bash
for p in $(cat $1)
do
	useradd -m -s /bin/bash $p
	echo "enter a password for $p"
	passwd $p
	echo "≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈"
done
