#1 Use at least 2 variables and 1 positional parameter (special variable) in script, 2 variables set to text files. Positional parameter is $1 (bash pre-defined special variable where user sets value when calling script).
var1=script1.TXT
var2=script2.TXT

if [[ -z $1 ]]; then
    echo "please enter value for postion 1 on terminal"
    exit
fi
echo "Whats your username" 
read username
echo "your Password"
read password
if [[ ${username} == "Ethan" ]] && [[ ${password} == "1234" ]]; then 
    echo "username and password correct. Welcome ${username}."
else
    echo "Uh Oh!"
    exit
fi
echo "script is starting"
mkdir NewThing
cd NewThing
echo "message" > ${var1}
mv ${var1} 
pwd
cd ..
mkdir TXT
echo $1 > ${var2}
mv ${var1} TXT
mv ${var2} TXT
rm  -rf NewThing
cd TXT
echo ${var1}
cat ${var1}
echo ${var2}
cat ${var2}
pwd
ls -l

echo "Script Finished, checek if car 1 and 2 are in text"

echo "code got here"
