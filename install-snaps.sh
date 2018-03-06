SNAPS=$(cat snap.list)
for SNAP in $SNAPS
do
    snap install $SNAP
done
