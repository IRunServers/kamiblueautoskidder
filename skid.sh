#! /bin/sh

read -p "Name your skid." NAME
read -p "Discord RPC ID?" DISCORD

git clone https://github.com/kami-blue/client.git KAMIBLUE

cd KAMIBLUE || exit
sed -i "s/KAMI Blue/$NAME/g" src/main/resources/mcmod.info
sed -i "s/KAMI Blue/$NAME/g" src/main/java/me/zeroeightsix/kami/KamiMod.java
sed -i "s/638403216278683661/$DISCORD/g" src/main/java/me/zeroeightsix/kami/KamiMod.java

./gradlew build

echo "KAMI Blue Successfully Skidded!"
