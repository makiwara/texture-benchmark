/opt/homebrew/opt/imagemagick\@6/bin/convert \
	$2/$1 \
	-resize 2048x2048\<^ \
	-extent 2048x2048 output/2048-$1

/opt/homebrew/opt/imagemagick\@6/bin/convert \
	$2/$1 \
	-resize 1024x1024\<^ \
	-extent 1024x1024 output/1024-$1

./astc/astcenc-sse4.1 -cH output/1024-$1 output/1024-$1.astc 6x6 -medium
./astc/astcenc-sse4.1 -cH output/2048-$1 output/2048-$1.astc 6x6 -medium
./astc/astcenc-sse4.1 -cH output/1024-$1 output/1024-$1.astc 6x6 -medium
./astc/astcenc-sse4.1 -cH output/2048-$1 output/2048-$1.astc 6x6 -medium

zip output/1024-$1.astc output/1024-$1.astc.zip
zip output/2048-$1.astc output/2048-$1.astc.zip
