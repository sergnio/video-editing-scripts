if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit 1
fi

rawDir=$1
dir=$1"/video/Proxies/*"

for FILE in ${dir}; do
 mv ${FILE} ${FILE/LRV_/}
done


for FILE in ${dir}; do
 mv ${FILE} ${FILE/\.insv/\_Proxy\.insv}
done

for FILE in ${dir}; do
 mv ${FILE} ${FILE/_11_/_00_}
done
