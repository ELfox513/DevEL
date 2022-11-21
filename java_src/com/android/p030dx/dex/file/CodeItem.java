package com.android.p030dx.dex.file;

import com.android.p030dx.dex.code.DalvCode;
import com.android.p030dx.dex.code.DalvInsnList;
import java.io.PrintWriter;
import java.util.Iterator;
import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p111l1.C4557d;
import p218x1.AbstractC7204a;
import p218x1.C7238z;
import p226y1.C7401b;
import p226y1.C7402c;
import p226y1.InterfaceC7404e;
/* renamed from: com.android.dx.dex.file.CodeItem */
/* loaded from: classes.dex */
public final class CodeItem extends OffsettedItem {
    private static final int ALIGNMENT = 4;
    private static final int HEADER_SIZE = 16;
    private CatchStructs catches;
    private final DalvCode code;
    private DebugInfoItem debugInfo;
    private final boolean isStatic;
    private final C7238z ref;
    private final InterfaceC7404e throwsList;

    public CodeItem(C7238z c7238z, DalvCode dalvCode, boolean z, InterfaceC7404e interfaceC7404e) {
        super(4, -1);
        if (c7238z != null) {
            if (dalvCode != null) {
                if (interfaceC7404e != null) {
                    this.ref = c7238z;
                    this.code = dalvCode;
                    this.isStatic = z;
                    this.throwsList = interfaceC7404e;
                    this.catches = null;
                    this.debugInfo = null;
                    return;
                }
                throw new NullPointerException("throwsList == null");
            }
            throw new NullPointerException("code == null");
        }
        throw new NullPointerException("ref == null");
    }

    private int getInsSize() {
        return this.ref.m2105x(this.isStatic);
    }

    private int getOutsSize() {
        return this.code.getInsns().getOutsSize();
    }

    private int getRegistersSize() {
        return this.code.getInsns().getRegistersSize();
    }

    public C7238z getRef() {
        return this.ref;
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_CODE_ITEM;
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public String toHuman() {
        return this.ref.toHuman();
    }

    public String toString() {
        return "CodeItem{" + toHuman() + "}";
    }

    private void writeCodes(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        try {
            this.code.getInsns().writeTo(interfaceC0428a);
        } catch (RuntimeException e) {
            throw C4557d.m16010d(e, "...while writing instructions for " + this.ref.toHuman());
        }
    }

    public void debugPrint(PrintWriter printWriter, String str, boolean z) {
        printWriter.println(this.ref.toHuman() + ":");
        DalvInsnList insns = this.code.getInsns();
        printWriter.println("regs: " + C0438g.m26478g(getRegistersSize()) + "; ins: " + C0438g.m26478g(getInsSize()) + "; outs: " + C0438g.m26478g(getOutsSize()));
        insns.debugPrint(printWriter, str, z);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("  ");
        String sb2 = sb.toString();
        if (this.catches != null) {
            printWriter.print(str);
            printWriter.println("catches");
            this.catches.debugPrint(printWriter, sb2);
        }
        if (this.debugInfo != null) {
            printWriter.print(str);
            printWriter.println("debug info");
            this.debugInfo.debugPrint(printWriter, sb2);
        }
    }

    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        MixedItemSection m24490b = dexFile.m24490b();
        TypeIdsSection typeIds = dexFile.getTypeIds();
        if (this.code.hasPositions() || this.code.hasLocals()) {
            DebugInfoItem debugInfoItem = new DebugInfoItem(this.code, this.isStatic, this.ref);
            this.debugInfo = debugInfoItem;
            m24490b.add(debugInfoItem);
        }
        if (this.code.hasAnyCatches()) {
            Iterator<C7402c> it = this.code.getCatchTypes().iterator();
            while (it.hasNext()) {
                typeIds.intern(it.next());
            }
            this.catches = new CatchStructs(this.code);
        }
        Iterator<AbstractC7204a> it2 = this.code.getInsnConstants().iterator();
        while (it2.hasNext()) {
            dexFile.m24480l(it2.next());
        }
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void place0(Section section, int i) {
        int i2;
        final DexFile file = section.getFile();
        this.code.assignIndices(new DalvCode.AssignIndicesCallback() { // from class: com.android.dx.dex.file.CodeItem.1
            @Override // com.android.p030dx.dex.code.DalvCode.AssignIndicesCallback
            public int getIndex(AbstractC7204a abstractC7204a) {
                IndexedItem m24491a = file.m24491a(abstractC7204a);
                if (m24491a == null) {
                    return -1;
                }
                return m24491a.getIndex();
            }
        });
        CatchStructs catchStructs = this.catches;
        if (catchStructs != null) {
            catchStructs.encode(file);
            i2 = this.catches.writeSize();
        } else {
            i2 = 0;
        }
        int codeSize = this.code.getInsns().codeSize();
        if ((codeSize & 1) != 0) {
            codeSize++;
        }
        setWriteSize((codeSize * 2) + 16 + i2);
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void writeTo0(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        boolean z;
        int triesSize;
        int absoluteOffset;
        boolean mo26499j = interfaceC0428a.mo26499j();
        int registersSize = getRegistersSize();
        int outsSize = getOutsSize();
        int insSize = getInsSize();
        int codeSize = this.code.getInsns().codeSize();
        if ((codeSize & 1) != 0) {
            z = true;
        } else {
            z = false;
        }
        CatchStructs catchStructs = this.catches;
        if (catchStructs == null) {
            triesSize = 0;
        } else {
            triesSize = catchStructs.triesSize();
        }
        DebugInfoItem debugInfoItem = this.debugInfo;
        if (debugInfoItem == null) {
            absoluteOffset = 0;
        } else {
            absoluteOffset = debugInfoItem.getAbsoluteOffset();
        }
        if (mo26499j) {
            interfaceC0428a.mo26502d(0, offsetString() + ' ' + this.ref.toHuman());
            StringBuilder sb = new StringBuilder();
            sb.append("  registers_size: ");
            sb.append(C0438g.m26478g(registersSize));
            interfaceC0428a.mo26502d(2, sb.toString());
            interfaceC0428a.mo26502d(2, "  ins_size:       " + C0438g.m26478g(insSize));
            interfaceC0428a.mo26502d(2, "  outs_size:      " + C0438g.m26478g(outsSize));
            interfaceC0428a.mo26502d(2, "  tries_size:     " + C0438g.m26478g(triesSize));
            interfaceC0428a.mo26502d(4, "  debug_off:      " + C0438g.m26475j(absoluteOffset));
            interfaceC0428a.mo26502d(4, "  insns_size:     " + C0438g.m26475j(codeSize));
            if (this.throwsList.size() != 0) {
                interfaceC0428a.mo26502d(0, "  throws " + C7401b.m1550J(this.throwsList));
            }
        }
        interfaceC0428a.writeShort(registersSize);
        interfaceC0428a.writeShort(insSize);
        interfaceC0428a.writeShort(outsSize);
        interfaceC0428a.writeShort(triesSize);
        interfaceC0428a.writeInt(absoluteOffset);
        interfaceC0428a.writeInt(codeSize);
        writeCodes(dexFile, interfaceC0428a);
        if (this.catches != null) {
            if (z) {
                if (mo26499j) {
                    interfaceC0428a.mo26502d(2, "  padding: 0");
                }
                interfaceC0428a.writeShort(0);
            }
            this.catches.writeTo(dexFile, interfaceC0428a);
        }
        if (mo26499j && this.debugInfo != null) {
            interfaceC0428a.mo26502d(0, "  debug info");
            this.debugInfo.annotateTo(dexFile, interfaceC0428a, "    ");
        }
    }
}
