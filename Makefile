#
# Makefile 8/12/2005
#
# This is (hopefully) a universal makefile for httpry. Currently, it
# has only been tested under Linux.
#

CC	= gcc
CFLAGS	= -Wall -Werror -O3 -funroll-loops -ansi
LIBS	= -lpcap -I/usr/include/pcap -I/usr/local/include/pcap
PROG	= httpry

$(PROG): $(PROG).c
	@echo "--------------------------------------------------"
	@echo "This program has only been fully tested under"
	@echo "Linux and may not compile or run properly under a"
	@echo "different system. I'm always interested in"
	@echo "feedback or help in this area."
	@echo "--------------------------------------------------"
	$(CC) $(CFLAGS) -o $(PROG) $(PROG).c $(LIBS)

all:
	$(PROG)

install: $(PROG)
	@echo "--------------------------------------------------"
	@echo "Installing httpry into /usr/sbin/"
	@echo ""
	@echo "You'll need to manually move the perl scripts"
	@echo "and other tools to a spot that makes sense to you."
	@echo "--------------------------------------------------"
	cp -f $(PROG) /usr/sbin/
	cp -f $(PROG).1 /usr/man/man1/ || cp -f $(PROG).1 /usr/local/man/man1/

uninstall:
	rm -f /usr/sbin/$(PROG)
	rm -f /usr/man/man1/$(PROG).1 || rm -f /usr/local/man/man1/$(PROG).1

clean:
	rm -f $(PROG)
