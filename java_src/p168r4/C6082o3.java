package p168r4;

import java.io.IOException;
/* renamed from: r4.o3 */
/* loaded from: classes2.dex */
public final class C6082o3 extends C6047n6 {

    /* renamed from: v */
    public static final InterfaceC5674d3<C6082o3> f28828v = C6044n3.f28100a;

    /* renamed from: k */
    public final int f28829k;

    /* renamed from: p */
    public final String f28830p;

    /* renamed from: q */
    public final int f28831q;

    /* renamed from: r */
    public final C5713e5 f28832r;

    /* renamed from: s */
    public final int f28833s;

    /* renamed from: t */
    public final f04 f28834t;

    /* renamed from: u */
    public final boolean f28835u;

    public C6082o3(int i, Throwable th, int i2) {
        this(i, th, null, i2, null, -1, null, 4, false);
    }

    /* renamed from: a */
    public static C6082o3 m8910a(IOException iOException, int i) {
        return new C6082o3(0, iOException, i);
    }

    /* renamed from: b */
    public static C6082o3 m8909b(Throwable th, String str, int i, C5713e5 c5713e5, int i2, boolean z, int i3) {
        return new C6082o3(1, th, null, i3, str, i, c5713e5, c5713e5 == null ? 4 : i2, z);
    }

    /* renamed from: c */
    public static C6082o3 m8908c(RuntimeException runtimeException, int i) {
        return new C6082o3(2, runtimeException, i);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C6082o3(int r14, java.lang.Throwable r15, java.lang.String r16, int r17, java.lang.String r18, int r19, p168r4.C5713e5 r20, int r21, boolean r22) {
        /*
            r13 = this;
            r4 = r14
            if (r4 == 0) goto L52
            r0 = 1
            if (r4 == r0) goto Ld
            java.lang.String r0 = "Unexpected runtime error"
            r6 = r18
            r7 = r19
            goto L58
        Ld:
            java.lang.String r0 = java.lang.String.valueOf(r20)
            java.lang.String r1 = p168r4.C5711e3.m11869d(r21)
            java.lang.String r2 = java.lang.String.valueOf(r18)
            int r2 = r2.length()
            int r3 = r0.length()
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            int r2 = r2 + 53
            int r2 = r2 + r3
            int r3 = r1.length()
            int r2 = r2 + r3
            r5.<init>(r2)
            r6 = r18
            r5.append(r6)
            java.lang.String r2 = " error, index="
            r5.append(r2)
            r7 = r19
            r5.append(r7)
            java.lang.String r2 = ", format="
            r5.append(r2)
            r5.append(r0)
            java.lang.String r0 = ", format_supported="
            r5.append(r0)
            r5.append(r1)
            java.lang.String r0 = r5.toString()
            goto L58
        L52:
            r6 = r18
            r7 = r19
            java.lang.String r0 = "Source error"
        L58:
            r1 = 0
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L65
            java.lang.String r1 = ": null"
            java.lang.String r0 = r0.concat(r1)
        L65:
            r1 = r0
            r9 = 0
            long r10 = android.os.SystemClock.elapsedRealtime()
            r0 = r13
            r2 = r15
            r3 = r17
            r4 = r14
            r5 = r18
            r6 = r19
            r7 = r20
            r8 = r21
            r12 = r22
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6082o3.<init>(int, java.lang.Throwable, java.lang.String, int, java.lang.String, int, r4.e5, int, boolean):void");
    }

    /* renamed from: d */
    public final C6082o3 m8907d(f04 f04Var) {
        String message = getMessage();
        int i = C5979lc.f27164a;
        return new C6082o3(message, getCause(), this.f28170a, this.f28829k, this.f28830p, this.f28831q, this.f28832r, this.f28833s, f04Var, this.f28171b, this.f28835u);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C6082o3(java.lang.String r9, java.lang.Throwable r10, int r11, int r12, java.lang.String r13, int r14, p168r4.C5713e5 r15, int r16, p168r4.f04 r17, long r18, boolean r20) {
        /*
            r8 = this;
            r6 = r8
            r7 = r20
            r0 = r8
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r18
            r0.<init>(r1, r2, r3, r4)
            r0 = 0
            r1 = 1
            if (r7 == 0) goto L17
            r2 = r12
            if (r2 != r1) goto L15
            r2 = 1
            goto L18
        L15:
            r3 = 0
            goto L19
        L17:
            r2 = r12
        L18:
            r3 = 1
        L19:
            p168r4.C5903ja.m10374a(r3)
            if (r10 != 0) goto L1f
            goto L20
        L1f:
            r0 = 1
        L20:
            p168r4.C5903ja.m10374a(r0)
            r6.f28829k = r2
            r0 = r13
            r6.f28830p = r0
            r0 = r14
            r6.f28831q = r0
            r0 = r15
            r6.f28832r = r0
            r0 = r16
            r6.f28833s = r0
            r0 = r17
            r6.f28834t = r0
            r6.f28835u = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6082o3.<init>(java.lang.String, java.lang.Throwable, int, int, java.lang.String, int, r4.e5, int, r4.f04, long, boolean):void");
    }
}
