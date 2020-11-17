echo "+-----------------------+"
echo "| Script : 120fps.sh    |"
echo "| Author : renaldi69    |"
echo "+-----------------------+"
echo ":: Meminta ijin termux masuk memori internal"
termux-setup-storage
echo ":: Apakah anda ingin "
echo "[a] Slow Motion"
echo "[b] Normal Speed"
read -n1 -p "[a/b] " doit 
case $doit in  
  a|A) cd ~/; mkdir 120fps; cd storage; cd movies; cd 120fps; cp 1.mp4 ~/120fps/1.mp4; cd ~/120fps; ffmpeg -i 1.mp4 -filter:v "minterpolate='fps=120',setpts=4*PTS" hasil.mp4; cp hasil.mp4 ~/storage/movies/120fps/hasil.mp4; cd ~/; rm -rf 120fps ;; 
  b|B) cd ~/; mkdir 120fps; cd storage; cd movies; cd 120fps; cp 1.mp4 ~/120fps/1.mp4; cd ~/120fps; ffmpeg -i 1.mp4 -filter:v minterpolate -r 120 hasil.mp4; cp hasil.mp4 ~/storage/movies/120fps/hasil.mp4; cd rm -rf 120fps ;; 
  *) echo input salah ;; 
esac
