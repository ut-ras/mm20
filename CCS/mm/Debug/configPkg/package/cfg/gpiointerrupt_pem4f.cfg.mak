# invoke SourceDir generated makefile for gpiointerrupt.pem4f
gpiointerrupt.pem4f: .libraries,gpiointerrupt.pem4f
.libraries,gpiointerrupt.pem4f: package/cfg/gpiointerrupt_pem4f.xdl
	$(MAKE) -f C:\Users\zachr\workspace_v9\mm/src/makefile.libs

clean::
	$(MAKE) -f C:\Users\zachr\workspace_v9\mm/src/makefile.libs clean

