in scratchbox

#commented in packaging.mk to check result, so need to do it manually everytime before build
rm -rf fbreader-0.8.17 
make -f makefiles/packaging.mk DIST_DIR=distributions ARCHITECTURE=maemo2 debian 
