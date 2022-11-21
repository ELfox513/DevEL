package p070g5;

import android.util.Pair;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;
import p211w2.C7171a;
/* renamed from: g5.x8 */
/* loaded from: classes2.dex */
public final class C3878x8 extends AbstractC3807r9 {

    /* renamed from: d */
    public String f17072d;

    /* renamed from: e */
    public boolean f17073e;

    /* renamed from: f */
    public long f17074f;

    /* renamed from: g */
    public final C3610b4 f17075g;

    /* renamed from: h */
    public final C3610b4 f17076h;

    /* renamed from: i */
    public final C3610b4 f17077i;

    /* renamed from: j */
    public final C3610b4 f17078j;

    /* renamed from: k */
    public final C3610b4 f17079k;

    @Override // p070g5.AbstractC3807r9
    /* renamed from: g */
    public final boolean mo17810g() {
        return false;
    }

    @Deprecated
    /* renamed from: h */
    public final Pair<String, Boolean> m17853h(String str) {
        mo17839c();
        long mo24762b = this.f17008a.mo17854Q().mo24762b();
        String str2 = this.f17072d;
        if (str2 != null && mo24762b < this.f17074f) {
            return new Pair<>(str2, Boolean.valueOf(this.f17073e));
        }
        this.f17074f = mo24762b + this.f17008a.m18513u().m18366m(str, C3621c3.f16359c);
        C7171a.m2240e(true);
        try {
            C7171a.C7172a m2243b = C7171a.m2243b(this.f17008a.mo17856O());
            this.f17072d = "";
            String m2232a = m2243b.m2232a();
            if (m2232a != null) {
                this.f17072d = m2232a;
            }
            this.f17073e = m2243b.m2231b();
        } catch (Exception e) {
            this.f17008a.mo17858F().m18019l().m18041b("Unable to get advertising id", e);
            this.f17072d = "";
        }
        C7171a.m2240e(false);
        return new Pair<>(this.f17072d, Boolean.valueOf(this.f17073e));
    }

    public C3878x8(C3616ba c3616ba) {
        super(c3616ba);
        C3670g4 m18546A = this.f17008a.m18546A();
        m18546A.getClass();
        this.f17075g = new C3610b4(m18546A, "last_delete_stale", 0L);
        C3670g4 m18546A2 = this.f17008a.m18546A();
        m18546A2.getClass();
        this.f17076h = new C3610b4(m18546A2, "backoff", 0L);
        C3670g4 m18546A3 = this.f17008a.m18546A();
        m18546A3.getClass();
        this.f17077i = new C3610b4(m18546A3, "last_upload", 0L);
        C3670g4 m18546A4 = this.f17008a.m18546A();
        m18546A4.getClass();
        this.f17078j = new C3610b4(m18546A4, "last_upload_attempt", 0L);
        C3670g4 m18546A5 = this.f17008a.m18546A();
        m18546A5.getClass();
        this.f17079k = new C3610b4(m18546A5, "midnight_offset", 0L);
    }

    /* renamed from: i */
    public final Pair<String, Boolean> m17852i(String str, C3677h c3677h) {
        if (c3677h.m18271j()) {
            return m17853h(str);
        }
        return new Pair<>("", Boolean.FALSE);
    }

    @Deprecated
    /* renamed from: j */
    public final String m17851j(String str) {
        mo17839c();
        String str2 = (String) m17853h(str).first;
        MessageDigest m18167n = C3700ia.m18167n("MD5");
        if (m18167n == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, m18167n.digest(str2.getBytes())));
    }
}
