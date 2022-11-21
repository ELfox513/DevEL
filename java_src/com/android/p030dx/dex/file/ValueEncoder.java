package com.android.p030dx.dex.file;

import java.util.Collection;
import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p102k1.C4424k;
import p201v1.C6969a;
import p201v1.C6973e;
import p218x1.AbstractC7204a;
import p218x1.AbstractC7234v;
import p218x1.C7207b0;
import p218x1.C7208c;
import p218x1.C7209c0;
import p218x1.C7210d;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p218x1.C7215f;
import p218x1.C7217g;
import p218x1.C7223k;
import p218x1.C7224l;
import p218x1.C7225m;
import p218x1.C7226n;
import p218x1.C7227o;
import p218x1.C7228p;
import p218x1.C7231s;
import p218x1.C7235w;
import p218x1.C7237y;
import p218x1.C7238z;
/* renamed from: com.android.dx.dex.file.ValueEncoder */
/* loaded from: classes.dex */
public final class ValueEncoder {
    private static final int VALUE_ANNOTATION = 29;
    private static final int VALUE_ARRAY = 28;
    private static final int VALUE_BOOLEAN = 31;
    private static final int VALUE_BYTE = 0;
    private static final int VALUE_CHAR = 3;
    private static final int VALUE_DOUBLE = 17;
    private static final int VALUE_ENUM = 27;
    private static final int VALUE_FIELD = 25;
    private static final int VALUE_FLOAT = 16;
    private static final int VALUE_INT = 4;
    private static final int VALUE_LONG = 6;
    private static final int VALUE_METHOD = 26;
    private static final int VALUE_METHOD_HANDLE = 22;
    private static final int VALUE_METHOD_TYPE = 21;
    private static final int VALUE_NULL = 30;
    private static final int VALUE_SHORT = 2;
    private static final int VALUE_STRING = 23;
    private static final int VALUE_TYPE = 24;
    private final DexFile file;
    private final InterfaceC0428a out;

    public static void addContents(DexFile dexFile, C6969a c6969a) {
        TypeIdsSection typeIds = dexFile.getTypeIds();
        StringIdsSection m24483i = dexFile.m24483i();
        typeIds.intern(c6969a.m2834B());
        for (C6973e c6973e : c6969a.m2835A()) {
            m24483i.intern(c6973e.m2819d());
            addContents(dexFile, c6973e.m2818f());
        }
    }

    public void writeAnnotation(C6969a c6969a, boolean z) {
        boolean z2;
        if (z && this.out.mo26499j()) {
            z2 = true;
        } else {
            z2 = false;
        }
        StringIdsSection m24483i = this.file.m24483i();
        TypeIdsSection typeIds = this.file.getTypeIds();
        C7214e0 m2834B = c6969a.m2834B();
        int indexOf = typeIds.indexOf(m2834B);
        if (z2) {
            InterfaceC0428a interfaceC0428a = this.out;
            interfaceC0428a.mo26504b("  type_idx: " + C0438g.m26475j(indexOf) + " // " + m2834B.toHuman());
        }
        this.out.mo26443h(typeIds.indexOf(c6969a.m2834B()));
        Collection<C6973e> m2835A = c6969a.m2835A();
        int size = m2835A.size();
        if (z2) {
            InterfaceC0428a interfaceC0428a2 = this.out;
            interfaceC0428a2.mo26504b("  size: " + C0438g.m26475j(size));
        }
        this.out.mo26443h(size);
        int i = 0;
        for (C6973e c6973e : m2835A) {
            C7212d0 m2819d = c6973e.m2819d();
            int indexOf2 = m24483i.indexOf(m2819d);
            AbstractC7204a m2818f = c6973e.m2818f();
            if (z2) {
                InterfaceC0428a interfaceC0428a3 = this.out;
                interfaceC0428a3.mo26502d(0, "  elements[" + i + "]:");
                i++;
                InterfaceC0428a interfaceC0428a4 = this.out;
                interfaceC0428a4.mo26504b("    name_idx: " + C0438g.m26475j(indexOf2) + " // " + m2819d.toHuman());
            }
            this.out.mo26443h(indexOf2);
            if (z2) {
                InterfaceC0428a interfaceC0428a5 = this.out;
                interfaceC0428a5.mo26504b("    value: " + constantToHuman(m2818f));
            }
            writeConstant(m2818f);
        }
        if (z2) {
            this.out.mo26500i();
        }
    }

    public void writeArray(C7210d c7210d, boolean z) {
        boolean z2;
        if (z && this.out.mo26499j()) {
            z2 = true;
        } else {
            z2 = false;
        }
        C7210d.C7211a m2121n = c7210d.m2121n();
        int size = m2121n.size();
        if (z2) {
            InterfaceC0428a interfaceC0428a = this.out;
            interfaceC0428a.mo26504b("  size: " + C0438g.m26475j(size));
        }
        this.out.mo26443h(size);
        for (int i = 0; i < size; i++) {
            AbstractC7204a abstractC7204a = m2121n.get(i);
            if (z2) {
                InterfaceC0428a interfaceC0428a2 = this.out;
                interfaceC0428a2.mo26504b("  [" + Integer.toHexString(i) + "] " + constantToHuman(abstractC7204a));
            }
            writeConstant(abstractC7204a);
        }
        if (z2) {
            this.out.mo26500i();
        }
    }

    private static int constantToValueType(AbstractC7204a abstractC7204a) {
        if (abstractC7204a instanceof C7217g) {
            return 0;
        }
        if (abstractC7204a instanceof C7209c0) {
            return 2;
        }
        if (abstractC7204a instanceof C7223k) {
            return 3;
        }
        if (abstractC7204a instanceof C7228p) {
            return 4;
        }
        if (abstractC7204a instanceof C7235w) {
            return 6;
        }
        if (abstractC7204a instanceof C7227o) {
            return 16;
        }
        if (abstractC7204a instanceof C7224l) {
            return 17;
        }
        if (abstractC7204a instanceof C7207b0) {
            return 21;
        }
        if (abstractC7204a instanceof C7237y) {
            return 22;
        }
        if (abstractC7204a instanceof C7212d0) {
            return 23;
        }
        if (abstractC7204a instanceof C7214e0) {
            return 24;
        }
        if (abstractC7204a instanceof C7226n) {
            return 25;
        }
        if (abstractC7204a instanceof C7238z) {
            return 26;
        }
        if (abstractC7204a instanceof C7225m) {
            return 27;
        }
        if (abstractC7204a instanceof C7210d) {
            return 28;
        }
        if (abstractC7204a instanceof C7208c) {
            return 29;
        }
        if (abstractC7204a instanceof C7231s) {
            return 30;
        }
        if (abstractC7204a instanceof C7215f) {
            return 31;
        }
        throw new RuntimeException("Shouldn't happen");
    }

    public ValueEncoder(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        if (dexFile != null) {
            if (interfaceC0428a != null) {
                this.file = dexFile;
                this.out = interfaceC0428a;
                return;
            }
            throw new NullPointerException("out == null");
        }
        throw new NullPointerException("file == null");
    }

    public static String constantToHuman(AbstractC7204a abstractC7204a) {
        if (constantToValueType(abstractC7204a) == 30) {
            return "null";
        }
        return abstractC7204a.mo2042j() + ' ' + abstractC7204a.toHuman();
    }

    public void writeConstant(AbstractC7204a abstractC7204a) {
        int constantToValueType = constantToValueType(abstractC7204a);
        if (constantToValueType != 0 && constantToValueType != 6 && constantToValueType != 2) {
            if (constantToValueType != 3) {
                if (constantToValueType != 4) {
                    if (constantToValueType != 16) {
                        if (constantToValueType != 17) {
                            switch (constantToValueType) {
                                case 21:
                                    C4424k.m16553g(this.out, constantToValueType, this.file.m24485g().indexOf(((C7207b0) abstractC7204a).m2126n()));
                                    return;
                                case 22:
                                    C4424k.m16553g(this.out, constantToValueType, this.file.getMethodHandles().m24479a((C7237y) abstractC7204a));
                                    return;
                                case 23:
                                    C4424k.m16553g(this.out, constantToValueType, this.file.m24483i().indexOf((C7212d0) abstractC7204a));
                                    return;
                                case 24:
                                    C4424k.m16553g(this.out, constantToValueType, this.file.getTypeIds().indexOf((C7214e0) abstractC7204a));
                                    return;
                                case 25:
                                    C4424k.m16553g(this.out, constantToValueType, this.file.getFieldIds().indexOf((C7226n) abstractC7204a));
                                    return;
                                case 26:
                                    C4424k.m16553g(this.out, constantToValueType, this.file.getMethodIds().indexOf((C7238z) abstractC7204a));
                                    return;
                                case 27:
                                    C4424k.m16553g(this.out, constantToValueType, this.file.getFieldIds().indexOf(((C7225m) abstractC7204a).m2078x()));
                                    return;
                                case 28:
                                    this.out.writeByte(constantToValueType);
                                    writeArray((C7210d) abstractC7204a, false);
                                    return;
                                case 29:
                                    this.out.writeByte(constantToValueType);
                                    writeAnnotation(((C7208c) abstractC7204a).m2124n(), false);
                                    return;
                                case 30:
                                    this.out.writeByte(constantToValueType);
                                    return;
                                case 31:
                                    this.out.writeByte((((C7215f) abstractC7204a).mo2057z() << 5) | constantToValueType);
                                    return;
                                default:
                                    throw new RuntimeException("Shouldn't happen");
                            }
                        }
                        C4424k.m16555e(this.out, constantToValueType, ((C7224l) abstractC7204a).mo2061A());
                        return;
                    }
                    C4424k.m16555e(this.out, constantToValueType, ((C7227o) abstractC7204a).mo2061A() << 32);
                    return;
                }
            } else {
                C4424k.m16553g(this.out, constantToValueType, ((AbstractC7234v) abstractC7204a).mo2061A());
                return;
            }
        }
        C4424k.m16554f(this.out, constantToValueType, ((AbstractC7234v) abstractC7204a).mo2061A());
    }

    public static void addContents(DexFile dexFile, AbstractC7204a abstractC7204a) {
        if (abstractC7204a instanceof C7208c) {
            addContents(dexFile, ((C7208c) abstractC7204a).m2124n());
        } else if (abstractC7204a instanceof C7210d) {
            C7210d.C7211a m2121n = ((C7210d) abstractC7204a).m2121n();
            int size = m2121n.size();
            for (int i = 0; i < size; i++) {
                addContents(dexFile, m2121n.get(i));
            }
        } else {
            dexFile.m24480l(abstractC7204a);
        }
    }
}
