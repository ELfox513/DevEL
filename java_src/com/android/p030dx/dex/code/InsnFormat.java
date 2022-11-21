package com.android.p030dx.dex.code;

import java.util.BitSet;
import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p210w1.C7157q;
import p210w1.C7160r;
import p218x1.AbstractC7233u;
import p218x1.AbstractC7234v;
import p218x1.C7228p;
import p218x1.C7231s;
/* renamed from: com.android.dx.dex.code.InsnFormat */
/* loaded from: classes.dex */
public abstract class InsnFormat {
    public static final boolean ALLOW_EXTENDED_OPCODES = true;

    public static short codeUnit(int i, int i2) {
        if ((i & 255) == i) {
            if ((i2 & 255) == i2) {
                return (short) (i | (i2 << 8));
            }
            throw new IllegalArgumentException("high out of range 0..255");
        }
        throw new IllegalArgumentException("low out of range 0..255");
    }

    public static short opcodeUnit(DalvInsn dalvInsn, int i) {
        if ((i & 255) == i) {
            int opcode = dalvInsn.getOpcode().getOpcode();
            if ((opcode & 255) == opcode) {
                return (short) (opcode | (i << 8));
            }
            throw new IllegalArgumentException("opcode out of range 0..255");
        }
        throw new IllegalArgumentException("arg out of range 0..255");
    }

    public static boolean signedFitsInByte(int i) {
        return ((byte) i) == i;
    }

    public static boolean signedFitsInNibble(int i) {
        return i >= -8 && i <= 7;
    }

    public static boolean signedFitsInShort(int i) {
        return ((short) i) == i;
    }

    public static boolean unsignedFitsInByte(int i) {
        return i == (i & 255);
    }

    public static boolean unsignedFitsInNibble(int i) {
        return i == (i & 15);
    }

    public static boolean unsignedFitsInShort(int i) {
        return i == (65535 & i);
    }

    public static void write(InterfaceC0428a interfaceC0428a, short s) {
        interfaceC0428a.writeShort(s);
    }

    public boolean branchFits(TargetInsn targetInsn) {
        return false;
    }

    public abstract int codeSize();

    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        return new BitSet();
    }

    public abstract String insnArgString(DalvInsn dalvInsn);

    public abstract String insnCommentString(DalvInsn dalvInsn, boolean z);

    public abstract boolean isCompatible(DalvInsn dalvInsn);

    public abstract void writeTo(InterfaceC0428a interfaceC0428a, DalvInsn dalvInsn);

    public static int argIndex(DalvInsn dalvInsn) {
        int m2075B = ((C7228p) ((CstInsn) dalvInsn).getConstant()).m2075B();
        if (m2075B >= 0) {
            return m2075B;
        }
        throw new IllegalArgumentException("bogus insn");
    }

    public static String branchComment(DalvInsn dalvInsn) {
        int targetOffset = ((TargetInsn) dalvInsn).getTargetOffset();
        if (targetOffset == ((short) targetOffset)) {
            return C0438g.m26482c(targetOffset);
        }
        return C0438g.m26481d(targetOffset);
    }

    public static String branchString(DalvInsn dalvInsn) {
        int targetAddress = ((TargetInsn) dalvInsn).getTargetAddress();
        if (targetAddress == ((char) targetAddress)) {
            return C0438g.m26478g(targetAddress);
        }
        return C0438g.m26475j(targetAddress);
    }

    public static String literalBitsComment(AbstractC7234v abstractC7234v, int i) {
        long mo2057z;
        StringBuilder sb = new StringBuilder(20);
        sb.append("#");
        if (abstractC7234v instanceof AbstractC7233u) {
            mo2057z = ((AbstractC7233u) abstractC7234v).mo2061A();
        } else {
            mo2057z = abstractC7234v.mo2057z();
        }
        if (i != 4) {
            if (i != 8) {
                if (i != 16) {
                    if (i != 32) {
                        if (i == 64) {
                            sb.append(C0438g.m26474k(mo2057z));
                        } else {
                            throw new RuntimeException("shouldn't happen");
                        }
                    } else {
                        sb.append(C0438g.m26475j((int) mo2057z));
                    }
                } else {
                    sb.append(C0438g.m26478g((int) mo2057z));
                }
            } else {
                sb.append(C0438g.m26479f((int) mo2057z));
            }
        } else {
            sb.append(C0438g.m26473l((int) mo2057z));
        }
        return sb.toString();
    }

    public static String literalBitsString(AbstractC7234v abstractC7234v) {
        StringBuilder sb = new StringBuilder(100);
        sb.append('#');
        if (abstractC7234v instanceof C7231s) {
            sb.append("null");
        } else {
            sb.append(abstractC7234v.mo2042j());
            sb.append(' ');
            sb.append(abstractC7234v.toHuman());
        }
        return sb.toString();
    }

    public static int makeByte(int i, int i2) {
        if ((i & 15) == i) {
            if ((i2 & 15) == i2) {
                return i | (i2 << 4);
            }
            throw new IllegalArgumentException("high out of range 0..15");
        }
        throw new IllegalArgumentException("low out of range 0..15");
    }

    public static void write(InterfaceC0428a interfaceC0428a, short s, short s2) {
        interfaceC0428a.writeShort(s);
        interfaceC0428a.writeShort(s2);
    }

    public static short codeUnit(int i, int i2, int i3, int i4) {
        if ((i & 15) == i) {
            if ((i2 & 15) == i2) {
                if ((i3 & 15) == i3) {
                    if ((i4 & 15) == i4) {
                        return (short) (i | (i2 << 4) | (i3 << 8) | (i4 << 12));
                    }
                    throw new IllegalArgumentException("n3 out of range 0..15");
                }
                throw new IllegalArgumentException("n2 out of range 0..15");
            }
            throw new IllegalArgumentException("n1 out of range 0..15");
        }
        throw new IllegalArgumentException("n0 out of range 0..15");
    }

    public static boolean isRegListSequential(C7160r c7160r) {
        int size = c7160r.size();
        if (size < 2) {
            return true;
        }
        int m2380B = c7160r.m2347A(0).m2380B();
        for (int i = 0; i < size; i++) {
            C7157q m2347A = c7160r.m2347A(i);
            if (m2347A.m2380B() != m2380B) {
                return false;
            }
            m2380B += m2347A.m2355x();
        }
        return true;
    }

    public static String regListString(C7160r c7160r) {
        int size = c7160r.size();
        StringBuilder sb = new StringBuilder((size * 5) + 2);
        sb.append('{');
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                sb.append(", ");
            }
            sb.append(c7160r.m2347A(i).m2369N());
        }
        sb.append('}');
        return sb.toString();
    }

    public static String regRangeString(C7160r c7160r) {
        int size = c7160r.size();
        StringBuilder sb = new StringBuilder(30);
        sb.append("{");
        if (size != 0) {
            if (size != 1) {
                C7157q m2347A = c7160r.m2347A(size - 1);
                if (m2347A.m2355x() == 2) {
                    m2347A = m2347A.m2365R(1);
                }
                sb.append(c7160r.m2347A(0).m2369N());
                sb.append("..");
                sb.append(m2347A.m2369N());
            } else {
                sb.append(c7160r.m2347A(0).m2369N());
            }
        }
        sb.append("}");
        return sb.toString();
    }

    public final String listingString(DalvInsn dalvInsn, boolean z) {
        String name = dalvInsn.getOpcode().getName();
        String insnArgString = insnArgString(dalvInsn);
        String insnCommentString = insnCommentString(dalvInsn, z);
        StringBuilder sb = new StringBuilder(100);
        sb.append(name);
        if (insnArgString.length() != 0) {
            sb.append(' ');
            sb.append(insnArgString);
        }
        if (insnCommentString.length() != 0) {
            sb.append(" // ");
            sb.append(insnCommentString);
        }
        return sb.toString();
    }

    public static short opcodeUnit(DalvInsn dalvInsn) {
        int opcode = dalvInsn.getOpcode().getOpcode();
        if (opcode < 256 || opcode > 65535) {
            throw new IllegalArgumentException("opcode out of range 0..65535");
        }
        return (short) opcode;
    }

    public static void write(InterfaceC0428a interfaceC0428a, short s, short s2, short s3) {
        interfaceC0428a.writeShort(s);
        interfaceC0428a.writeShort(s2);
        interfaceC0428a.writeShort(s3);
    }

    public static void write(InterfaceC0428a interfaceC0428a, short s, short s2, short s3, short s4) {
        interfaceC0428a.writeShort(s);
        interfaceC0428a.writeShort(s2);
        interfaceC0428a.writeShort(s3);
        interfaceC0428a.writeShort(s4);
    }

    public static void write(InterfaceC0428a interfaceC0428a, short s, short s2, short s3, short s4, short s5) {
        interfaceC0428a.writeShort(s);
        interfaceC0428a.writeShort(s2);
        interfaceC0428a.writeShort(s3);
        interfaceC0428a.writeShort(s4);
        interfaceC0428a.writeShort(s5);
    }

    public static void write(InterfaceC0428a interfaceC0428a, short s, int i) {
        write(interfaceC0428a, s, (short) i, (short) (i >> 16));
    }

    public static void write(InterfaceC0428a interfaceC0428a, short s, int i, short s2) {
        write(interfaceC0428a, s, (short) i, (short) (i >> 16), s2);
    }

    public static void write(InterfaceC0428a interfaceC0428a, short s, int i, short s2, short s3) {
        write(interfaceC0428a, s, (short) i, (short) (i >> 16), s2, s3);
    }

    public static void write(InterfaceC0428a interfaceC0428a, short s, long j) {
        write(interfaceC0428a, s, (short) j, (short) (j >> 16), (short) (j >> 32), (short) (j >> 48));
    }
}
