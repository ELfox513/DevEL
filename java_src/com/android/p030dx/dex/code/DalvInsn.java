package com.android.p030dx.dex.code;

import java.util.BitSet;
import p015b2.C0438g;
import p015b2.C0451s;
import p015b2.InterfaceC0428a;
import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7167w;
import p234z1.AbstractC7565p;
/* renamed from: com.android.dx.dex.code.DalvInsn */
/* loaded from: classes.dex */
public abstract class DalvInsn {
    private int address;
    private final Dop opcode;
    private final C7167w position;
    private final C7160r registers;

    public abstract String argString();

    public abstract int codeSize();

    public String cstComment() {
        throw new UnsupportedOperationException("Not supported.");
    }

    public String cstString() {
        throw new UnsupportedOperationException("Not supported.");
    }

    public final int getNextAddress() {
        return getAddress() + codeSize();
    }

    public final Dop getOpcode() {
        return this.opcode;
    }

    public final C7167w getPosition() {
        return this.position;
    }

    public final C7160r getRegisters() {
        return this.registers;
    }

    public final boolean hasAddress() {
        return this.address >= 0;
    }

    public final boolean hasResult() {
        return this.opcode.hasResult();
    }

    public abstract String listingString0(boolean z);

    public DalvInsn withMapper(AbstractC7565p abstractC7565p) {
        return withRegisters(abstractC7565p.m1193c(getRegisters()));
    }

    public abstract DalvInsn withOpcode(Dop dop);

    public abstract DalvInsn withRegisterOffset(int i);

    public abstract DalvInsn withRegisters(C7160r c7160r);

    public abstract void writeTo(InterfaceC0428a interfaceC0428a);

    public DalvInsn expandedPrefix(BitSet bitSet) {
        C7160r c7160r = this.registers;
        boolean z = bitSet.get(0);
        if (hasResult()) {
            bitSet.set(0);
        }
        C7160r m2341H = c7160r.m2341H(bitSet);
        if (hasResult()) {
            bitSet.set(0, z);
        }
        if (m2341H.size() == 0) {
            return null;
        }
        return new HighRegisterPrefix(this.position, m2341H);
    }

    public DalvInsn expandedVersion(BitSet bitSet) {
        return withRegisters(this.registers.m2340I(0, hasResult(), bitSet));
    }

    public final int getAddress() {
        int i = this.address;
        if (i >= 0) {
            return i;
        }
        throw new RuntimeException("address not yet known");
    }

    public DalvInsn getLowRegVersion() {
        return withRegisters(this.registers.m2340I(0, hasResult(), null));
    }

    public final String identifierString() {
        int i = this.address;
        if (i != -1) {
            return String.format("%04x", Integer.valueOf(i));
        }
        return C0438g.m26475j(System.identityHashCode(this));
    }

    public final void setAddress(int i) {
        if (i >= 0) {
            this.address = i;
            return;
        }
        throw new IllegalArgumentException("address < 0");
    }

    public final String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder(100);
        sb.append(identifierString());
        sb.append(' ');
        sb.append(this.position);
        sb.append(": ");
        sb.append(this.opcode.getName());
        if (this.registers.size() != 0) {
            sb.append(this.registers.toHuman(" ", ", ", null));
            z = true;
        } else {
            z = false;
        }
        String argString = argString();
        if (argString != null) {
            if (z) {
                sb.append(',');
            }
            sb.append(' ');
            sb.append(argString);
        }
        return sb.toString();
    }

    public DalvInsn(Dop dop, C7167w c7167w, C7160r c7160r) {
        if (dop != null) {
            if (c7167w != null) {
                if (c7160r != null) {
                    this.address = -1;
                    this.opcode = dop;
                    this.position = c7167w;
                    this.registers = c7160r;
                    return;
                }
                throw new NullPointerException("registers == null");
            }
            throw new NullPointerException("position == null");
        }
        throw new NullPointerException("opcode == null");
    }

    public static SimpleInsn makeMove(C7167w c7167w, C7157q c7157q, C7157q c7157q2) {
        Dop dop;
        boolean z = true;
        if (c7157q.m2355x() != 1) {
            z = false;
        }
        boolean m1534N = c7157q.getType().m1534N();
        int m2380B = c7157q.m2380B();
        if ((c7157q2.m2380B() | m2380B) < 16) {
            if (m1534N) {
                dop = Dops.MOVE_OBJECT;
            } else if (z) {
                dop = Dops.MOVE;
            } else {
                dop = Dops.MOVE_WIDE;
            }
        } else if (m2380B < 256) {
            if (m1534N) {
                dop = Dops.MOVE_OBJECT_FROM16;
            } else if (z) {
                dop = Dops.MOVE_FROM16;
            } else {
                dop = Dops.MOVE_WIDE_FROM16;
            }
        } else if (m1534N) {
            dop = Dops.MOVE_OBJECT_16;
        } else if (z) {
            dop = Dops.MOVE_16;
        } else {
            dop = Dops.MOVE_WIDE_16;
        }
        return new SimpleInsn(dop, c7167w, C7160r.m2343E(c7157q, c7157q2));
    }

    public DalvInsn expandedSuffix(BitSet bitSet) {
        if (hasResult() && !bitSet.get(0)) {
            C7157q m2347A = this.registers.m2347A(0);
            return makeMove(this.position, m2347A, m2347A.m2364S(0));
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1, types: [w1.r] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.BitSet] */
    public final int getMinimumRegisterRequirement(BitSet bitSet) {
        int i;
        ?? hasResult = hasResult();
        int size = this.registers.size();
        int i2 = 0;
        if (hasResult != 0 && !bitSet.get(0)) {
            i = this.registers.m2347A(0).m2355x();
        } else {
            i = 0;
        }
        while (hasResult < size) {
            if (!bitSet.get(hasResult)) {
                i2 += this.registers.m2347A(hasResult).m2355x();
            }
            hasResult++;
        }
        return Math.max(i2, i);
    }

    public final String listingString(String str, int i, boolean z) {
        int i2;
        String listingString0 = listingString0(z);
        if (listingString0 == null) {
            return null;
        }
        String str2 = str + identifierString() + ": ";
        int length = str2.length();
        if (i == 0) {
            i2 = listingString0.length();
        } else {
            i2 = i - length;
        }
        return C0451s.m26433h(str2, length, "", listingString0, i2);
    }
}
