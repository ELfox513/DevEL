package com.android.p030dx.dex.code;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import p015b2.C0437f;
import p015b2.InterfaceC0428a;
import p111l1.C4557d;
import p218x1.AbstractC7204a;
import p218x1.AbstractC7213e;
import p218x1.C7207b0;
import p218x1.C7222j;
/* renamed from: com.android.dx.dex.code.DalvInsnList */
/* loaded from: classes.dex */
public final class DalvInsnList extends C0437f {
    private final int regCount;

    /* JADX WARN: Removed duplicated region for block: B:11:0x0026 A[Catch: IOException -> 0x0030, TryCatch #0 {IOException -> 0x0030, blocks: (B:4:0x000d, B:11:0x0026, B:12:0x0029, B:9:0x001e, B:13:0x002c), top: B:19:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0029 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void debugPrint(java.io.Writer r5, java.lang.String r6, boolean r7) {
        /*
            r4 = this;
            b2.h r0 = new b2.h
            r1 = 0
            r0.<init>(r5, r1, r6)
            int r5 = r4.size()
            r6 = 0
        Lb:
            if (r6 >= r5) goto L2c
            java.lang.Object r2 = r4.get0(r6)     // Catch: java.io.IOException -> L30
            com.android.dx.dex.code.DalvInsn r2 = (com.android.p030dx.dex.code.DalvInsn) r2     // Catch: java.io.IOException -> L30
            int r3 = r2.codeSize()     // Catch: java.io.IOException -> L30
            if (r3 != 0) goto L1e
            if (r7 == 0) goto L1c
            goto L1e
        L1c:
            r2 = 0
            goto L24
        L1e:
            java.lang.String r3 = ""
            java.lang.String r2 = r2.listingString(r3, r1, r7)     // Catch: java.io.IOException -> L30
        L24:
            if (r2 == 0) goto L29
            r0.write(r2)     // Catch: java.io.IOException -> L30
        L29:
            int r6 = r6 + 1
            goto Lb
        L2c:
            r0.flush()     // Catch: java.io.IOException -> L30
            return
        L30:
            r5 = move-exception
            java.lang.RuntimeException r6 = new java.lang.RuntimeException
            r6.<init>(r5)
            goto L38
        L37:
            throw r6
        L38:
            goto L37
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.p030dx.dex.code.DalvInsnList.debugPrint(java.io.Writer, java.lang.String, boolean):void");
    }

    public DalvInsn get(int i) {
        return (DalvInsn) get0(i);
    }

    public int getRegistersSize() {
        return this.regCount;
    }

    public void set(int i, DalvInsn dalvInsn) {
        set0(i, dalvInsn);
    }

    public DalvInsnList(int i, int i2) {
        super(i);
        this.regCount = i2;
    }

    public static DalvInsnList makeImmutable(ArrayList<DalvInsn> arrayList, int i) {
        int size = arrayList.size();
        DalvInsnList dalvInsnList = new DalvInsnList(size, i);
        for (int i2 = 0; i2 < size; i2++) {
            dalvInsnList.set(i2, arrayList.get(i2));
        }
        dalvInsnList.setImmutable();
        return dalvInsnList;
    }

    public int codeSize() {
        int size = size();
        if (size == 0) {
            return 0;
        }
        return get(size - 1).getNextAddress();
    }

    public int getOutsSize() {
        int m1557B;
        int size = size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            DalvInsn dalvInsn = (DalvInsn) get0(i2);
            boolean z = true;
            if (dalvInsn instanceof CstInsn) {
                AbstractC7204a constant = ((CstInsn) dalvInsn).getConstant();
                if (constant instanceof AbstractC7213e) {
                    AbstractC7213e abstractC7213e = (AbstractC7213e) constant;
                    if (dalvInsn.getOpcode().getFamily() != 113) {
                        z = false;
                    }
                    m1557B = abstractC7213e.m2105x(z);
                } else if (constant instanceof C7222j) {
                    m1557B = ((C7222j) constant).m2083u().m1565l().m1557B();
                } else {
                    m1557B = 0;
                }
            } else if (dalvInsn instanceof MultiCstInsn) {
                if (dalvInsn.getOpcode().getFamily() == 250) {
                    m1557B = ((C7207b0) ((MultiCstInsn) dalvInsn).getConstant(1)).m2126n().m1565l().m1557B() + 1;
                } else {
                    throw new RuntimeException("Expecting invoke-polymorphic");
                }
            } else {
                continue;
            }
            if (m1557B > i) {
                i = m1557B;
            }
        }
        return i;
    }

    public void writeTo(InterfaceC0428a interfaceC0428a) {
        String listingString;
        int mo26446a = interfaceC0428a.mo26446a();
        int size = size();
        if (interfaceC0428a.mo26499j()) {
            boolean mo26501g = interfaceC0428a.mo26501g();
            for (int i = 0; i < size; i++) {
                DalvInsn dalvInsn = (DalvInsn) get0(i);
                int codeSize = dalvInsn.codeSize() * 2;
                if (codeSize == 0 && !mo26501g) {
                    listingString = null;
                } else {
                    listingString = dalvInsn.listingString("  ", interfaceC0428a.mo26503c(), true);
                }
                if (listingString != null) {
                    interfaceC0428a.mo26502d(codeSize, listingString);
                } else if (codeSize != 0) {
                    interfaceC0428a.mo26502d(codeSize, "");
                }
            }
        }
        for (int i2 = 0; i2 < size; i2++) {
            DalvInsn dalvInsn2 = (DalvInsn) get0(i2);
            try {
                dalvInsn2.writeTo(interfaceC0428a);
            } catch (RuntimeException e) {
                throw C4557d.m16010d(e, "...while writing " + dalvInsn2);
            }
        }
        int mo26446a2 = (interfaceC0428a.mo26446a() - mo26446a) / 2;
        if (mo26446a2 == codeSize()) {
            return;
        }
        throw new RuntimeException("write length mismatch; expected " + codeSize() + " but actually wrote " + mo26446a2);
    }

    public void debugPrint(OutputStream outputStream, String str, boolean z) {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream);
        debugPrint(outputStreamWriter, str, z);
        try {
            outputStreamWriter.flush();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
