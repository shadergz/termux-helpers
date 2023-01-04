

PATCHES_DIR=./patches

execute_option()
{
	case "$1" in "install-opencl")\
		./install-opencl.sh;;
	"remove-opencl")\
		pkg remove ocl-icd opencl-clhpp clinfo clpeak\
			opencl-vendor-driver;;
	esac
}

execute_option $1

