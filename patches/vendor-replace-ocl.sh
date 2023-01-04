

LIBOCL_SRC=/data/data/com.termux/files/usr/opt/vendor/lib/libOpenCL.so

LIBOCL_DEST=/data/data/com.termux/files/usr/lib/libOpenCL.so

if [ ! -f ${LIBOCL_SRC} ]; then
	echo "Patcher: package 'opencl-vendor-driver' not installed, install"\
		"with 'pkg install PACKAGE_NAME'"
	return
fi

rm -f ${LIBOCL_DEST}*
cp ${LIBOCL_SRC} ${LIBOCL_DEST}


