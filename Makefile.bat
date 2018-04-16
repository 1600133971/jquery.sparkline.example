@echo off
set SRC_DIR=src
set DIST_DIR=dist
set VERSION=2.1.3
set SRC_FILES=^
%SRC_DIR%/header.js ^
%SRC_DIR%/defaults.js ^
%SRC_DIR%/utils.js ^
%SRC_DIR%/simpledraw.js ^
%SRC_DIR%/rangemap.js ^
%SRC_DIR%/interact.js ^
%SRC_DIR%/base.js ^
%SRC_DIR%/chart-line.js ^
%SRC_DIR%/chart-bar.js ^
%SRC_DIR%/chart-tristate.js ^
%SRC_DIR%/chart-discrete.js ^
%SRC_DIR%/chart-bullet.js ^
%SRC_DIR%/chart-pie.js ^
%SRC_DIR%/chart-box.js ^
%SRC_DIR%/vcanvas-base.js ^
%SRC_DIR%/vcanvas-canvas.js ^
%SRC_DIR%/vcanvas-vml.js ^
%SRC_DIR%/footer.js

call cat %SRC_FILES% | sed "s/@VERSION@/%VERSION%/" >%DIST_DIR%/jquery.sparkline.js
call cat minheader.txt | sed "s/@VERSION@/%VERSION%/" >%DIST_DIR%/jquery.sparkline.min.js
call uglifyjs %DIST_DIR%/jquery.sparkline.js  >>%DIST_DIR%/jquery.sparkline.min.js
call gzip -9 < %DIST_DIR%/jquery.sparkline.js >%DIST_DIR%/jquery.sparkline.js.gz
call gzip -9 < %DIST_DIR%/jquery.sparkline.min.js >%DIST_DIR%/jquery.sparkline.min.js.gz
