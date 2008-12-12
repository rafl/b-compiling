#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

STATIC SV *compiling_sv;

MODULE = B::Compiling  PACKAGE = B::Compiling

void
PL_compiling ()
    PPCODE:
        XPUSHs(compiling_sv);

BOOT:
    compiling_sv = newRV_noinc (newSViv (PTR2IV (&PL_compiling)));
	sv_bless (compiling_sv, gv_stashpv ("B::COP", 0));
