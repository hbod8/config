FOLDER=$(date +%Y-%m-%d)
mkdir -v ~/Pictures/imported/$FOLDER
#cp -v $1/* ~/Pictures/imported/$FOLDER
#mv -v $1/* ~/Pictures/imported/$FOLDER
mv -v --backup=numbered $1/* ~/Pictures/imported/$FOLDER
