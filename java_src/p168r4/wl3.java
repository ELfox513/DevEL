package p168r4;

import com.prineside.luaj.Lua;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: r4.wl3 */
/* loaded from: classes2.dex */
public abstract class wl3 extends al3 {

    /* renamed from: b */
    public static final Logger f33254b = Logger.getLogger(wl3.class.getName());

    /* renamed from: c */
    public static final boolean f33255c = rp3.m7381i();

    /* renamed from: a */
    public xl3 f33256a;

    public wl3() {
    }

    public /* synthetic */ wl3(ul3 ul3Var) {
    }

    /* renamed from: A */
    public static int m5677A(int i) {
        if (i >= 0) {
            return m5676B(i);
        }
        return 10;
    }

    /* renamed from: B */
    public static int m5676B(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & Lua.MASK_Bx) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    /* renamed from: C */
    public static int m5675C(long j) {
        int i;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            j >>>= 28;
            i = 6;
        } else {
            i = 2;
        }
        if (((-2097152) & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        return (j & (-16384)) != 0 ? i + 1 : i;
    }

    /* renamed from: a */
    public static int m5673a(en3 en3Var) {
        int m11706a = en3Var.m11706a();
        return m5676B(m11706a) + m11706a;
    }

    /* renamed from: b */
    public static int m5672b(ll3 ll3Var) {
        int mo7747o = ll3Var.mo7747o();
        return m5676B(mo7747o) + mo7747o;
    }

    /* renamed from: y */
    public static wl3 m5649y(byte[] bArr) {
        return new tl3(bArr, 0, bArr.length);
    }

    /* renamed from: z */
    public static int m5648z(int i) {
        return m5676B(i << 3);
    }

    /* renamed from: d */
    public final void m5670d() {
        if (mo5651w() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    /* renamed from: g */
    public abstract void mo5667g(int i, int i2);

    /* renamed from: h */
    public abstract void mo5666h(int i, int i2);

    /* renamed from: i */
    public abstract void mo5665i(int i, int i2);

    /* renamed from: j */
    public abstract void mo5664j(int i, int i2);

    /* renamed from: k */
    public abstract void mo5663k(int i, long j);

    /* renamed from: l */
    public abstract void mo5662l(int i, long j);

    /* renamed from: m */
    public abstract void mo5661m(int i, boolean z);

    /* renamed from: n */
    public abstract void mo5660n(int i, String str);

    /* renamed from: o */
    public abstract void mo5659o(int i, ll3 ll3Var);

    /* renamed from: p */
    public abstract void mo5658p(byte b);

    /* renamed from: q */
    public abstract void mo5657q(int i);

    /* renamed from: r */
    public abstract void mo5656r(int i);

    /* renamed from: s */
    public abstract void mo5655s(int i);

    /* renamed from: t */
    public abstract void mo5654t(long j);

    /* renamed from: u */
    public abstract void mo5653u(long j);

    /* renamed from: v */
    public abstract void mo5652v(byte[] bArr, int i, int i2);

    /* renamed from: w */
    public abstract int mo5651w();

    /* renamed from: c */
    public static int m5671c(ao3 ao3Var, ro3 ro3Var) {
        uk3 uk3Var = (uk3) ao3Var;
        int mo6493d = uk3Var.mo6493d();
        if (mo6493d == -1) {
            mo6493d = ro3Var.mo7410d(uk3Var);
            uk3Var.mo6492e(mo6493d);
        }
        return m5676B(mo6493d) + mo6493d;
    }

    @Deprecated
    /* renamed from: f */
    public static int m5668f(int i, ao3 ao3Var, ro3 ro3Var) {
        int m5676B = m5676B(i << 3);
        int i2 = m5676B + m5676B;
        uk3 uk3Var = (uk3) ao3Var;
        int mo6493d = uk3Var.mo6493d();
        if (mo6493d == -1) {
            mo6493d = ro3Var.mo7410d(uk3Var);
            uk3Var.mo6492e(mo6493d);
        }
        return i2 + mo6493d;
    }

    /* renamed from: e */
    public final void m5669e(String str, vp3 vp3Var) {
        f33254b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) vp3Var);
        byte[] bytes = str.getBytes(zm3.f34680a);
        try {
            int length = bytes.length;
            mo5656r(length);
            mo5652v(bytes, 0, length);
        } catch (IndexOutOfBoundsException e) {
            throw new vl3(e);
        } catch (vl3 e2) {
            throw e2;
        }
    }

    /* renamed from: D */
    public static int m5674D(String str) {
        int length;
        try {
            length = wp3.m5624g(str);
        } catch (vp3 unused) {
            length = str.getBytes(zm3.f34680a).length;
        }
        return m5676B(length) + length;
    }
}
