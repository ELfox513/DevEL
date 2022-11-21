package com.android.p030dx.dex.code;

import p174s1.C6574c;
import p174s1.C6576d;
/* renamed from: com.android.dx.dex.code.Dop */
/* loaded from: classes.dex */
public final class Dop {
    private final int family;
    private final InsnFormat format;
    private final boolean hasResult;
    private final int nextOpcode;
    private final int opcode;

    public int getFamily() {
        return this.family;
    }

    public InsnFormat getFormat() {
        return this.format;
    }

    public String getName() {
        return C6574c.m3890d(this.opcode);
    }

    public int getNextOpcode() {
        return this.nextOpcode;
    }

    public int getOpcode() {
        return this.opcode;
    }

    public boolean hasResult() {
        return this.hasResult;
    }

    public String toString() {
        return getName();
    }

    public Dop getOppositeTest() {
        switch (this.opcode) {
            case 50:
                return Dops.IF_NE;
            case 51:
                return Dops.IF_EQ;
            case 52:
                return Dops.IF_GE;
            case 53:
                return Dops.IF_LT;
            case 54:
                return Dops.IF_LE;
            case 55:
                return Dops.IF_GT;
            case 56:
                return Dops.IF_NEZ;
            case 57:
                return Dops.IF_EQZ;
            case 58:
                return Dops.IF_GEZ;
            case 59:
                return Dops.IF_LTZ;
            case 60:
                return Dops.IF_LEZ;
            case 61:
                return Dops.IF_GTZ;
            default:
                throw new IllegalArgumentException("bogus opcode: " + this);
        }
    }

    public Dop(int i, int i2, int i3, InsnFormat insnFormat, boolean z) {
        if (C6576d.m3883b(i)) {
            if (C6576d.m3883b(i2)) {
                if (C6576d.m3883b(i3)) {
                    if (insnFormat != null) {
                        this.opcode = i;
                        this.family = i2;
                        this.nextOpcode = i3;
                        this.format = insnFormat;
                        this.hasResult = z;
                        return;
                    }
                    throw new NullPointerException("format == null");
                }
                throw new IllegalArgumentException("bogus nextOpcode");
            }
            throw new IllegalArgumentException("bogus family");
        }
        throw new IllegalArgumentException("bogus opcode");
    }
}
