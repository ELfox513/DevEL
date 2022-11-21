package com.android.p030dx.dex.file;

import com.android.p030dx.dex.code.LocalList;
import com.android.p030dx.dex.code.PositionList;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import p015b2.C0435e;
import p015b2.InterfaceC0428a;
import p111l1.C4557d;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p218x1.C7238z;
import p226y1.C7400a;
import p226y1.C7401b;
import p226y1.C7402c;
/* renamed from: com.android.dx.dex.file.DebugInfoEncoder */
/* loaded from: classes.dex */
public final class DebugInfoEncoder {
    private static final boolean DEBUG = false;
    private InterfaceC0428a annotateTo;
    private final int codeSize;
    private PrintWriter debugPrint;
    private final C7400a desc;
    private final DexFile file;
    private final boolean isStatic;
    private final LocalList.Entry[] lastEntryForReg;
    private final LocalList locals;
    private final PositionList positions;
    private String prefix;
    private final int regSize;
    private boolean shouldConsume;
    private int address = 0;
    private int line = 1;
    private final C0435e output = new C0435e();

    private static int computeOpcode(int i, int i2) {
        if (i < -4 || i > 10) {
            throw new RuntimeException("Parameter out of range");
        }
        return (i - (-4)) + (i2 * 15) + 10;
    }

    private void annotate(int i, String str) {
        if (this.prefix != null) {
            str = this.prefix + str;
        }
        InterfaceC0428a interfaceC0428a = this.annotateTo;
        if (interfaceC0428a != null) {
            if (!this.shouldConsume) {
                i = 0;
            }
            interfaceC0428a.mo26502d(i, str);
        }
        PrintWriter printWriter = this.debugPrint;
        if (printWriter != null) {
            printWriter.println(str);
        }
    }

    private ArrayList<PositionList.Entry> buildSortedPositions() {
        int size;
        PositionList positionList = this.positions;
        if (positionList == null) {
            size = 0;
        } else {
            size = positionList.size();
        }
        ArrayList<PositionList.Entry> arrayList = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(this.positions.get(i));
        }
        Collections.sort(arrayList, new Comparator<PositionList.Entry>() { // from class: com.android.dx.dex.file.DebugInfoEncoder.1
            @Override // java.util.Comparator
            public boolean equals(Object obj) {
                return obj == this;
            }

            @Override // java.util.Comparator
            public int compare(PositionList.Entry entry, PositionList.Entry entry2) {
                return entry.getAddress() - entry2.getAddress();
            }
        });
        return arrayList;
    }

    private void emitAdvanceLine(int i) {
        int mo26446a = this.output.mo26446a();
        this.output.writeByte(2);
        this.output.m26490u(i);
        this.line += i;
        if (this.annotateTo != null || this.debugPrint != null) {
            annotate(this.output.mo26446a() - mo26446a, String.format("line = %d", Integer.valueOf(this.line)));
        }
    }

    private void emitAdvancePc(int i) {
        int mo26446a = this.output.mo26446a();
        this.output.writeByte(1);
        this.output.mo26443h(i);
        this.address += i;
        if (this.annotateTo != null || this.debugPrint != null) {
            annotate(this.output.mo26446a() - mo26446a, String.format("%04x: advance pc", Integer.valueOf(this.address)));
        }
    }

    private void emitEndSequence() {
        this.output.writeByte(0);
        if (this.annotateTo != null || this.debugPrint != null) {
            annotate(1, "end sequence");
        }
    }

    private void emitHeader(ArrayList<PositionList.Entry> arrayList, ArrayList<LocalList.Entry> arrayList2) {
        boolean z;
        LocalList.Entry[] entryArr;
        LocalList.Entry entry;
        String str;
        if (this.annotateTo == null && this.debugPrint == null) {
            z = false;
        } else {
            z = true;
        }
        int mo26446a = this.output.mo26446a();
        if (arrayList.size() > 0) {
            this.line = arrayList.get(0).getPosition().m2255a();
        }
        this.output.mo26443h(this.line);
        if (z) {
            annotate(this.output.mo26446a() - mo26446a, "line_start: " + this.line);
        }
        int paramBase = getParamBase();
        C7401b m1565l = this.desc.m1565l();
        int size = m1565l.size();
        if (!this.isStatic) {
            Iterator<LocalList.Entry> it = arrayList2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                LocalList.Entry next = it.next();
                if (paramBase == next.getRegister()) {
                    this.lastEntryForReg[paramBase] = next;
                    break;
                }
            }
            paramBase++;
        }
        int mo26446a2 = this.output.mo26446a();
        this.output.mo26443h(size);
        if (z) {
            annotate(this.output.mo26446a() - mo26446a2, String.format("parameters_size: %04x", Integer.valueOf(size)));
        }
        for (int i = 0; i < size; i++) {
            C7402c m1558A = m1565l.m1558A(i);
            int mo26446a3 = this.output.mo26446a();
            Iterator<LocalList.Entry> it2 = arrayList2.iterator();
            while (true) {
                if (it2.hasNext()) {
                    entry = it2.next();
                    if (paramBase == entry.getRegister()) {
                        if (entry.getSignature() != null) {
                            emitStringIndex(null);
                        } else {
                            emitStringIndex(entry.getName());
                        }
                        this.lastEntryForReg[paramBase] = entry;
                    }
                } else {
                    entry = null;
                    break;
                }
            }
            if (entry == null) {
                emitStringIndex(null);
            }
            if (z) {
                if (entry != null && entry.getSignature() == null) {
                    str = entry.getName().toHuman();
                } else {
                    str = "<unnamed>";
                }
                annotate(this.output.mo26446a() - mo26446a3, "parameter " + str + " v" + paramBase);
            }
            paramBase += m1558A.m1527n();
        }
        for (LocalList.Entry entry2 : this.lastEntryForReg) {
            if (entry2 != null && entry2.getSignature() != null) {
                emitLocalStartExtended(entry2);
            }
        }
    }

    private void emitLocalEnd(LocalList.Entry entry) {
        int mo26446a = this.output.mo26446a();
        this.output.writeByte(5);
        this.output.mo26443h(entry.getRegister());
        if (this.annotateTo != null || this.debugPrint != null) {
            annotate(this.output.mo26446a() - mo26446a, String.format("%04x: -local %s", Integer.valueOf(this.address), entryAnnotationString(entry)));
        }
    }

    private void emitLocalRestart(LocalList.Entry entry) {
        int mo26446a = this.output.mo26446a();
        this.output.writeByte(6);
        emitUnsignedLeb128(entry.getRegister());
        if (this.annotateTo != null || this.debugPrint != null) {
            annotate(this.output.mo26446a() - mo26446a, String.format("%04x: +local restart %s", Integer.valueOf(this.address), entryAnnotationString(entry)));
        }
    }

    private void emitLocalStartExtended(LocalList.Entry entry) {
        int mo26446a = this.output.mo26446a();
        this.output.writeByte(4);
        emitUnsignedLeb128(entry.getRegister());
        emitStringIndex(entry.getName());
        emitTypeIndex(entry.getType());
        emitStringIndex(entry.getSignature());
        if (this.annotateTo != null || this.debugPrint != null) {
            annotate(this.output.mo26446a() - mo26446a, String.format("%04x: +localx %s", Integer.valueOf(this.address), entryAnnotationString(entry)));
        }
    }

    private int emitLocalsAtAddress(int i) {
        int size = this.locals.size();
        while (i < size && this.locals.get(i).getAddress() == this.address) {
            int i2 = i + 1;
            LocalList.Entry entry = this.locals.get(i);
            int register = entry.getRegister();
            LocalList.Entry[] entryArr = this.lastEntryForReg;
            LocalList.Entry entry2 = entryArr[register];
            if (entry != entry2) {
                entryArr[register] = entry;
                if (entry.isStart()) {
                    if (entry2 != null && entry.matches(entry2)) {
                        if (!entry2.isStart()) {
                            emitLocalRestart(entry);
                        } else {
                            throw new RuntimeException("shouldn't happen");
                        }
                    } else {
                        emitLocalStart(entry);
                    }
                } else if (entry.getDisposition() != LocalList.Disposition.END_REPLACED) {
                    emitLocalEnd(entry);
                }
            }
            i = i2;
        }
        return i;
    }

    private void emitStringIndex(C7212d0 c7212d0) {
        DexFile dexFile;
        if (c7212d0 != null && (dexFile = this.file) != null) {
            this.output.mo26443h(dexFile.m24483i().indexOf(c7212d0) + 1);
        } else {
            this.output.mo26443h(0);
        }
    }

    private void emitTypeIndex(C7214e0 c7214e0) {
        DexFile dexFile;
        if (c7214e0 != null && (dexFile = this.file) != null) {
            this.output.mo26443h(dexFile.getTypeIds().indexOf(c7214e0) + 1);
        } else {
            this.output.mo26443h(0);
        }
    }

    private void emitUnsignedLeb128(int i) {
        if (i >= 0) {
            this.output.mo26443h(i);
            return;
        }
        throw new RuntimeException("Signed value where unsigned required: " + i);
    }

    private String entryAnnotationString(LocalList.Entry entry) {
        StringBuilder sb = new StringBuilder();
        sb.append("v");
        sb.append(entry.getRegister());
        sb.append(' ');
        C7212d0 name = entry.getName();
        if (name == null) {
            sb.append("null");
        } else {
            sb.append(name.toHuman());
        }
        sb.append(' ');
        C7214e0 type = entry.getType();
        if (type == null) {
            sb.append("null");
        } else {
            sb.append(type.toHuman());
        }
        C7212d0 signature = entry.getSignature();
        if (signature != null) {
            sb.append(' ');
            sb.append(signature.toHuman());
        }
        return sb.toString();
    }

    private ArrayList<LocalList.Entry> extractMethodArguments() {
        ArrayList<LocalList.Entry> arrayList = new ArrayList<>(this.desc.m1565l().size());
        int paramBase = getParamBase();
        BitSet bitSet = new BitSet(this.regSize - paramBase);
        int size = this.locals.size();
        for (int i = 0; i < size; i++) {
            LocalList.Entry entry = this.locals.get(i);
            int register = entry.getRegister();
            if (register >= paramBase) {
                int i2 = register - paramBase;
                if (!bitSet.get(i2)) {
                    bitSet.set(i2);
                    arrayList.add(entry);
                }
            }
        }
        Collections.sort(arrayList, new Comparator<LocalList.Entry>() { // from class: com.android.dx.dex.file.DebugInfoEncoder.2
            @Override // java.util.Comparator
            public boolean equals(Object obj) {
                return obj == this;
            }

            @Override // java.util.Comparator
            public int compare(LocalList.Entry entry2, LocalList.Entry entry3) {
                return entry2.getRegister() - entry3.getRegister();
            }
        });
        return arrayList;
    }

    private int getParamBase() {
        return (this.regSize - this.desc.m1565l().m1557B()) - (!this.isStatic ? 1 : 0);
    }

    public byte[] convertAndAnnotate(String str, PrintWriter printWriter, InterfaceC0428a interfaceC0428a, boolean z) {
        this.prefix = str;
        this.debugPrint = printWriter;
        this.annotateTo = interfaceC0428a;
        this.shouldConsume = z;
        return convert();
    }

    public DebugInfoEncoder(PositionList positionList, LocalList localList, DexFile dexFile, int i, int i2, boolean z, C7238z c7238z) {
        this.positions = positionList;
        this.locals = localList;
        this.file = dexFile;
        this.desc = c7238z.m2104z();
        this.isStatic = z;
        this.codeSize = i;
        this.regSize = i2;
        this.lastEntryForReg = new LocalList.Entry[i2];
    }

    private byte[] convert0() {
        int i;
        int i2;
        ArrayList<PositionList.Entry> buildSortedPositions = buildSortedPositions();
        emitHeader(buildSortedPositions, extractMethodArguments());
        this.output.writeByte(7);
        int i3 = 0;
        if (this.annotateTo != null || this.debugPrint != null) {
            annotate(1, String.format("%04x: prologue end", Integer.valueOf(this.address)));
        }
        int size = buildSortedPositions.size();
        int size2 = this.locals.size();
        int i4 = 0;
        while (true) {
            i3 = emitLocalsAtAddress(i3);
            i4 = emitPositionsAtAddress(i4, buildSortedPositions);
            if (i3 < size2) {
                i = this.locals.get(i3).getAddress();
            } else {
                i = Integer.MAX_VALUE;
            }
            if (i4 < size) {
                i2 = buildSortedPositions.get(i4).getAddress();
            } else {
                i2 = Integer.MAX_VALUE;
            }
            int min = Math.min(i2, i);
            if (min != Integer.MAX_VALUE && (min != this.codeSize || i != Integer.MAX_VALUE || i2 != Integer.MAX_VALUE)) {
                if (min == i2) {
                    emitPosition(buildSortedPositions.get(i4));
                    i4++;
                } else {
                    emitAdvancePc(min - this.address);
                }
            }
        }
        emitEndSequence();
        return this.output.m26493r();
    }

    private void emitLocalStart(LocalList.Entry entry) {
        if (entry.getSignature() != null) {
            emitLocalStartExtended(entry);
            return;
        }
        int mo26446a = this.output.mo26446a();
        this.output.writeByte(3);
        emitUnsignedLeb128(entry.getRegister());
        emitStringIndex(entry.getName());
        emitTypeIndex(entry.getType());
        if (this.annotateTo != null || this.debugPrint != null) {
            annotate(this.output.mo26446a() - mo26446a, String.format("%04x: +local %s", Integer.valueOf(this.address), entryAnnotationString(entry)));
        }
    }

    private void emitPosition(PositionList.Entry entry) {
        int m2255a = entry.getPosition().m2255a();
        int address = entry.getAddress();
        int i = m2255a - this.line;
        int i2 = address - this.address;
        if (i2 >= 0) {
            if (i < -4 || i > 10) {
                emitAdvanceLine(i);
                i = 0;
            }
            int computeOpcode = computeOpcode(i, i2);
            if ((computeOpcode & (-256)) > 0) {
                emitAdvancePc(i2);
                computeOpcode = computeOpcode(i, 0);
                if ((computeOpcode & (-256)) > 0) {
                    emitAdvanceLine(i);
                    computeOpcode = computeOpcode(0, 0);
                    i2 = 0;
                    i = 0;
                } else {
                    i2 = 0;
                }
            }
            this.output.writeByte(computeOpcode);
            this.line += i;
            int i3 = this.address + i2;
            this.address = i3;
            if (this.annotateTo != null || this.debugPrint != null) {
                annotate(1, String.format("%04x: line %d", Integer.valueOf(i3), Integer.valueOf(this.line)));
                return;
            }
            return;
        }
        throw new RuntimeException("Position entries must be in ascending address order");
    }

    private int emitPositionsAtAddress(int i, ArrayList<PositionList.Entry> arrayList) {
        int size = arrayList.size();
        while (i < size && arrayList.get(i).getAddress() == this.address) {
            emitPosition(arrayList.get(i));
            i++;
        }
        return i;
    }

    public byte[] convert() {
        try {
            return convert0();
        } catch (IOException e) {
            throw C4557d.m16010d(e, "...while encoding debug info");
        }
    }
}
