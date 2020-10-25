# invoke SourceDir generated makefile for gpiointerrupt.pem4f
gpiointerrupt.pem4f: .libraries,gpiointerrupt.pem4f
.libraries,gpiointerrupt.pem4f: package/cfg/gpiointerrupt_pem4f.xdl
	$(MAKE) -f C:\Users\Allen\Documents\GitHub\mm20\CCS\mm/src/makefile.libs

clean::
	$(MAKE) -f C:\Users\Allen\Documents\GitHub\mm20\CCS\mm/src/makefile.libs clean

