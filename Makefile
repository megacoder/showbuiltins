SCRIPTS	=showbuiltins

BINDIR	=/usr/local/bin

all:	${SCRIPTS}

install: ${SCRIPTS}
	install -d ${BINDIR}
	install -c -m 0755 $< ${BINDIR}

uninstall:
	cd ${BINDIR} && ${RM} ${SCRIPTS}
