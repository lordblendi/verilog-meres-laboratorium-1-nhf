# Mérés laboratórium 1 nagyházi

Ezt a nagyházit a Mérés laboratórium 1 tantárgyhoz készítettük Demény Fruzsinával a BME-s tanulmányaink során a 2011/2012/1. félévben. A teszteléshez ISE Simulatort használtunk, a bemutatás FPGA-n történt.

## Feladat - Soros adó egység (UART)

Realizálás: FPGA mérőpanelen

A soros adó egység az SW0..6 kapcsolókon binárisan beállított karakterkódot start és stop bittel keretezi, az előírásoktól függően paritásbittel is kiegészíti, és kiadja a panel soros portjának TXD vonalán, az RS232/V24 szabvány előírásainak megfelelően (lásd 3. mérés dokumentáció). (A Start bit 0 értékű, a Stop bit 1 értékű, a megfelelő jelszinteket az FPGA panelbe épített szintkonverter áramkör biztosítja.)

Az egység a BTN1 gomb megnyomásának hatására egyszer kiadja a kódot.

Az egység a BTN2 gomb megnyomásának hatására is kiadja a kódot, de a karaktert ismételten a vonalra adja mindaddig, amíg a gomb nyomva van. Az egyes karakterek adása közti szünet (Stop állapot) kb. 2 karakter hosszúságú.

Az adatátvitel paraméterei:

- A karakterek 7 bitesek.
- A stop bitek száma 2.
- A jelváltási sebesség 4800 Baud.
- Paritásbit van, típusa (páros vagy páratlan) az SW7 kapcsolóval választható.

Kötelező szinkron rendszer tervezése, azaz az összes FF órajel bemenetére az 50 MHz-es rendszerórajelet kell kötni!

## Dokumentáció

[A pdf dokumentáció megtalálható itt.](https://github.com/lordblendi/verilog-meres-laboratorium-1-nhf/blob/master/docs/dokumentacio.pdf)
