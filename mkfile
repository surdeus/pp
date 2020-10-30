<mkconfig

SRC = spp.c main.c
OBJ = ${SRC:%.c=%.o}
HDR = `{ls *.h}
TGT = $NAME

all :Q: $TGT 
	echo -n
$TGT : $OBJ
	$LD -o $target $LDFLAGS $prereq
%.o :V: %.c
	$CC -c -o $target $CFLAGS $prereq
%.c :Q: $HDR
	touch $target
%.h :Q:
	touch $target
clean :V:
	rm -rf $TGT *.o
install :V: $TGT
	mkdir -p $BIN $MAN/1
	cp -f $TGT $BIN/
	chmod 0755 $BIN/$TGT
	cp man $MAN/1/$TGT
	chmod 0644 $MAN/1/$TGT
uninstall :V:
	rm -f $BIN/$TGT $MAN/1/$NAME
