Q=@
ifdef V
Q=
endif

TOP := $(shell pwd)

CFLAGS += -I$(TOP)/zlib-1.2.11
LDFLAGS += -I$(TOP)/zlib-1.2.11 -L$(TOP)/zlib-1.2.11

all :
	@echo "Compiling libxlsxwriter ..."
	$(Q)$(MAKE) CFLAGS="$(CFLAGS)" LDFLAGS="$(LDFLAGS)" -C libxlsxwriter

clean :
	$(Q)$(MAKE) clean -C libxlsxwriter

install :
	@echo "Nothing to install"