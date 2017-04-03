REM Use this File to Compile and Build the Burst.Jar on Windows
REM Published 3-April-17
REM Edit Line 1 to point to your JDK Bin Directory

set path=%path%;D:\Program Files\Java\jdk1.8.0_121\bin
set CP="conf/;classes/;lib/*"
set SP=src/java/

mkdir classes

dir /s /B *.java > sources.txt 
javac -sourcepath %SP% -classpath %CP% -d classes/ @sources.txt

del /f burst.jar 
jar cf burst.jar -C classes . 
rmdir /s /q classes
