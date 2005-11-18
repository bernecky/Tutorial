#######################################################################################
#
# For installing the tutorial, it has to made sure these have been unpacked completely.
# Therefore, we have to wrap up the standard make mechanism as included by
# the target "standard_all" from Makefile_template.prg by potentially calling
# "make untar" first:
#

all: L1_arrays_as_data/E-01.sac
	$(MAKE) standard_all

L1_arrays_as_data/E-01.sac:
	$(MAKE) untar TARFILENAME=tutorial.tar


#######################################################################################
#
# General Setup:
#
SAC2CFLAGS = -check tb -v1 -O3

ifdef EXCLUDE_ERRORS
SAC2CFLAGS += -DEXCLUDE_ERRORS
endif

#
# Setup for Makefile.standard:
#
# EXCLUDE_FILES               = 
# TARGETDIR                   = .
# LIBTARGETDIR                = .
# INCTARGETDIR                = .
# LIBSRCDIR                   = .
SUBDIRS                     = L1_arrays_as_data L2_shape-invariant_programming
# MAKE_NON_LOCAL_DEPENDENCIES = 

#
# Setup for Makefile.versions
#
# EXCLUDE_FILES_FOR_MT        = 
# MAKE_MT_ALSO                = yes
# VERSDIR                     = .

#
# Setup for Makefile.check:
#
CHECKLOGFILE                = ./CHECKLOG
# CHECKDIR                    = .checkdir
# RT_FLAGS                    =
# INPSDIR                     = 
#
#######################################################################################

include $(SACBASE)/stdlib/Makefiles/Makefile_template.prg
