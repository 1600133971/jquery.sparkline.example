cat src/header.js src/defaults.js src/utils.js src/simpledraw.js src/rangemap.js src/interact.js src/base.js src/chart-line.js src/chart-bar.js src/chart-tristate.js src/chart-discrete.js src/chart-bullet.js src/chart-pie.js src/chart-box.js src/vcanvas-base.js src/vcanvas-canvas.js src/vcanvas-vml.js src/footer.js | sed "s/@VERSION@/2.13/" >dist/jquery.sparkline.js

cat minheader.txt | sed "s/@VERSION@/2.13/" >dist/jquery.sparkline.min.js

uglifyjs dist/jquery.sparkline.js >>dist/jquery.sparkline.min.js

gzip -9 < dist/jquery.sparkline.js >dist/jquery.sparkline.js.gz

gzip -9 < dist/jquery.sparkline.min.js >dist/jquery.sparkline.min.js.gz