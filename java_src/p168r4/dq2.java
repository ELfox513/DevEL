package p168r4;

import p016b3.C0475f0;
/* renamed from: r4.dq2 */
/* loaded from: classes2.dex */
public final class dq2 {
    /* renamed from: c */
    public static C5996lt m11990c(int i, C5996lt c5996lt) {
        if (i != 0) {
            if (i == 8) {
                if (((Integer) C5592av.m12935c().m8098c(C6225rz.f30924U5)).intValue() <= 0) {
                    i = 8;
                } else {
                    return c5996lt;
                }
            }
            return m11989d(i, null, c5996lt);
        }
        throw null;
    }

    /* renamed from: a */
    public static C5996lt m11992a(Throwable th) {
        if (th instanceof u12) {
            u12 u12Var = (u12) th;
            return m11990c(u12Var.m6989a(), u12Var.m6650b());
        } else if (th instanceof sv1) {
            if (th.getMessage() == null) {
                return m11989d(((sv1) th).m6989a(), null, null);
            }
            return m11989d(((sv1) th).m6989a(), th.getMessage(), null);
        } else if (th instanceof C0475f0) {
            C0475f0 c0475f0 = (C0475f0) th;
            return new C5996lt(c0475f0.m26388a(), l13.m9811a(c0475f0.getMessage()), "com.google.android.gms.ads", null, null);
        } else {
            return m11989d(1, null, null);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e1  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p168r4.C5996lt m11989d(int r8, java.lang.String r9, p168r4.C5996lt r10) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.dq2.m11989d(int, java.lang.String, r4.lt):r4.lt");
    }

    /* renamed from: b */
    public static C5996lt m11991b(Throwable th, v12 v12Var) {
        C5996lt c5996lt;
        C5996lt m11992a = m11992a(th);
        int i = m11992a.f27361a;
        if ((i == 3 || i == 0) && (c5996lt = m11992a.f27364k) != null && !c5996lt.f27363d.equals("com.google.android.gms.ads")) {
            m11992a.f27364k = null;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30948X5)).booleanValue() && v12Var != null) {
            m11992a.f27365p = v12Var.m6248d();
        }
        return m11992a;
    }
}
