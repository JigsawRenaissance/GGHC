##############################################################################
# Product: QSpy utility, Linux, gnu
# Last Updated for Version: 4.1.06
# Date of the Last Update:  Feb 09, 2011
#
#                    Q u a n t u m     L e a P s
#                    ---------------------------
#                    innovating embedded systems
#
# Copyright (C) 2002-2011 Quantum Leaps, LLC. All rights reserved.
#
# This software may be distributed and modified under the terms of the GNU
# General Public License version 2 (GPL) as published by the Free Software
# Foundation and appearing in the file GPL.TXT included in the packaging of
# this file. Please note that GPL Section 2[b] requires that all works based
# on this software must also be made publicly available under the terms of
# the GPL ("Copyleft").
#
# Alternatively, this software may be distributed and modified under the
# terms of Quantum Leaps commercial licenses, which expressly supersede
# the GPL and are specifically designed for licensees interested in
# retaining the proprietary status of their code.
#
# Contact information:
# Quantum Leaps Web site:  http://www.quantum-leaps.com
# e-mail:                  info@quantum-leaps.com
##############################################################################
# general utilities
RM = rm

# The g++ compiler and linker
CC   = g++
LINK = g++

INC_DIR   = ../../include
SRC_DIR   = ../../source
BLDDIR    = .
LINKFLAGS =

CCINC    := -I$(INC_DIR) -I$(BLDDIR)
QP_DEP   := $(INC_DIR)/qs.h
APP_DEP  := \
	$(INC_DIR)/dict.h \
	$(INC_DIR)/getopt.h \
	$(INC_DIR)/hal.h \
	$(INC_DIR)/qspy.h

# rel (default target) .......................................................

BINDIR   = rel

# g++ options
# -c    : compile only
# -O2   : optimize
CCFLAGS  = -O2 -c -Wall -o$@

# debug ......................................................................
ifeq ($(MAKECMDGOALS), dbg)

BINDIR   = dbg

# g++ options
# -c    : compile only
# -g    : source level debugging
CCFLAGS  = -g -c -Wall -o$@

endif
ifeq ($(MAKECMDGOALS), rel_clean)

BINDIR   = rel

endif

#.............................................................................

$(BINDIR)/qspy : \
	$(BINDIR)/dict.o \
	$(BINDIR)/getopt.o \
	$(BINDIR)/main.o \
	$(BINDIR)/qspy.o \
	$(BINDIR)/com.o \
	$(BINDIR)/tcp.o
	$(LINK) $(LINKFLAGS) \
	-o $(BINDIR)/qspy \
	$(BINDIR)/dict.o \
	$(BINDIR)/getopt.o \
	$(BINDIR)/main.o \
	$(BINDIR)/qspy.o \
	$(BINDIR)/com.o \
	$(BINDIR)/tcp.o

$(BINDIR)/dict.o: $(SRC_DIR)/dict.cpp $(APP_DEP) $(QP_DEP)
	$(CC) $(CCFLAGS) $(CCINC) $<

$(BINDIR)/getopt.o: $(SRC_DIR)/getopt.c $(APP_DEP) $(QP_DEP)
	$(CC) $(CCFLAGS) $(CCINC) $<

$(BINDIR)/main.o: $(SRC_DIR)/main.cpp $(APP_DEP) $(QP_DEP)
	$(CC) $(CCFLAGS) $(CCINC) $<

$(BINDIR)/qspy.o: $(SRC_DIR)/qspy.cpp $(APP_DEP) $(QP_DEP)
	$(CC) $(CCFLAGS) $(CCINC) $<

$(BINDIR)/com.o: $(BLDDIR)/com.cpp $(APP_DEP) $(QP_DEP)
	$(CC) $(CCFLAGS) $(CCINC) $<

$(BINDIR)/tcp.o: $(BLDDIR)/tcp.cpp $(APP_DEP) $(QP_DEP)
	$(CC) $(CCFLAGS) $(CCINC) $<


dbg: $(BINDIR)/qspy

rel: $(BINDIR)/qspy


# clean targets...

.PHONY: clean rel_clean spy_clean

rel_clean: clean

dbg_clean: clean

clean:
	-$(RM) $(BINDIR)/*.o
	-$(RM) $(BINDIR)/*.d
	-$(RM) $(BINDIR)/qspy
