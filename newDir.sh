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
mkdir "${dir}/video/Proxies"
mkdir "${dir}/final"

cat <<EOT >> "${dir}/${ytInfoFile}" 
title
[360°]

description

tags
gio goes,vr,insta360,travel,love,dream,buddies,360,5k video,i love cheese
EOT

chmod -R 775 ${dir}
