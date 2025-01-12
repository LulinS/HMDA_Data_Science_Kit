#!/bin/bash
#Note: the data files used are either Snapshot, Final, or Ultimate, whichever is latest
#      Dynamic files are not used
#LAR URL list for data downloading
lar_2021_url="https://s3.amazonaws.com/cfpb-hmda-public/prod/snapshot-data/2021/2021_public_lar_csv.zip"
lar_2020_url="https://s3.amazonaws.com/cfpb-hmda-public/prod/one-year-data/2020/2020_public_lar_one_year_csv.zip"
lar_2019_url="https://s3.amazonaws.com/cfpb-hmda-public/prod/one-year-data/2019/2019_public_lar_one_year_csv.zip"
lar_2018_url="https://s3.amazonaws.com/cfpb-hmda-public/prod/three-year-data/2018/2018_public_lar_three_year_csv.zip"
lar_2017_url="https://s3.amazonaws.com/cfpb-hmda-public/prod/three-year-data/2017/2017_public_lar_three_year_csv.zip"
lar_2016_url="https://www.ffiec.gov/hmdarawdata/LAR/National/2016HMDALAR%20-%20National.zip"
lar_2015_url="https://www.ffiec.gov/hmdarawdata/LAR/National/2015HMDALAR%20-%20National.zip"
lar_2014_url="https://www.ffiec.gov/hmdarawdata/LAR/National/2014HMDALAR%20-%20National.zip"
lar_2013_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/2013/Lars.ultimate.2013.dat.zip"
lar_2012_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/2012/Lars.ultimate.2012.dat.zip"
lar_2011_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/UTL11/Lars.ultimate.2011.dat.zip"
lar_2010_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/UTL10/Lars.ultimate.2010.dat.zip"
lar_2009_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/ULAR09/2009_Ultimate_PUBLIC_LAR.dat.zip"
lar_2008_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/ULAR0708/lars.ultimate.2008.dat.zip"
lar_2007_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/ULAR0708/lars.ultimate.2007.dat.zip"
lar_2006_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/ULAR0506/LARS.ULTIMATE.2006.DAT.zip"
lar_2005_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/ULAR0506/LARS.ULTIMATE.2005.DAT.zip"
lar_2004_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/ULAR04/u2004lar.public.dat.zip"
lar_2003_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U2003.LARS.zip"
lar_2002_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U2002.LARS.zip"
lar_2001_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/ULAR01/HMS.U2001.LARS.PUBLIC.DATA.zip"
lar_2000_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U2000.LARS.zip"
lar_1999_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1999.LARS.zip"
lar_1998_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1998.LARS.zip"
lar_1997_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1997.LARS.zip"
lar_1996_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1996.LARS.zip"
lar_1995_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1995.LARS.zip"
lar_1994_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1994.LARS.zip"
lar_1993_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1993.LARS.zip"
lar_1992_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1992.LARS.zip"
lar_1991_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1991.LARS.zip"
lar_1990_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1990.LARS.zip"


#store download URLs in list for later iteration
declare -a lar_url_list=(${lar_1990_url} ${lar_1991_url} ${lar_1992_url} ${lar_1993_url} ${lar_1994_url} 
	${lar_1995_url} ${lar_1996_url} ${lar_1997_url} ${lar_1998_url} ${lar_1999_url} ${lar_2000_url} ${lar_2001_url} ${lar_2002_url} 
	${lar_2003_url} ${lar_2004_url} ${lar_2005_url} ${lar_2006_url} ${lar_2007_url} ${lar_2008_url} ${lar_2009_url} ${lar_2010_url}
	${lar_2011_url} ${lar_2012_url} ${lar_2013_url} ${lar_2014_url} ${lar_2015_url} ${lar_2016_url} ${lar_2017_url}
	${lar_2018_url} ${lar_2019_url} ${lar_2020_url} ${lar_2021_url})

#TS URL list for data downloading
ts_2021_url="https://s3.amazonaws.com/cfpb-hmda-public/prod/snapshot-data/2021/2021_public_ts_csv.zip"
ts_2020_url="https://s3.amazonaws.com/cfpb-hmda-public/prod/one-year-data/2020/2020_public_ts_one_year_csv.zip"
ts_2019_url="https://s3.amazonaws.com/cfpb-hmda-public/prod/one-year-data/2019/2019_public_ts_one_year_csv.zip"
ts_2018_url="https://s3.amazonaws.com/cfpb-hmda-public/prod/three-year-data/2018/2018_public_ts_three_year_csv.zip"
ts_2017_url="https://s3.amazonaws.com/cfpb-hmda-public/prod/three-year-data/2017/2017_public_ts_three_year_csv.zip"
ts_2016_url="https://www.ffiec.gov/hmdarawdata/OTHER/2016HMDAInstitutionRecords.zip"
ts_2015_url="https://www.ffiec.gov/hmdarawdata/OTHER/2015HMDAInstitutionRecords.zip"
ts_2014_url="https://www.ffiec.gov/hmdarawdata/OTHER/2014HMDAInstitutionRecords.zip"
ts_2013_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/2013/TS.ultimate.2013.dat"
ts_2012_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/2012/TS.ultimate.2012.dat"
ts_2011_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/UTL11/TS.ultimate.2011.dat"
ts_2010_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/UTL10/TS.ultimate.2010.dat"
ts_2009_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/UTS09/2009_Ultimate_PUBLIC_TS.dat"
ts_2008_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/UTS0708/ts.ultimate.2008.dat"
ts_2007_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/UTS0708/ts.ultimate.2007.dat"
ts_2006_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/UTS0506/TS.ULTIMATE.2006.DAT"
ts_2005_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/UTS0506/TS.ULTIMATE.2005.DAT"
ts_2004_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/UTS04/u2004ts.public.dat"
ts_2003_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U2003.TS"
ts_2002_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U2002.TS"
ts_2001_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U2001.TS"
ts_2000_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U2000.TS"
ts_1999_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1999.TS"
ts_1998_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1998.TS"
ts_1997_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1997.TS"
ts_1996_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1996.TS"
ts_1995_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1995.TS"
ts_1994_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1994.TS"
ts_1993_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1993.TS"
ts_1992_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1992.TS"
ts_1991_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1991.TS"
ts_1990_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1990.TS"

#store download URLs in list for later iteration
declare -a ts_url_list=(${ts_1990_url} ${ts_1991_url} ${ts_1992_url} ${ts_1993_url} ${ts_1994_url} 
	${ts_1995_url} ${ts_1996_url} ${ts_1997_url} ${ts_1998_url} ${ts_1999_url} ${ts_2000_url} ${ts_2001_url} ${ts_2002_url} 
	${ts_2003_url} ${ts_2004_url} ${ts_2005_url} ${ts_2006_url} ${ts_2007_url} ${ts_2008_url} ${ts_2009_url} ${ts_2010_url}
	${ts_2011_url} ${ts_2012_url} ${ts_2013_url} ${ts_2014_url} ${ts_2015_url} ${ts_2016_url} ${ts_2017_url}
	${ts_2018_url} ${ts_2019_url} ${ts_2020_url} ${ts_2021_url})

#Panel URL list for data downloading
panel_2021_url="https://s3.amazonaws.com/cfpb-hmda-public/prod/snapshot-data/2021/2021_public_panel_csv.zip"
panel_2020_url="https://s3.amazonaws.com/cfpb-hmda-public/prod/one-year-data/2020/2020_public_panel_one_year_csv.zip"
panel_2019_url="https://s3.amazonaws.com/cfpb-hmda-public/prod/one-year-data/2019/2019_public_panel_one_year_csv.zip"
panel_2018_url="https://s3.amazonaws.com/cfpb-hmda-public/prod/three-year-data/2018/2018_public_panel_three_year_csv.zip"
panel_2017_url="https://s3.amazonaws.com/cfpb-hmda-public/prod/three-year-data/2017/2017_public_panel_three_year_csv.zip"
panel_2016_url="https://www.ffiec.gov/hmdarawdata/OTHER/2016HMDAReporterPanel.zip"
panel_2015_url="https://www.ffiec.gov/hmdarawdata/OTHER/2015HMDAReporterPanel.zip"
panel_2014_url="https://www.ffiec.gov/hmdarawdata/OTHER/2014HMDAReporterPanel.zip"
panel_2013_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/2013/Panel.ultimate.2013.dat"
panel_2012_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/2012/Panel.ultimate.2012.dat"
panel_2011_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/UPN11/Panel.ultimate.2011.dat"
panel_2010_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/UPN10/Panel.ultimate.2010.dat"
panel_2009_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/UPN09/2009_Ultimate_PUBLIC_Panel.dat"
panel_2008_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/UPN0708/panel.u.2008.dat"
panel_2007_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/UPN0708/panel.u.2007.dat"
panel_2006_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/UPN0506/PANEL.U.2006.DAT"
panel_2005_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/UPN0506/PANEL.U.2005.DAT"
panel_2004_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/UPN04/u2004pan.public.dat"
panel_2003_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U2003.PANEL"
panel_2002_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U2002.PANEL"
panel_2001_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U2001.PANEL"
panel_2000_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U2000.PANEL"
panel_1999_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1999.PANEL"
panel_1998_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/UPN98/panel.ultimate.1998.dat"
panel_1997_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1997.PANEL"
panel_1996_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1996.PANEL"
panel_1995_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1995.PANEL"
panel_1994_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1994.PANEL"
panel_1993_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1993.PANEL"
panel_1992_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1992.PANEL"
panel_1991_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1991.PANEL"
panel_1990_url="https://s3.amazonaws.com/NARAprodstorage/lz/electronic-records/rg-082/hmda/HMS.U1990.PANEL"

#store download URLs in list for later iteration
declare -a panel_url_list=(${panel_1990_url} ${panel_1991_url} ${panel_1992_url} ${panel_1993_url} ${panel_1994_url} ${panel_1995_url}
	${panel_1996_url} ${panel_1997_url} ${panel_1998_url} ${panel_1999_url} ${panel_2000_url} ${panel_2001_url} ${panel_2002_url} ${panel_2003_url} ${panel_2004_url} ${panel_2005_url} ${panel_2006_url} ${panel_2007_url} ${panel_2008_url} ${panel_2009_url}
	${panel_2010_url} ${panel_2011_url} ${panel_2012_url} ${panel_2013_url} ${panel_2014_url} ${panel_2015_url} 
	${panel_2016_url} ${panel_2017_url} ${panel_2018_url} ${panel_2019_url} ${panel_2020_url} ${panel_2021_url})

#declaration of variables used in later logic
FORCE="false" #set force download (overwrite) to false
TS="false" #set download of TS files to false
LAR="false" #set download of LAR files to false
PANEL="false" #set download of Panel files to false
NC="-nc" #part of a wget call construction for omitting downloads of files already present, can be overridden by -F
SPECIFIC_FILE=""

#option setting: declare variables based on option flags passed
#this section defines what options are available in this script and provides basic instructions for use

while getopts "asptlFh" OPTION; do
        case ${OPTION} in

        		s) 		SPECIFIC_FILE=${2}
						;;
				p)		PANEL="true"
						;;
				t)		TS="true"
						;;
				l)		LAR="true"
						;;

        		F)		FORCE="true"
						NC=""
						;;

				a)
						echo "Panel Files:"
						echo "panel_2021"
						echo "panel_2020"
						echo "panel_2019"
						echo "panel_2018"
						echo "panel_2017"
						echo "panel_2016"
						echo "panel_2015"
						echo "panel_2014"
						echo "panel_2013"
						echo "panel_2012"
						echo "panel_2011"
						echo "panel_2010"
						echo "panel_2009"
						echo "panel_2008"
						echo "panel_2007"
						echo "panel_2006"
						echo "panel_2005"
						echo "panel_2004"
						echo "panel_2003"
						echo "panel_2002"
						echo "panel_2001"
						echo "panel_2000"
						echo "panel_1999"
						echo "panel_1998"
						echo "panel_1997"
						echo "panel_1996"
						echo "panel_1995"
						echo "panel_1994"
						echo "panel_1993"
						echo "panel_1992"
						echo "panel_1991"
						echo "panel_1990"
						echo ""
						echo "Transmittal Sheet Files:"
						echo "ts_2021"
						echo "ts_2020"
						echo "ts_2019"
						echo "ts_2018"
						echo "ts_2017"
						echo "ts_2016"
						echo "ts_2015"
						echo "ts_2014"
						echo "ts_2013"
						echo "ts_2012"
						echo "ts_2011"
						echo "ts_2010"
						echo "ts_2009"
						echo "ts_2008"
						echo "ts_2007"
						echo "ts_2006"
						echo "ts_2005"
						echo "ts_2004"
						echo "ts_2003"
						echo "ts_2002"
						echo "ts_2001"
						echo "ts_2000"
						echo "ts_1999"
						echo "ts_1998"
						echo "ts_1997"
						echo "ts_1996"
						echo "ts_1995"
						echo "ts_1994"
						echo "ts_1993"
						echo "ts_1992"
						echo "ts_1991"
						echo "ts_1990"
						echo ""
						echo "LAR Files:"
						echo "lar_2021"
						echo "lar_2020"
						echo "lar_2019"
						echo "lar_2018"
						echo "lar_2017"
						echo "lar_2016"
						echo "lar_2015"
						echo "lar_2014"
						echo "lar_2013"
						echo "lar_2012"
						echo "lar_2011"
						echo "lar_2010"
						echo "lar_2009"
						echo "lar_2008"
						echo "lar_2007"
						echo "lar_2006"
						echo "lar_2005"
						echo "lar_2004"
						echo "lar_2003"
						echo "lar_2002"
						echo "lar_2001"
						echo "lar_2000"
						echo "lar_1999"
						echo "lar_1998"
						echo "lar_1997"
						echo "lar_1996"
						echo "lar_1995"
						echo "lar_1994"
						echo "lar_1993"
						echo "lar_1992"
						echo "lar_1991"
						echo "lar_1990"
						exit 0
						;;
                h)
                        echo "Usage:"
                        echo "download_hmda.sh -h "
                        echo "download_hmda.sh -F "
                        echo "download_hmda.sh -s "
                        echo "download_hmda.sh -p "
                        echo "download_hmda.sh -t "
                        echo "download_hmda.sh -l "
                        echo "Options may be combined, use the following format:"
                        echo "download_options.sh -Fpt"
                        echo ""
                        echo " "
                        echo "   -F 	force download files and overwrite existing"
                        echo "   -t 	download all Transittal Sheet files 1990 through 2021"
                        echo "   -p 	download all Panel files 1990 through 2021"
                        echo "   -l 	download all LAR files 1990 through 2021"
                        echo "   -s     download specific file using name format:"
                        echo " 	  p for panel, t for transmittal sheet and l for LAR"
                        echo " 	  and a four digit number indicating the desired year, such as 2017."
                        echo " 	  example: panel_2017 for the 2017 panel file, lar_2017 for the 2017 LAR file"
                        echo "    or ts_2017 for the 2017 Transmittal Sheet file"
                        echo "   -a 	show all files available for download"
                        echo "   -h     help (this output)"
                        exit 0
                        ;;

        esac
done

#create directories to store downloaded files
echo "making data storage directories for LAR, TS, and Panel"
mkdir data
mkdir data/lar
mkdir data/ts
mkdir data/panel

#no option behavior: attempt no clobber (-nc) download of each file for LAR/TS/Panel
if [ $# -eq 0 ]; then
        echo "No options selected, running full script"
        echo "(run $0 -h for help)"
        echo "(run $0 -a to show a list of files available for download"
        echo ""

    #iterate over TS URL array
    YEAR=1990 #set start year to 1990
	for i in "${ts_url_list[@]}"
	do #wget each URL in the TS array
	   #specify file type for filename by year
	   if [ $YEAR -gt 2013 ]; then
			FILE_TYPE=".zip"
		else
			FILE_TYPE=".dat"
	   fi
	   TS_FILENAME="ts_${YEAR}${FILE_TYPE}" #set TS filename based on year
	   YEAR=$((YEAR+1))
	   if [ "${FORCE}" = "true" ]; then
	   		rm data/ts/${TS_FILENAME}
	   fi
	   wget -q -nc -c -t 10 --show-progress -O data/ts/${TS_FILENAME} "${i}" #write file to disk
	done #end loop

	#iterate over Panel URL array
	YEAR=1990 #set start year to 1990
	for i in "${panel_url_list[@]}"
	do #wget each URL in Panel array
		#specify file type for filename by year
		if [ $YEAR -gt 2013 ]; then
			FILE_TYPE=".zip"
		else
			FILE_TYPE=".dat"
		fi
		PANEL_FILENAME="panel_${YEAR}${FILE_TYPE}"
		YEAR=$((YEAR+1))
		if [ "${FORCE}" = "true" ]; then
			rm data/panel/${PANEL_FILENAME}
		fi
		wget -q -nc -c -t 10 --show-progress -O data/panel/${PANEL_FILENAME} "${i}"
	done

	#iterate over LAR URL array
	YEAR=1990 #set start year to 1990
	for i in "${lar_url_list[@]}"
	do #wget each URL in LAR array
		#echo
		#echo
		LAR_FILENAME="lar_${YEAR}.zip" #set LAR filename based on year
		YEAR=$((YEAR+1))
		if [ "${FORCE}" = "true" ]; then
			rm data/lar/${LAR_FILENAME}
		fi
		wget -q -nc -c -t 10 --show-progress -O  data/lar/${LAR_FILENAME} "${i}"
	done
	exit 0
fi

#option -p or -t or -l behavior: attempt no clobber download of each file for LAR/TS/Panel
#if -F is also passed force download of each file type passed
if [ "${LAR}" = "true" ]; then
	if [ "${NC}" = "-nc" ]; then
		echo "downloading LAR files if not present"
	elif [ "${NC}" = "" ]; then
		echo "Force downloading all LAR files"
	fi
	#iterate over LAR URL array
	YEAR=1990 #set start year to 1990
	for i in "${lar_url_list[@]}"
	do #wget each URL in LAR array
		#echo
		#echo
		LAR_FILENAME="lar_${YEAR}.zip" #set LAR filename based on year
		YEAR=$((YEAR+1))
		if [ "${FORCE}" = "true" ]; then
			rm data/lar/${LAR_FILENAME}
		fi
		wget -q ${NC} -c -t 10 --show-progress -O  data/lar/${LAR_FILENAME} "${i}"
	done
fi

#option -p or -t or -l behavior: attempt no clobber download of each file for LAR/TS/Panel
#if -F is also passed force download of each file type passed
if [ "$TS" = "true" ]; then
	if [ "${NC}" = "-nc" ]; then
		echo "downloading TS files if not present"
	elif [ "${NC}" = "" ]; then
		echo "Force downloading all TS files"
	fi

	    #iterate over TS URL array
    YEAR=1990 #set start year to 1990
	for i in "${ts_url_list[@]}"
	do #wget each URL in the TS array
	   #specify file type for filename by year
	   if [ $YEAR -gt 2013 ]; then
			FILE_TYPE=".zip"
		else
			FILE_TYPE=".dat"
	   fi
	   TS_FILENAME="ts_${YEAR}${FILE_TYPE}" #set TS filename based on year
	   YEAR=$((YEAR+1))
	   if [ "${FORCE}" = "true" ]; then
	   		rm data/ts/${TS_FILENAME}
	   fi
	   wget -q ${NC} -c -t 10 --show-progress -O data/ts/${TS_FILENAME} "${i}" #write file to disk
	done #end loop
fi

#option -p or -t or -l behavior: attempt no clobber download of each file for LAR/TS/Panel
#if -F is also passed force download of each file type passed
if [ "${PANEL}" = "true" ]; then
	if [ "${NC}" = "-nc" ]; then
		echo "downloading Panel files if not present"
	elif [ "${NC}" = "" ]; then
		echo "Force downloading Panel files"
	fi
		#iterate over Panel URL array
	YEAR=1990 #set start year to 1990
	for i in "${panel_url_list[@]}"
	do #wget each URL in Panel array
		#specify file type for filename by year
		if [ $YEAR -gt 2013 ]; then
			FILE_TYPE=".zip"
		else
			FILE_TYPE=".dat"
		fi
		PANEL_FILENAME="panel_${YEAR}${FILE_TYPE}"
		YEAR=$((YEAR+1))
		if [ "${FORCE}" = "true" ]; then
			rm data/panel/${PANEL_FILENAME}
		fi
		wget -q ${NC} -c -t 10 --show-progress -O data/panel/${PANEL_FILENAME} "${i}"
	done
fi

#option -s behavoir: download specific named file, requires second parameter as file key
#if -F is also passed force download of file
#check if file in list of available files to download
if [ "$SPECIFIC_FILE" != "" ]; then
	if [ "${NC}" = "-nc" ]; then
		echo "downloading ${SPECIFIC_FILE} if not exists"
	elif [ "${NC}" = "" ]; then
		echo "Force downloading ${SPECIFIC_FILE}"
	fi

	#set file type .DAT, .TXT, .ZIP for the $SPECIFC_FILE variable
	#set $URL for specific file by checking arrays by dataset, use year - 1990 for index reference

	NO_EXT="${SPECIFIC_FILE%.*}"
	YEAR=${NO_EXT:(-4)}
	URL_INDEX="$((YEAR - 1990))"

	if [ "${SPECIFIC_FILE:0:1}" = "p" ]; then
		URL=${panel_url_list[$URL_INDEX]}
		FOLDER="panel"
		if [ $YEAR -gt 2013 ]; then
			FILE_EXT=".zip"
		else
			FILE_EXT=".dat"
		fi

	elif [ "${SPECIFIC_FILE:0:1}" = "t" ]; then
		URL=${ts_url_list[$URL_INDEX]}
		FOLDER="ts"
		if [ $YEAR -gt 2013 ]; then
			FILE_EXT=".zip"
		else
			FILE_EXT=".dat"
		fi

	elif [ "${SPECIFIC_FILE:0:1}" = "l" ]; then
		URL=${lar_url_list[URL_INDEX]}
		FOLDER="lar"
		FILE_EXT=".zip"
		
	fi

	#remove specific file if force flag was passed
	if [ "${FORCE}" = "true" ]; then
		rm data/$FOLDER/"${SPECIFIC_FILE}${FILE_EXT}"
	fi
	#download the specific file using passed force parameter
	wget -q ${NC} -c -t 10 --show-progress -O data/$FOLDER/"${SPECIFIC_FILE}${FILE_EXT}" "${URL}"
fi
