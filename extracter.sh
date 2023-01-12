#!/bin/bash

##################################################################
# Coded By: K3ysTr0K3R                                           #
# This is a fun Recon tool only coded for the fun of it.         #
# Its purpose would be to SpiderCrawl on any website by crawling #
# for intresting information.                                    #
##################################################################

clear
echo -e "\e[91m"
echo "##################################################################"
echo "# Coded By: K3ysTr0K3R                                           #"
echo "# This is coded for fun ;)                                       #"
echo "# This is a fun Recon tool only coded for the fun of it.         #"
echo "# Its purpose would be to SpiderCrawl on any website by crawling #"
echo "# for intresting information.                                    #"
echo "##################################################################"
echo ""

echo -e "\e[92m#######\e[91m#     # \e[94m####### \e[95m######     \e[93m#     \e[96m#####  \e[36m####### \e[31m####### \e[95m######"
echo -e "\e[92m#       \e[91m#   #     \e[94m#    \e[95m#     #   \e[93m# #   \e[96m#     #    \e[36m#    \e[31m#       \e[95m#     #"
echo -e "\e[92m#        \e[91m# #      \e[94m#    \e[95m#     #  \e[93m#   #  \e[96m#          \e[36m#    \e[31m#       \e[95m#     #"
echo -e "\e[92m#####     \e[91m#       \e[94m#    \e[95m######  \e[93m#     # \e[96m#          \e[36m#    \e[31m#####   \e[95m######"
echo -e "\e[92m#        \e[91m# #      \e[94m#    \e[95m#   #   \e[93m####### \e[96m#          \e[36m#    \e[31m#       \e[95m#   #"
echo -e "\e[92m#       \e[91m#   #     \e[94m#    \e[95m#    #  \e[93m#     # \e[96m#     #    \e[36m#    \e[31m#       \e[95m#    #"
echo -e "\e[92m#######\e[91m#     #    \e[94m#    \e[95m#     # \e[93m#     #  \e[96m#####     \e[36m#    \e[31m####### \e[95m#     #"
echo ""

if [ -z $1 ]; then

	echo -e "\e[92m[\e[93m?\e[92m] \e[94mYou Must Enter A Domain Name or Internet-Protocol=(\e[91mIP\e[94m)"
	echo -e "\e[92m[\e[93m?\e[92m] \e[94mExample: extracter.sh (\e[91mDomain/IP\e[94m)"
	echo -e "\e[92m[\e[93m?\e[92m] \e[94mHint: Domains would work better for this."
	exit
fi

echo -e "\e[93m<---------------------------------------------------------------------------------------->"
echo -e "\e[92m[\e[93m!\e[92m] \e[94mLooking for any possible robots.txt files located on \e[91m$1"
echo -e "\e[93m<---------------------------------------------------------------------------------------->"

if wget $1/robots.txt &> /dev/null
then
	echo -e "\e[95m<-------------------------------------------------------------->"
	echo -e "\e[92m[\e[94m*\e[92m] \e[95mrobots.txt file exists on \e[91m$1"
	echo -e "\e[92m[\e[94m*\e[92m] \e[95mLocation: \e[91m$1/robots.txt"
	echo -e "\e[95m<-------------------------------------------------------------->"
	echo -e "\e[92m<-------------------------------------------------------------->"
	echo -e "\e[92m[\e[94m*\e[92m] \e[92mResults for \e[91m$1/robots.txt \e[92m"
	echo -e "\e[92m<-------------------------------------------------------------->"
	cat robots.txt
	rm robots.txt
else
	echo -e "\e[95m<-------------------------------------------------------------->"
	echo -e "\e[92m[\e[91m~\e[92m] \e[95mrobots.txt was not found on \e[91m$1"
	echo -e "\e[95m<-------------------------------------------------------------->"
fi

echo -e "\e[93m<-------------------------------------------------------------->"
echo -e "\e[92m[\e[93m!\e[92m] \e[94mLooking for sitemap_index.xml and sitemap.xml on \e[91m$1"
echo -e "\e[93m<-------------------------------------------------------------->"

if wget $1/sitemap_index.xml &> /dev/null
then
	rm sitemap_index.xml
	echo -e "\e[96m<-------------------------------------------------------------->"
	echo -e "\e[92m[\e[94m*\e[92m] \e[96msitemap_index.xml exists on \e[91m$1"
	echo -e "\e[92m[\e[94m*\e[92m] \e[96mLocation: \e[91m$1/sitemap_index.xml"
else
	echo -e "\e[96m<-------------------------------------------------------------->"
	echo -e "\e[92m[\e[91m~\e[92m] \e[96msitemap_index.xml was not found on \e[91m$1"
fi

if wget $1/sitemap.xml &> /dev/null
then
	rm sitemap.xml
	echo -e "\e[92m[\e[94m*\e[92m] \e[96msitemap.xml exists on \e[91m$1"
	echo -e "\e[92m[\e[94m*\e[92m] \e[96mLocation: \e[91m$1/sitemap.xml"
	echo -e "\e[96m<-------------------------------------------------------------->"
else
	echo -e "\e[92m[\e[91m~\e[92m] \e[96msitemap.xml was not found on \e[91m$1"
	echo -e "\e[96m<-------------------------------------------------------------->"
fi

echo -e "\e[93m<-------------------------------------------------------------->"
echo -e "\e[92m[\e[93m!\e[92m] \e[94mLooking for wp-login.php on \e[91m$1"
echo -e "\e[93m<-------------------------------------------------------------->"

if wget $1/wp-login.php &> /dev/null
then
	rm wp-login.php
	echo -e "\e[95m<-------------------------------------------------------------->"
	echo -e "\e[92m[\e[94m*\e[92m] \e[95mwp-login.php exists on \e[91m$1"
	echo -e "\e[92m[\e[94m*\e[92m] \e[95mPossible login page found on \e[91m$1"
	echo -e "\e[92m[\e[94m*\e[92m] \e[95mLocation: \e[91m$1/wp-login.php"
	echo -e "\e[95m<-------------------------------------------------------------->"
else
	echo -e "\e[95m<-------------------------------------------------------------->"
	echo -e "\e[92m[\e[91m~\e[92m] \e[95mwp-login.php was not found on \e[91m$1"
	echo -e "\e[95m<-------------------------------------------------------------->"
fi

echo -e "\e[93m<-------------------------------------------------------------->"
echo -e "\e[92m[\e[93m!\e[92m] \e[93mLooking for phpmyadmin on \e[91m$1"
echo -e "\e[93m<-------------------------------------------------------------->"

if wget $1/phpmyadmin &> /dev/null
then
	rm phpmyadmin
	echo -e "\e[92m<-------------------------------------------------------------->"
	echo -e "\e[92m[\e[94m*\e[92m] \e[93mphpmyadmin exists on \e[91m$1"
	echo -e "\e[92m[\e[94m*\e[92m] \e[93mPossible login page found on \e[91m$1"
	echo -e "\e[92m[\e[94m*\e[92m] \e[93mLocation: \e[91m$1/phpmyadmin"
	echo -e "\e[92m<-------------------------------------------------------------->"
else
	echo -e "\e[93m<-------------------------------------------------------------->"
	echo -e "\e[92m[\e[91m~\e[92m] phpmyadmin was not found on \e[91m$1"
	echo -e "\e[93m<-------------------------------------------------------------->"
fi

echo -e "\e[93m<-------------------------------------------------------------->"
echo -e "\e[92m[\e[93m!\e[92m] Looking for cpanel on \e[91m$1"
echo -e "\e[93m<-------------------------------------------------------------->"

if wget $1/cpanel &> /dev/null
then
	rm cpanel
	echo -e "\e[96m<-------------------------------------------------------------->"
	echo -e "\e[92m[\e[94m*\e[92m] \e[96mcpanel exists on \e[91m$1"
	echo -e "\e[92m[\e[94m*\e[92m] \e[96mPossible login page found on \e[91m$1"
	echo -e "\e[92m[\e[94m*\e[92m] \e[96mLocation: \e[91m$1/cpanel"
	echo -e "\e[96m<-------------------------------------------------------------->"
else
	echo -e "\e[96m<-------------------------------------------------------------->"
	echo -e "\e[92m[\e[91m~\e[92m] \e[96mcpanel was not found on \e[91m$1"
	echo -e "\e[96m<-------------------------------------------------------------->"
fi

echo -e "\e[93m<-------------------------------------------------------------->"
echo -e "\e[92m[\e[93m!\e[92m] Looking for admin.php on \e[91m$1"
echo -e "\e[93m<-------------------------------------------------------------->"

if wget $1/admin.php &> /dev/null
then
	rm admin.php
	echo -e "\e[95m<-------------------------------------------------------------->"
	echo -e "\e[92m[\e[94m*\e[92m] admin.php exists on \e[91m$1"
	echo -e "\e[92m[\e[94m*\e[92m] Possibile login page found on \e[91m$1"
	echo -e "\e[92m[\e[94m*\e[92m] Location: \e[91m$1/admin.php"
	echo -e "\e[95m<-------------------------------------------------------------->"
else
	echo -e "\e[95m<-------------------------------------------------------------->"
	echo -e "\e[92m[\e[91m~\e[92m] admin.php was not found on \e[91m$1"
	echo -e "\e[95m<-------------------------------------------------------------->"
fi

echo -e "\e[93m<------------------------------------------------------------------------------------------------------------------------------------------------>"
echo -e "\e[92m[\e[93m!\e[92m] \e[94mLooking for /CHANGELOG.txt /INSTALL.mysql.txt /INSTALL.pgsql.txt /INSTALL.txt /UPGRADE.txt /LICENSE.txt on \e[91m$1"
echo -e "\e[93m<------------------------------------------------------------------------------------------------------------------------------------------------>"

if wget $1/CHANGELOG.txt &> /dev/null
then
        rm CHANGELOG.txt
	echo -e "\e[92m<-------------------------------------------------------------->"
        echo -e "\e[92m[\e[94m*\e[92m] CHANGELOG.txt exists on \e[91m$1"
	echo -e "\e[92m[\e[94m*\e[92m] Location: \e[91m$1/CHANGELOG.txt"
else
        echo -e "\e[92m<-------------------------------------------------------------->"
	echo -e "\e[92m[\e[91m~\e[92m] CHANGELOG.txt was not found on \e[91m$1"
fi

if wget $1/INSTALL.mysql.txt &> /dev/null
then
        rm INSTALL.mysql.txt
	echo -e "\e[92m[\e[94m*\e[92m] INSTALL.mysql.txt exists on \e[91m$1"
	echo -e "\e[92m[\e[94m*\e[92m] Location: \e[91m$1/INSTALL.mysql.txt"
else
	echo -e "\e[92m[\e[91m~\e[92m] INSTALL.mysql.txt was not found on \e[91m$1"
fi

if wget $1/INSTALL.psql.txt &> /dev/null
then
	rm INSTALL.psql.txt
	echo -e "\e[92m[\e[94m*\e[92m] INSTALL.psql.txt exists on \e[91m$1"
	echo -e "\e[92m[\e[94m*\e[92m] Location: \e[91m$1/INSTALL.psql.txt"
else
	echo -e "\e[92m[\e[91m~\e[92m] INSTALL.psql.txt was not found on \e[91m$1"
fi

if wget	$1/INSTALL.txt &> /dev/null
then
        rm INSTALL.txt
	echo -e "\e[92m[\e[94m*\e[92m] INSTALL.txt exists on \e[91m$1"
	echo -e "\e[92m[\e[94m*\e[92m] Location: \e[91m$1/INSTALL.txt"
else
	echo -e "\e[92m[\e[91m~\e[92m] INSTALL.txt was not found on \e[91m$1"
fi

if wget $1/UPGRADE.txt &> /dev/null
then
        rm UPGRADE.txt
	echo -e "\e[92m[\e[94m*\e[92m] UPGRADE.txt exists on \e[91m$1"
	echo -e "\e[92m[\e[94m*\e[92m] Location: \e[91m$1/UPGRADE.txt"
else
	echo -e "\e[92m[\e[91m~\e[92m] UPGRADE.txt was not found on \e[91m$1"
fi

if wget $1/LICENSE.txt &> /dev/null
then
        rm LICENSE.txt
	echo -e "\e[92m[\e[94m*\e[92m] LICENSE.txt exists on \e[91m$1"
	echo -e "\e[92m[\e[94m*\e[92m] Location:  \e[91m$1/LICENSE.txt"
	echo -e "\e[92m<-------------------------------------------------------------->"
else
	echo -e "\e[92m[\e[91m~\e[92m] LICENSE.txt was not found on \e[91m$1"
	echo -e "\e[92m<-------------------------------------------------------------->"
fi
