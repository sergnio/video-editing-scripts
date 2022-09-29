if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit 1
fi

dir=$1
ytInfoFile="yt-info.txt"

mkdir "${dir}/audio"
mkdir "${dir}/pr pro"
mkdir "${dir}/video"
mkdir "${dir}/final"
touch "${dir}/${ytInfoFile}"

echo "title" >> ${ytInfoFile} 
echo "[360°] " >> ${ytInfoFile}
echo "" >> ${ytInfoFile}
echo "description" >> ${ytInfoFile}
echo "" >> ${ytInfoFile}
echo "tags" >> ${ytInfoFile}
echo "gio goes,vr,insta360,travel,love,dream,buddies,360,5k video,i love cheese" >> ${ytInfoFile}

chmod -R 775 ${dir}
