# this is for file automation, at least in terms of checking the file names
echo "Enter the first fixed string":
read -r -p "string:" string1
# Check if String1 is null or empty
if [ -z "string1" ]; then
    echo "string1 is empty"
    exit
fi
str2List=('stats' 'stat' 'data' 'anaylsis' 'code')
extList=('py' 'ipynb' 'xlsx' 'csv')
path="./"
declare -i tCount=0
declare -i neCount=0
dot='.'
declare -i x  
declare -i y 
for x in {0..4}; do  
    for y in 0 1 2 3; do
        #construct file name
        string2="${str2List[$x]}"
        string3="${extList[$y]}"
        filename="$path$string1$string2$dot$string3"
        ((tcount++))
        if [ -f "fileName" ]; then
            echo "$fileName Found"
        else 
            echo "files:$fileName does not exist"
            ((neCount++))

        fi
    done
done
echo "Done: total file cnt = $tCount & count of N-exist files = $neCount"
exit    