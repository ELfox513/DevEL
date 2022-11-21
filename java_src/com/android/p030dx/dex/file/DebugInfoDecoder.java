package com.android.p030dx.dex.file;

import com.android.p030dx.dex.code.DalvCode;
import com.android.p030dx.dex.code.DalvInsnList;
import com.android.p030dx.dex.code.LocalList;
import com.android.p030dx.dex.code.PositionList;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p102k1.C4427n;
import p111l1.C4554a;
import p111l1.C4557d;
import p111l1.InterfaceC4555b;
import p218x1.C7212d0;
import p218x1.C7238z;
import p226y1.C7400a;
import p226y1.C7401b;
import p226y1.C7402c;
/* renamed from: com.android.dx.dex.file.DebugInfoDecoder */
/* loaded from: classes.dex */
public class DebugInfoDecoder {
    private final int codesize;
    private final C7400a desc;
    private final byte[] encoded;
    private final DexFile file;
    private final boolean isStatic;
    private final LocalEntry[] lastEntryForReg;
    private final ArrayList<LocalEntry> locals;
    private final ArrayList<PositionEntry> positions;
    private final int regSize;
    private final int thisStringIdx;
    private int line = 1;
    private int address = 0;

    private int readStringIndex(InterfaceC4555b interfaceC4555b) {
        return C4427n.m16523b(interfaceC4555b) - 1;
    }

    private static void validateEncode0(byte[] bArr, int i, int i2, boolean z, C7238z c7238z, DexFile dexFile, PositionList positionList, LocalList localList) {
        boolean z2;
        LocalEntry localEntry;
        PositionEntry next;
        DebugInfoDecoder debugInfoDecoder = new DebugInfoDecoder(bArr, i, i2, z, c7238z, dexFile);
        debugInfoDecoder.decode();
        List<PositionEntry> positionList2 = debugInfoDecoder.getPositionList();
        if (positionList2.size() == positionList.size()) {
            Iterator<PositionEntry> it = positionList2.iterator();
            do {
                z2 = false;
                if (it.hasNext()) {
                    next = it.next();
                    int size = positionList.size() - 1;
                    while (true) {
                        if (size >= 0) {
                            PositionList.Entry entry = positionList.get(size);
                            if (next.line == entry.getPosition().m2255a() && next.address == entry.getAddress()) {
                                z2 = true;
                                continue;
                                break;
                            }
                            size--;
                        }
                    }
                } else {
                    List<LocalEntry> locals = debugInfoDecoder.getLocals();
                    int i3 = debugInfoDecoder.thisStringIdx;
                    int size2 = locals.size();
                    int paramBase = debugInfoDecoder.getParamBase();
                    for (int i4 = 0; i4 < size2; i4++) {
                        LocalEntry localEntry2 = locals.get(i4);
                        int i5 = localEntry2.nameIndex;
                        if (i5 < 0 || i5 == i3) {
                            int i6 = i4 + 1;
                            while (true) {
                                if (i6 < size2) {
                                    LocalEntry localEntry3 = locals.get(i6);
                                    if (localEntry3.address == 0) {
                                        if (localEntry2.reg == localEntry3.reg && localEntry3.isStart) {
                                            locals.set(i4, localEntry3);
                                            locals.remove(i6);
                                            size2--;
                                            break;
                                        }
                                        i6++;
                                    }
                                }
                            }
                        }
                    }
                    int size3 = localList.size();
                    int i7 = 0;
                    for (int i8 = 0; i8 < size3; i8++) {
                        LocalList.Entry entry2 = localList.get(i8);
                        if (entry2.getDisposition() != LocalList.Disposition.END_REPLACED) {
                            do {
                                localEntry = locals.get(i7);
                                if (localEntry.nameIndex >= 0) {
                                    break;
                                }
                                i7++;
                            } while (i7 < size2);
                            int i9 = localEntry.address;
                            if (localEntry.reg != entry2.getRegister()) {
                                System.err.println("local register mismatch at orig " + i8 + " / decoded " + i7);
                            } else if (localEntry.isStart != entry2.isStart()) {
                                System.err.println("local start/end mismatch at orig " + i8 + " / decoded " + i7);
                            } else if (i9 == entry2.getAddress() || (i9 == 0 && localEntry.reg >= paramBase)) {
                                i7++;
                            } else {
                                System.err.println("local address mismatch at orig " + i8 + " / decoded " + i7);
                            }
                            z2 = true;
                            break;
                        }
                    }
                    if (z2) {
                        System.err.println("decoded locals:");
                        Iterator<LocalEntry> it2 = locals.iterator();
                        while (it2.hasNext()) {
                            System.err.println("  " + it2.next());
                        }
                        throw new RuntimeException("local table problem");
                    }
                    return;
                }
            } while (z2);
            throw new RuntimeException("Could not match position entry: " + next.address + ", " + next.line);
        }
        throw new RuntimeException("Decoded positions table not same size was " + positionList2.size() + " expected " + positionList.size());
    }

    public List<LocalEntry> getLocals() {
        return this.locals;
    }

    public List<PositionEntry> getPositionList() {
        return this.positions;
    }

    /* renamed from: com.android.dx.dex.file.DebugInfoDecoder$LocalEntry */
    /* loaded from: classes.dex */
    public static class LocalEntry {
        public int address;
        public boolean isStart;
        public int nameIndex;
        public int reg;
        public int signatureIndex;
        public int typeIndex;

        public String toString() {
            String str;
            Object[] objArr = new Object[6];
            objArr[0] = Integer.valueOf(this.address);
            if (this.isStart) {
                str = "start";
            } else {
                str = "end";
            }
            objArr[1] = str;
            objArr[2] = Integer.valueOf(this.reg);
            objArr[3] = Integer.valueOf(this.nameIndex);
            objArr[4] = Integer.valueOf(this.typeIndex);
            objArr[5] = Integer.valueOf(this.signatureIndex);
            return String.format("[%x %s v%d %04x %04x %04x]", objArr);
        }

        public LocalEntry(int i, boolean z, int i2, int i3, int i4, int i5) {
            this.address = i;
            this.isStart = z;
            this.reg = i2;
            this.nameIndex = i3;
            this.typeIndex = i4;
            this.signatureIndex = i5;
        }
    }

    /* renamed from: com.android.dx.dex.file.DebugInfoDecoder$PositionEntry */
    /* loaded from: classes.dex */
    public static class PositionEntry {
        public int address;
        public int line;

        public PositionEntry(int i, int i2) {
            this.address = i;
            this.line = i2;
        }
    }

    private void decode0() {
        int i;
        LocalEntry localEntry;
        C4554a c4554a = new C4554a(this.encoded);
        this.line = C4427n.m16523b(c4554a);
        int m16523b = C4427n.m16523b(c4554a);
        C7401b m1565l = this.desc.m1565l();
        int paramBase = getParamBase();
        if (m16523b == m1565l.size()) {
            if (!this.isStatic) {
                LocalEntry localEntry2 = new LocalEntry(0, true, paramBase, this.thisStringIdx, 0, 0);
                this.locals.add(localEntry2);
                this.lastEntryForReg[paramBase] = localEntry2;
                paramBase++;
            }
            int i2 = paramBase;
            for (int i3 = 0; i3 < m16523b; i3++) {
                C7402c type = m1565l.getType(i3);
                int readStringIndex = readStringIndex(c4554a);
                if (readStringIndex == -1) {
                    localEntry = new LocalEntry(0, true, i2, -1, 0, 0);
                } else {
                    localEntry = new LocalEntry(0, true, i2, readStringIndex, 0, 0);
                }
                this.locals.add(localEntry);
                this.lastEntryForReg[i2] = localEntry;
                i2 += type.m1527n();
            }
            while (true) {
                int readByte = c4554a.readByte() & DefaultClassResolver.NAME;
                switch (readByte) {
                    case 0:
                        return;
                    case 1:
                        this.address += C4427n.m16523b(c4554a);
                        break;
                    case 2:
                        this.line += C4427n.m16524a(c4554a);
                        break;
                    case 3:
                        int m16523b2 = C4427n.m16523b(c4554a);
                        LocalEntry localEntry3 = new LocalEntry(this.address, true, m16523b2, readStringIndex(c4554a), readStringIndex(c4554a), 0);
                        this.locals.add(localEntry3);
                        this.lastEntryForReg[m16523b2] = localEntry3;
                        break;
                    case 4:
                        int m16523b3 = C4427n.m16523b(c4554a);
                        LocalEntry localEntry4 = new LocalEntry(this.address, true, m16523b3, readStringIndex(c4554a), readStringIndex(c4554a), readStringIndex(c4554a));
                        this.locals.add(localEntry4);
                        this.lastEntryForReg[m16523b3] = localEntry4;
                        break;
                    case 5:
                        int m16523b4 = C4427n.m16523b(c4554a);
                        try {
                            LocalEntry localEntry5 = this.lastEntryForReg[m16523b4];
                            if (localEntry5.isStart) {
                                LocalEntry localEntry6 = new LocalEntry(this.address, false, m16523b4, localEntry5.nameIndex, localEntry5.typeIndex, localEntry5.signatureIndex);
                                this.locals.add(localEntry6);
                                this.lastEntryForReg[m16523b4] = localEntry6;
                                break;
                            } else {
                                throw new RuntimeException("nonsensical END_LOCAL on dead register v" + m16523b4);
                            }
                        } catch (NullPointerException unused) {
                            throw new RuntimeException("Encountered END_LOCAL on new v" + m16523b4);
                        }
                    case 6:
                        int m16523b5 = C4427n.m16523b(c4554a);
                        try {
                            LocalEntry localEntry7 = this.lastEntryForReg[m16523b5];
                            if (!localEntry7.isStart) {
                                LocalEntry localEntry8 = new LocalEntry(this.address, true, m16523b5, localEntry7.nameIndex, localEntry7.typeIndex, 0);
                                this.locals.add(localEntry8);
                                this.lastEntryForReg[m16523b5] = localEntry8;
                                break;
                            } else {
                                throw new RuntimeException("nonsensical RESTART_LOCAL on live register v" + m16523b5);
                            }
                        } catch (NullPointerException unused2) {
                            throw new RuntimeException("Encountered RESTART_LOCAL on new v" + m16523b5);
                        }
                    case 7:
                    case 8:
                    case 9:
                        break;
                    default:
                        if (readByte >= 10) {
                            int i4 = this.address + ((readByte - 10) / 15);
                            this.address = i4;
                            int i5 = this.line + ((i % 15) - 4);
                            this.line = i5;
                            this.positions.add(new PositionEntry(i4, i5));
                            break;
                        } else {
                            throw new RuntimeException("Invalid extended opcode encountered " + readByte);
                        }
                }
            }
        } else {
            throw new RuntimeException("Mismatch between parameters_size and prototype");
        }
    }

    private int getParamBase() {
        return (this.regSize - this.desc.m1565l().m1557B()) - (!this.isStatic ? 1 : 0);
    }

    public DebugInfoDecoder(byte[] bArr, int i, int i2, boolean z, C7238z c7238z, DexFile dexFile) {
        if (bArr != null) {
            this.encoded = bArr;
            this.isStatic = z;
            this.desc = c7238z.m2104z();
            this.file = dexFile;
            this.regSize = i2;
            this.positions = new ArrayList<>();
            this.locals = new ArrayList<>();
            this.codesize = i;
            this.lastEntryForReg = new LocalEntry[i2];
            int i3 = -1;
            try {
                i3 = dexFile.m24483i().indexOf(new C7212d0("this"));
            } catch (IllegalArgumentException unused) {
            }
            this.thisStringIdx = i3;
            return;
        }
        throw new NullPointerException("encoded == null");
    }

    public static void validateEncode(byte[] bArr, DexFile dexFile, C7238z c7238z, DalvCode dalvCode, boolean z) {
        PositionList positions = dalvCode.getPositions();
        LocalList locals = dalvCode.getLocals();
        DalvInsnList insns = dalvCode.getInsns();
        try {
            validateEncode0(bArr, insns.codeSize(), insns.getRegistersSize(), z, c7238z, dexFile, positions, locals);
        } catch (RuntimeException e) {
            System.err.println("instructions:");
            insns.debugPrint((OutputStream) System.err, "  ", true);
            System.err.println("local list:");
            locals.debugPrint(System.err, "  ");
            throw C4557d.m16010d(e, "while processing " + c7238z.toHuman());
        }
    }

    public void decode() {
        try {
            decode0();
        } catch (Exception e) {
            throw C4557d.m16010d(e, "...while decoding debug info");
        }
    }
}
