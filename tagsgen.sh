#!/bin/sh

#Created by Zhuang Jianmin
filelist="cscope.files"

if [ ! -f ${filelist} ]; then
	echo generate ${filelist}
	#need to delete the line of "./zlibrary/ui/src" in generated cscope.files
	find . -path "./zlibrary/ui/src" -prune -o -type f -name "*.h" -o -name "*.hpp" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" > ${filelist}

	find "zlibrary/ui/src/gtk/time" -type f -name "*.h" -o -name "*.hpp" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" >> ${filelist}
	find "zlibrary/ui/src/gtk/image" -type f -name "*.h" -o -name "*.hpp" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" >> ${filelist}
	find "zlibrary/ui/src/gtk/util" -type f -name "*.h" -o -name "*.hpp" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" >> ${filelist}
	find "zlibrary/ui/src/gtk/filesystem" -type f -name "*.h" -o -name "*.hpp" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" >> ${filelist}
	find "zlibrary/ui/src/gtk/pixbuf" -type f -name "*.h" -o -name "*.hpp" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" >> ${filelist}
	find "zlibrary/ui/src/maemo/dialogs" -type f -name "*.h" -o -name "*.hpp" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" >> ${filelist}
	find "zlibrary/ui/src/maemo/optionView" -type f -name "*.h" -o -name "*.hpp" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" >> ${filelist}
	find "zlibrary/ui/src/maemo/view" -type f -name "*.h" -o -name "*.hpp" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" >> ${filelist}
	find "zlibrary/ui/src/maemo/application" -type f -name "*.h" -o -name "*.hpp" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" >> ${filelist}
	find "zlibrary/ui/src/maemo/library" -type f -name "*.h" -o -name "*.hpp" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" >> ${filelist}
	find "zlibrary/ui/src/maemo/message" -type f -name "*.h" -o -name "*.hpp" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" >> ${filelist}

else
	echo $filelist exist!
fi

echo generate cscope files
cscope -bkq -i cscope.files

echo generate ctag files
ctags -R
