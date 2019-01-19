#!/bin/bash

#Das Script fuehrt mehrere txt Dateien aus einem Ordner in eine gemeinsame 
#Datei zusammen. Alte Daten werden behalten, neue hinzugefuegt.

#definition vom Monat
#date=$( date +"%b")

echo "type the month which should be used followed by [ENTER]:"

#usereingabe 
read date

#Defintion vom Jahr
year=$( date +"%g")

#Erstellt Unterordner
mkdir --parents $date$year

#Zusammenfuehrung aller txt Dateien in eine Datei im Unterordner
cat *.txt >> $PWD/$date$year/$date$year.txt

echo "$date$year.txt in $PWD/$date$year created or updated"
