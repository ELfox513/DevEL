package com.android.p030dx.dex.file;

import com.android.p030dx.dex.code.DalvCode;
import com.android.p030dx.dex.code.DalvInsnList;
import com.android.p030dx.dex.code.LocalList;
import com.android.p030dx.dex.code.PositionList;
import java.io.PrintWriter;
import p015b2.InterfaceC0428a;
import p111l1.C4557d;
import p218x1.C7238z;
/* renamed from: com.android.dx.dex.file.DebugInfoItem */
/* loaded from: classes.dex */
public class DebugInfoItem extends OffsettedItem {
    private static final int ALIGNMENT = 1;
    private static final boolean ENABLE_ENCODER_SELF_CHECK = false;
    private final DalvCode code;
    private byte[] encoded;
    private final boolean isStatic;
    private final C7238z ref;

    public DebugInfoItem(DalvCode dalvCode, boolean z, C7238z c7238z) {
        super(1, -1);
        if (dalvCode != null) {
            this.code = dalvCode;
            this.isStatic = z;
            this.ref = c7238z;
            return;
        }
        throw new NullPointerException("code == null");
    }

    private byte[] encode(DexFile dexFile, String str, PrintWriter printWriter, InterfaceC0428a interfaceC0428a, boolean z) {
        return encode0(dexFile, str, printWriter, interfaceC0428a, z);
    }

    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
    }

    public void annotateTo(DexFile dexFile, InterfaceC0428a interfaceC0428a, String str) {
        encode(dexFile, str, null, interfaceC0428a, false);
    }

    public void debugPrint(PrintWriter printWriter, String str) {
        encode(null, str, printWriter, null, false);
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_DEBUG_INFO_ITEM;
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public String toHuman() {
        throw new RuntimeException("unsupported");
    }

    private byte[] encode0(DexFile dexFile, String str, PrintWriter printWriter, InterfaceC0428a interfaceC0428a, boolean z) {
        PositionList positions = this.code.getPositions();
        LocalList locals = this.code.getLocals();
        DalvInsnList insns = this.code.getInsns();
        DebugInfoEncoder debugInfoEncoder = new DebugInfoEncoder(positions, locals, dexFile, insns.codeSize(), insns.getRegistersSize(), this.isStatic, this.ref);
        if (printWriter == null && interfaceC0428a == null) {
            return debugInfoEncoder.convert();
        }
        return debugInfoEncoder.convertAndAnnotate(str, printWriter, interfaceC0428a, z);
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void place0(Section section, int i) {
        try {
            byte[] encode = encode(section.getFile(), null, null, null, false);
            this.encoded = encode;
            setWriteSize(encode.length);
        } catch (RuntimeException e) {
            throw C4557d.m16010d(e, "...while placing debug info for " + this.ref.toHuman());
        }
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void writeTo0(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26504b(offsetString() + " debug info");
            encode(dexFile, null, null, interfaceC0428a, true);
        }
        interfaceC0428a.write(this.encoded);
    }
}
