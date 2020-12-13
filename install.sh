#!/bin/bash
clear
echo "Выберите свое устройтсво:"
echo "1) Termux"
echo "2) Другой Unix"
echo ""
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install dos2unix
	pip install requests colorama proxyscrape
	cp ~/SMSBUFF/spammer.py $PREFIX/bin/SMSBUFF
	dos2unix $PREFIX/bin/SMSBUFF
	chmod -R 777 ~/SMSBUFF
	chmod 777 $PREFIX/bin/SMSBUFF
	SMSBUFF
else
	if [ $numb = "2" ]
	then
		if [ "$(whoami)" != 'root' ];
		then
			echo "Нет прав. Запустите install.sh с root правами (sudo sh ~/SMSBUFF/install.sh)"
			exit
		else
			apt install python3 python3-pip dos2unix
			pip3 install requests colorama proxyscrape
			cp ~/SMSBUFF/spammer.py $PREFIX/bin/SMSBUFF
			dos2unix $RPEFIX/bin/SMSBUFF
			chmod 777 $RPEFIX/bin/SMSBUFF
			chmod -R 777 ~/SMSBUFF
			SMSBUFF
		fi
	fi
fi
