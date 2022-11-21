package com.android.p030dx.dex.code;

import p015b2.C0438g;
import p015b2.C0441j;
import p015b2.InterfaceC0428a;
import p210w1.C7160r;
import p210w1.C7167w;
/* renamed from: com.android.dx.dex.code.SwitchData */
/* loaded from: classes.dex */
public final class SwitchData extends VariableSizeInsn {
    private final C0441j cases;
    private final boolean packed;
    private final CodeAddress[] targets;
    private final CodeAddress user;

    private static long sparseCodeSize(C0441j c0441j) {
        return (c0441j.size() * 4) + 2;
    }

    public boolean isPacked() {
        return this.packed;
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public DalvInsn withRegisters(C7160r c7160r) {
        return new SwitchData(getPosition(), this.user, this.cases, this.targets);
    }

    public SwitchData(C7167w c7167w, CodeAddress codeAddress, C0441j c0441j, CodeAddress[] codeAddressArr) {
        super(c7167w, C7160r.f36212a);
        if (codeAddress != null) {
            if (c0441j != null) {
                if (codeAddressArr != null) {
                    int size = c0441j.size();
                    if (size == codeAddressArr.length) {
                        if (size <= 65535) {
                            this.user = codeAddress;
                            this.cases = c0441j;
                            this.targets = codeAddressArr;
                            this.packed = shouldPack(c0441j);
                            return;
                        }
                        throw new IllegalArgumentException("too many cases");
                    }
                    throw new IllegalArgumentException("cases / targets mismatch");
                }
                throw new NullPointerException("targets == null");
            }
            throw new NullPointerException("cases == null");
        }
        throw new NullPointerException("user == null");
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String argString() {
        StringBuilder sb = new StringBuilder(100);
        int length = this.targets.length;
        for (int i = 0; i < length; i++) {
            sb.append("\n    ");
            sb.append(this.cases.m26470B(i));
            sb.append(": ");
            sb.append(this.targets[i]);
        }
        return sb.toString();
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public int codeSize() {
        long sparseCodeSize;
        if (this.packed) {
            sparseCodeSize = packedCodeSize(this.cases);
        } else {
            sparseCodeSize = sparseCodeSize(this.cases);
        }
        return (int) sparseCodeSize;
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public String listingString0(boolean z) {
        String str;
        int address = this.user.getAddress();
        StringBuilder sb = new StringBuilder(100);
        int length = this.targets.length;
        if (this.packed) {
            str = "packed";
        } else {
            str = "sparse";
        }
        sb.append(str);
        sb.append("-switch-payload // for switch @ ");
        sb.append(C0438g.m26478g(address));
        for (int i = 0; i < length; i++) {
            int address2 = this.targets[i].getAddress();
            sb.append("\n  ");
            sb.append(this.cases.m26470B(i));
            sb.append(": ");
            sb.append(C0438g.m26475j(address2));
            sb.append(" // ");
            sb.append(C0438g.m26481d(address2 - address));
        }
        return sb.toString();
    }

    @Override // com.android.p030dx.dex.code.DalvInsn
    public void writeTo(InterfaceC0428a interfaceC0428a) {
        int m26470B;
        int m26470B2;
        int address;
        int address2 = this.user.getAddress();
        int codeSize = Dops.PACKED_SWITCH.getFormat().codeSize();
        int length = this.targets.length;
        int i = 0;
        if (this.packed) {
            if (length == 0) {
                m26470B = 0;
            } else {
                m26470B = this.cases.m26470B(0);
            }
            if (length == 0) {
                m26470B2 = 0;
            } else {
                m26470B2 = this.cases.m26470B(length - 1);
            }
            int i2 = (m26470B2 - m26470B) + 1;
            interfaceC0428a.writeShort(256);
            interfaceC0428a.writeShort(i2);
            interfaceC0428a.writeInt(m26470B);
            int i3 = 0;
            while (i < i2) {
                if (this.cases.m26470B(i3) > m26470B + i) {
                    address = codeSize;
                } else {
                    address = this.targets[i3].getAddress() - address2;
                    i3++;
                }
                interfaceC0428a.writeInt(address);
                i++;
            }
            return;
        }
        interfaceC0428a.writeShort(512);
        interfaceC0428a.writeShort(length);
        for (int i4 = 0; i4 < length; i4++) {
            interfaceC0428a.writeInt(this.cases.m26470B(i4));
        }
        while (i < length) {
            interfaceC0428a.writeInt(this.targets[i].getAddress() - address2);
            i++;
        }
    }

    private static long packedCodeSize(C0441j c0441j) {
        long m26470B = (((c0441j.m26470B(c0441j.size() - 1) - c0441j.m26470B(0)) + 1) * 2) + 4;
        if (m26470B > 2147483647L) {
            return -1L;
        }
        return m26470B;
    }

    private static boolean shouldPack(C0441j c0441j) {
        if (c0441j.size() < 2) {
            return true;
        }
        long packedCodeSize = packedCodeSize(c0441j);
        long sparseCodeSize = sparseCodeSize(c0441j);
        if (packedCodeSize >= 0 && packedCodeSize <= (sparseCodeSize * 5) / 4) {
            return true;
        }
        return false;
    }
}
