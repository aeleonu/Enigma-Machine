#
# A Makefile for GTK tests
#
######

NPM=npm

######

PATSHOMEQ="$(PATSHOME)"
PATSCONTRIBQ="$(PATSCONTRIB)"

######

PATSCC=$(PATSHOMEQ)/bin/patscc
GTKFLAGS=`pkg-config gtk+-2.0 --cflags --libs`

######

all:: \
TextProcessing
TextProcessing: \
Enigma.dats \
TextProcessing.dats \
TextProcessing_toplevel.dats ; \
  $(PATSCC) -DATS_MEMALLOC_LIBC -I$(PATSCONTRIBQ)/contrib -o $@ $^ $(GTKFLAGS)
cleanall:: ; $(RMF) TextProcessing

######

RMF=rm -f

######
#
npm-install:: ; \
$(NPM) i effectivats-divideconquer
#
######
#

clean:: ; $(RMF) *~
clean:: ; $(RMF) *_?ats.o
clean:: ; $(RMF) *_?ats.c

######

cleanall:: clean

###### end of [Makefile] ######

