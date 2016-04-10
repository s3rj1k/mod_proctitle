# Makefile for mod_proctitle.c (gmake)
# $Id: Makefile 16 2016-04-10 15:40:22Z s3rj1k $
APXS2=$(shell which apxs2)

default:
	@echo mod_proctitle:
	@echo following options available:
	@echo \"make proctitle\" to compile
	@echo \"make install\" to install

proctitle: mod_proctitle.o
	@echo make done
	@echo type \"make install\" to install mod_proctitle

mod_proctitle.o: mod_proctitle.c
	$(APXS2) -c -o $@ mod_proctitle.c

mod_proctitle.c:

install: mod_proctitle.o
	$(APXS2) -i -n mod_proctitle.so mod_proctitle.la

clean:
	rm -rf *~ *.o *.so *.lo *.la *.slo *.loT .libs/
