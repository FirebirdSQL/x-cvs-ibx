PASFILES = IB.pas IBBatchMove.pas IBBlob.pas IBCustomDataSet.pas\
   IBDataBase.pas IBDatabaseInfo.pas IBDBReg.pas IBErrorCodes.pas IBEvents.pas\
   IBExternals.pas IBHeader.pas IBInstall.pas IBInstallHeader.pas IBIntf.pas\
   IBQuery.pas IBServices.pas IBSQL.pas IBSQLMonitor.pas IBStoredProc.pas\
   IBTable.pas IBUpdateSQL.pas IBUtils.pas\
   IBDatabaseEdit.pas IBTransactionEdit.pas IBUpdateSQLEditor.pas IBEventsEditor.pas

ALLPASFILE = $(PASFILES)


DPKFILES =		vclib$(DPKVER).dpk dclib$(DPKVER).dpk 

PASDCUFILES =		$(PASFILES:.pas=.dcu)
OBJFILES =		$(ALLPASFILES:.pas=.obj)


DCRRCFILES = ibreg.rc

RESFILES =		$(RCRESFILES) $(DCRRCFILES:.rc=.dcr) $(DPKRCPFILES:.rcp=.rc) $(DPKRCPFILES:.rcp=.res)

EXCLUDES =		dclib$(DPKVER);vclib$(DPKVER)

DPKFILES =		vclib$(DPKVER).dpk dclib$(DPKVER).dpk 

DCCADDLSWTS =		$(DCCADDLSWTS) -DIB6_ONLY -DIB5_ONLY -U$(APPLIB);$(DB);$(APPDMDESIGN);$(DIAGRAMS);$(APPDESIGN);$(BIN)

default:		res allpas packages 

packages:		$(DPKPACKAGEFILES)
execs:			$(DPREXECFILES)

res:			$(RESFILES)

integration:
	$(MAKE) -f $(MAKEFILENAME) $(MAKESWTS) $(MAKEDEFS) -DMAKEDEFS="$(MAKEDEFS)" -DTARGET=integration debug move_debug default save_ndebug

move_debug:		$(DPKFILES:.dpk=.move_debug_sku)
	$(MOVE_DEBUG_SKU)
	$(DEL) allpas.*

save_ndebug:		$(DPKFILES:.dpk=.save_ndebug)
	$(SAVE_NDEBUG)

allpas: 		allpas.dcu
	$(DEL) allpas.dcu

allpas.pas:		$(PASFILES)
	$(VCLGEN) $< $(IBDAC) $(EXCLUDES);$*

strip_source: makedir
	$(PP) $(SRCDEFS) -O$(SRCIBDAC) *.pas

slib: allpas.pas
  $(DCC) -m $(DCCSWTS) -N0$(SLIB) -$$W+,D+,L+,O- -vn -u$(UNITS);$(VCL);$(APPLIB);$(DB);$(APPDMDESIGN);$(DIAGRAMS) allpas.pas

ibreg.dcr: ibreg.rc

$(DPKFILES:.dpk=):
	$(MAKE) -f $(MAKEFILENAME) $(MAKESWTS) $(MAKEDEFS) -DMAKEDEFS="$(MAKEDEFS)" -DTARGET=$(TARGET) $<.package

makedir:
	$(MD) $(SKU) $(DEBUGDIR).$(SKU) 
	$(MD) $(SRCIBDAC)

debug:
	$(MAKE) -f $(MAKEFILENAME) $(MAKESWTS) -DDEBUG $(MAKEDEFS) -DMAKEDEFS="$(MAKEDEFS)" -DDCCADDLSWTS="-DDEVELOPERS" -DTARGET=debug default

clean:			$(DPKCLEANFILES) 
	$(DEFAULT_CLEAN)
        $(DEL) $(SRCIBDAC)\*.pas
