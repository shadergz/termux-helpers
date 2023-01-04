pkg install clinfo\
	clpeak\
	ocl-icd\
	opencl-clhpp\
	opencl-headers\
	opencl-vendor-driver

clinfo

echo "\nPatcher: It's working? (Your GPU must appear under the output program result above"
echo -n "Type y or n (default: y): "

read response
if [ ${response} = 'n' ]; then
	./patches/vendor-replace-ocl.sh
	clinfo; clpeak
fi
