package p018b5;

import com.prineside.luaj.Lua;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: b5.f8 */
/* loaded from: classes2.dex */
public abstract class AbstractC0649f8 extends C0750l7 {

    /* renamed from: b */
    public static final Logger f1814b = Logger.getLogger(AbstractC0649f8.class.getName());

    /* renamed from: c */
    public static final boolean f1815c = C0856rb.m25363C();

    /* renamed from: a */
    public C0666g8 f1816a;

    public AbstractC0649f8() {
    }

    public /* synthetic */ AbstractC0649f8(C0632e8 c0632e8) {
    }

    /* renamed from: A */
    public static int m25980A(C0718j9 c0718j9) {
        int m25739a = c0718j9.m25739a();
        return m25976a(m25739a) + m25739a;
    }

    /* renamed from: D */
    public static int m25977D(int i) {
        return m25976a(i << 3);
    }

    /* renamed from: a */
    public static int m25976a(int i) {
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

    /* renamed from: b */
    public static int m25975b(long j) {
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

    /* renamed from: c */
    public static AbstractC0649f8 m25974c(byte[] bArr) {
        return new C0598c8(bArr, 0, bArr.length);
    }

    /* renamed from: x */
    public static int m25953x(AbstractC0937w7 abstractC0937w7) {
        int mo25037g = abstractC0937w7.mo25037g();
        return m25976a(mo25037g) + mo25037g;
    }

    /* renamed from: z */
    public static int m25951z(int i) {
        if (i >= 0) {
            return m25976a(i);
        }
        return 10;
    }

    /* renamed from: d */
    public final void m25973d() {
        if (mo25970g() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    /* renamed from: g */
    public abstract int mo25970g();

    /* renamed from: h */
    public abstract void mo25969h(byte b);

    /* renamed from: i */
    public abstract void mo25968i(int i, boolean z);

    /* renamed from: j */
    public abstract void mo25967j(int i, AbstractC0937w7 abstractC0937w7);

    /* renamed from: k */
    public abstract void mo25966k(int i, int i2);

    /* renamed from: l */
    public abstract void mo25965l(int i);

    /* renamed from: m */
    public abstract void mo25964m(int i, long j);

    /* renamed from: n */
    public abstract void mo25963n(long j);

    /* renamed from: o */
    public abstract void mo25962o(int i, int i2);

    /* renamed from: p */
    public abstract void mo25961p(int i);

    /* renamed from: q */
    public abstract void mo25960q(byte[] bArr, int i, int i2);

    /* renamed from: r */
    public abstract void mo25959r(int i, String str);

    /* renamed from: s */
    public abstract void mo25958s(int i, int i2);

    /* renamed from: t */
    public abstract void mo25957t(int i, int i2);

    /* renamed from: u */
    public abstract void mo25956u(int i);

    /* renamed from: v */
    public abstract void mo25955v(int i, long j);

    /* renamed from: w */
    public abstract void mo25954w(long j);

    /* renamed from: B */
    public static int m25979B(InterfaceC0634ea interfaceC0634ea, InterfaceC0821pa interfaceC0821pa) {
        AbstractC0648f7 abstractC0648f7 = (AbstractC0648f7) interfaceC0634ea;
        int mo24986b = abstractC0648f7.mo24986b();
        if (mo24986b == -1) {
            mo24986b = interfaceC0821pa.mo25496a(abstractC0648f7);
            abstractC0648f7.mo24985d(mo24986b);
        }
        return m25976a(mo24986b) + mo24986b;
    }

    @Deprecated
    /* renamed from: y */
    public static int m25952y(int i, InterfaceC0634ea interfaceC0634ea, InterfaceC0821pa interfaceC0821pa) {
        int m25976a = m25976a(i << 3);
        int i2 = m25976a + m25976a;
        AbstractC0648f7 abstractC0648f7 = (AbstractC0648f7) interfaceC0634ea;
        int mo24986b = abstractC0648f7.mo24986b();
        if (mo24986b == -1) {
            mo24986b = interfaceC0821pa.mo25496a(abstractC0648f7);
            abstractC0648f7.mo24985d(mo24986b);
        }
        return i2 + mo24986b;
    }

    /* renamed from: e */
    public final void m25972e(String str, C0924vb c0924vb) {
        f1814b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) c0924vb);
        byte[] bytes = str.getBytes(C0650f9.f1817a);
        try {
            int length = bytes.length;
            mo25956u(length);
            mo25960q(bytes, 0, length);
        } catch (C0615d8 e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new C0615d8(e2);
        }
    }

    /* renamed from: C */
    public static int m25978C(String str) {
        int length;
        try {
            length = C0941wb.m25022c(str);
        } catch (C0924vb unused) {
            length = str.getBytes(C0650f9.f1817a).length;
        }
        return m25976a(length) + length;
    }
}
