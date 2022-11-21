package p168r4;
/* renamed from: r4.td */
/* loaded from: classes2.dex */
public abstract class AbstractC6277td {

    /* renamed from: a */
    public static final AbstractC6277td f31765a = new C6166qd();

    /* renamed from: a */
    public abstract int mo6878a();

    /* renamed from: b */
    public abstract C6240sd mo6877b(int i, C6240sd c6240sd, boolean z, long j);

    /* renamed from: c */
    public abstract int mo6876c();

    /* renamed from: d */
    public abstract C6203rd mo6875d(int i, C6203rd c6203rd, boolean z);

    /* renamed from: e */
    public abstract int mo6874e(Object obj);

    /* renamed from: f */
    public final boolean m6873f() {
        return mo6878a() == 0;
    }

    /* renamed from: g */
    public final C6240sd m6872g(int i, C6240sd c6240sd, boolean z) {
        return mo6877b(i, c6240sd, false, 0L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0017, code lost:
        if ((mo6878a() - 1) == 0) goto L17;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m6871h(int r3, p168r4.C6203rd r4, p168r4.C6240sd r5, int r6) {
        /*
            r2 = this;
            r0 = 0
            r2.mo6875d(r3, r4, r0)
            r2.m6872g(r0, r5, r0)
            r4 = 1
            if (r3 != 0) goto L31
            r3 = -1
            if (r6 == 0) goto L22
            if (r6 == r4) goto L20
            r1 = 2
            if (r6 != r1) goto L1a
            int r6 = r2.mo6878a()
            int r6 = r6 + r3
            if (r6 != 0) goto L2a
            goto L20
        L1a:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            r3.<init>()
            throw r3
        L20:
            r4 = 0
            goto L2a
        L22:
            int r6 = r2.mo6878a()
            int r6 = r6 + r3
            if (r6 != 0) goto L2a
            r4 = -1
        L2a:
            if (r4 != r3) goto L2d
            return r3
        L2d:
            r2.m6872g(r4, r5, r0)
            return r0
        L31:
            int r3 = r3 + r4
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.AbstractC6277td.m6871h(int, r4.rd, r4.sd, int):int");
    }
}
