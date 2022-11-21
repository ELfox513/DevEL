package p168r4;

import java.io.File;
/* renamed from: r4.wy2 */
/* loaded from: classes2.dex */
public final class wy2 {

    /* renamed from: a */
    public final C6118p2 f33361a;

    /* renamed from: b */
    public final File f33362b;

    /* renamed from: c */
    public final File f33363c;

    /* renamed from: d */
    public final File f33364d;

    /* renamed from: e */
    public byte[] f33365e;

    public wy2(C6118p2 c6118p2, File file, File file2, File file3) {
        this.f33361a = c6118p2;
        this.f33362b = file;
        this.f33363c = file3;
        this.f33364d = file2;
    }

    /* renamed from: a */
    public final C6118p2 m5547a() {
        return this.f33361a;
    }

    /* renamed from: b */
    public final File m5546b() {
        return this.f33362b;
    }

    /* renamed from: c */
    public final File m5545c() {
        return this.f33363c;
    }

    /* renamed from: e */
    public final boolean m5543e(long j) {
        return this.f33361a.m8514E() - (System.currentTimeMillis() / 1000) < 3600;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002c  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] m5544d() {
        /*
            r3 = this;
            byte[] r0 = r3.f33365e
            r1 = 0
            if (r0 != 0) goto L27
            java.io.File r0 = r3.f33364d
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L1b java.io.IOException -> L20
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L1b java.io.IOException -> L20
            r4.ll3 r0 = p168r4.ll3.m9629N(r2)     // Catch: java.lang.Throwable -> L18 java.io.IOException -> L21
            byte[] r0 = r0.m9626R()     // Catch: java.lang.Throwable -> L18 java.io.IOException -> L21
            p026c4.C1052m.m24745a(r2)
            goto L25
        L18:
            r0 = move-exception
            r1 = r2
            goto L1c
        L1b:
            r0 = move-exception
        L1c:
            p026c4.C1052m.m24745a(r1)
            throw r0
        L20:
            r2 = r1
        L21:
            p026c4.C1052m.m24745a(r2)
            r0 = r1
        L25:
            r3.f33365e = r0
        L27:
            byte[] r0 = r3.f33365e
            if (r0 != 0) goto L2c
            return r1
        L2c:
            int r1 = r0.length
            byte[] r0 = java.util.Arrays.copyOf(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.wy2.m5544d():byte[]");
    }
}
