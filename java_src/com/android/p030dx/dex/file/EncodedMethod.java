package com.android.p030dx.dex.file;

import com.android.p030dx.dex.code.DalvCode;
import java.io.PrintWriter;
import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p102k1.C4427n;
import p210w1.C7136a;
import p218x1.C7212d0;
import p218x1.C7238z;
import p226y1.InterfaceC7404e;
/* renamed from: com.android.dx.dex.file.EncodedMethod */
/* loaded from: classes.dex */
public final class EncodedMethod extends EncodedMember implements Comparable<EncodedMethod> {
    private final CodeItem code;
    private final C7238z method;

    @Override // com.android.p030dx.dex.file.EncodedMember
    public final C7212d0 getName() {
        return this.method.m2053u().m2128x();
    }

    public final C7238z getRef() {
        return this.method;
    }

    @Override // com.android.p030dx.dex.file.EncodedMember, p015b2.InterfaceC0450r
    public final String toHuman() {
        return this.method.toHuman();
    }

    @Override // java.lang.Comparable
    public int compareTo(EncodedMethod encodedMethod) {
        return this.method.compareTo(encodedMethod.method);
    }

    @Override // com.android.p030dx.dex.file.EncodedMember
    public void debugPrint(PrintWriter printWriter, boolean z) {
        CodeItem codeItem = this.code;
        if (codeItem == null) {
            printWriter.println(getRef().toHuman() + ": abstract or native");
            return;
        }
        codeItem.debugPrint(printWriter, "  ", z);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof EncodedMethod) || compareTo((EncodedMethod) obj) != 0) {
            return false;
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append(EncodedMethod.class.getName());
        sb.append('{');
        sb.append(C0438g.m26478g(getAccessFlags()));
        sb.append(' ');
        sb.append(this.method);
        if (this.code != null) {
            sb.append(' ');
            sb.append(this.code);
        }
        sb.append('}');
        return sb.toString();
    }

    public EncodedMethod(C7238z c7238z, int i, DalvCode dalvCode, InterfaceC7404e interfaceC7404e) {
        super(i);
        boolean z;
        if (c7238z != null) {
            this.method = c7238z;
            if (dalvCode == null) {
                this.code = null;
                return;
            }
            if ((i & 8) != 0) {
                z = true;
            } else {
                z = false;
            }
            this.code = new CodeItem(c7238z, dalvCode, z, interfaceC7404e);
            return;
        }
        throw new NullPointerException("method == null");
    }

    @Override // com.android.p030dx.dex.file.EncodedMember
    public void addContents(DexFile dexFile) {
        MethodIdsSection methodIds = dexFile.getMethodIds();
        MixedItemSection m24481k = dexFile.m24481k();
        methodIds.intern(this.method);
        CodeItem codeItem = this.code;
        if (codeItem != null) {
            m24481k.add(codeItem);
        }
    }

    @Override // com.android.p030dx.dex.file.EncodedMember
    public int encode(DexFile dexFile, InterfaceC0428a interfaceC0428a, int i, int i2) {
        boolean z;
        boolean z2;
        int indexOf = dexFile.getMethodIds().indexOf(this.method);
        int i3 = indexOf - i;
        int accessFlags = getAccessFlags();
        int absoluteOffsetOr0 = OffsettedItem.getAbsoluteOffsetOr0(this.code);
        if (absoluteOffsetOr0 != 0) {
            z = true;
        } else {
            z = false;
        }
        if ((accessFlags & 1280) == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z == z2) {
            if (interfaceC0428a.mo26499j()) {
                interfaceC0428a.mo26502d(0, String.format("  [%x] %s", Integer.valueOf(i2), this.method.toHuman()));
                int m16522c = C4427n.m16522c(i3);
                interfaceC0428a.mo26502d(m16522c, "    method_idx:   " + C0438g.m26475j(indexOf));
                int m16522c2 = C4427n.m16522c(accessFlags);
                interfaceC0428a.mo26502d(m16522c2, "    access_flags: " + C7136a.m2450k(accessFlags));
                int m16522c3 = C4427n.m16522c(absoluteOffsetOr0);
                interfaceC0428a.mo26502d(m16522c3, "    code_off:     " + C0438g.m26475j(absoluteOffsetOr0));
            }
            interfaceC0428a.mo26443h(i3);
            interfaceC0428a.mo26443h(accessFlags);
            interfaceC0428a.mo26443h(absoluteOffsetOr0);
            return indexOf;
        }
        throw new UnsupportedOperationException("code vs. access_flags mismatch");
    }
}
