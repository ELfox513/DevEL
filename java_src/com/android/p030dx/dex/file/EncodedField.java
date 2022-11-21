package com.android.p030dx.dex.file;

import java.io.PrintWriter;
import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p102k1.C4427n;
import p210w1.C7136a;
import p218x1.C7212d0;
import p218x1.C7226n;
/* renamed from: com.android.dx.dex.file.EncodedField */
/* loaded from: classes.dex */
public final class EncodedField extends EncodedMember implements Comparable<EncodedField> {
    private final C7226n field;

    @Override // com.android.p030dx.dex.file.EncodedMember
    public void debugPrint(PrintWriter printWriter, boolean z) {
        printWriter.println(toString());
    }

    @Override // com.android.p030dx.dex.file.EncodedMember
    public C7212d0 getName() {
        return this.field.m2053u().m2128x();
    }

    public C7226n getRef() {
        return this.field;
    }

    public int hashCode() {
        return this.field.hashCode();
    }

    @Override // com.android.p030dx.dex.file.EncodedMember, p015b2.InterfaceC0450r
    public String toHuman() {
        return this.field.toHuman();
    }

    @Override // java.lang.Comparable
    public int compareTo(EncodedField encodedField) {
        return this.field.compareTo(encodedField.field);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof EncodedField) || compareTo((EncodedField) obj) != 0) {
            return false;
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append(EncodedField.class.getName());
        sb.append('{');
        sb.append(C0438g.m26478g(getAccessFlags()));
        sb.append(' ');
        sb.append(this.field);
        sb.append('}');
        return sb.toString();
    }

    public EncodedField(C7226n c7226n, int i) {
        super(i);
        if (c7226n != null) {
            this.field = c7226n;
            return;
        }
        throw new NullPointerException("field == null");
    }

    @Override // com.android.p030dx.dex.file.EncodedMember
    public void addContents(DexFile dexFile) {
        dexFile.getFieldIds().intern(this.field);
    }

    @Override // com.android.p030dx.dex.file.EncodedMember
    public int encode(DexFile dexFile, InterfaceC0428a interfaceC0428a, int i, int i2) {
        int indexOf = dexFile.getFieldIds().indexOf(this.field);
        int i3 = indexOf - i;
        int accessFlags = getAccessFlags();
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(0, String.format("  [%x] %s", Integer.valueOf(i2), this.field.toHuman()));
            int m16522c = C4427n.m16522c(i3);
            interfaceC0428a.mo26502d(m16522c, "    field_idx:    " + C0438g.m26475j(indexOf));
            int m16522c2 = C4427n.m16522c(accessFlags);
            interfaceC0428a.mo26502d(m16522c2, "    access_flags: " + C7136a.m2459b(accessFlags));
        }
        interfaceC0428a.mo26443h(i3);
        interfaceC0428a.mo26443h(accessFlags);
        return indexOf;
    }
}
