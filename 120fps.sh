apt update && apt upgrade;
apt install ffmpeg;
termux-setup-storage;
mkdir 120fps;
cd storage;
cd movies;
cd 120fps;
cp 1.mp4 ~/120fps/1.mp4;
cd ~/120fps;
ffmpeg -i 1.mp4 -filter:v minterpolate -r 120 hasil.mp4;
cp hasil.mp4 ~/storage/movies/120fps/hasil.mp4;
cd
rm -rf 120fps
echo ": : Selesai :) ";
