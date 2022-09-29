if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit 1 
fi

rawDir=$1
dir=$1"/*"

mkdir "${rawDir}/clone"

for FILE in ${dir}; 
   do sips -s formatOptions best ${FILE} --out ${FILE/.jpg/-clone.jpg}
done

mv "${rawDir}/*clone.jpg" ${rawDir}/clone
exit 0
