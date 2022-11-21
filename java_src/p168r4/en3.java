package p168r4;
/* renamed from: r4.en3 */
/* loaded from: classes2.dex */
public class en3 {

    /* renamed from: c */
    public static final bm3 f23091c = bm3.m12746a();

    /* renamed from: a */
    public volatile ao3 f23092a;

    /* renamed from: b */
    public volatile ll3 f23093b;

    /* renamed from: a */
    public final int m11706a() {
        if (this.f23093b != null) {
            return ((hl3) this.f23093b).f24677p.length;
        }
        if (this.f23092a != null) {
            return this.f23092a.mo8269G();
        }
        return 0;
    }

    public int hashCode() {
        return 1;
    }

    /* renamed from: b */
    public final ll3 m11705b() {
        if (this.f23093b != null) {
            return this.f23093b;
        }
        synchronized (this) {
            if (this.f23093b != null) {
                return this.f23093b;
            }
            if (this.f23092a == null) {
                this.f23093b = ll3.f27255b;
            } else {
                this.f23093b = this.f23092a.mo6494F();
            }
            return this.f23093b;
        }
    }

    /* renamed from: c */
    public final void m11704c(ao3 ao3Var) {
        if (this.f23092a != null) {
            return;
        }
        synchronized (this) {
            if (this.f23092a == null) {
                try {
                    this.f23092a = ao3Var;
                    this.f23093b = ll3.f27255b;
                } catch (bn3 unused) {
                    this.f23092a = ao3Var;
                    this.f23093b = ll3.f27255b;
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof en3)) {
            return false;
        }
        en3 en3Var = (en3) obj;
        ao3 ao3Var = this.f23092a;
        ao3 ao3Var2 = en3Var.f23092a;
        if (ao3Var == null && ao3Var2 == null) {
            return m11705b().equals(en3Var.m11705b());
        }
        if (ao3Var != null && ao3Var2 != null) {
            return ao3Var.equals(ao3Var2);
        }
        if (ao3Var != null) {
            en3Var.m11704c(ao3Var.mo8265f());
            return ao3Var.equals(en3Var.f23092a);
        }
        m11704c(ao3Var2.mo8265f());
        return this.f23092a.equals(ao3Var2);
    }
}
