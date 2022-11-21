package p210w1;

import p015b2.C0438g;
import p218x1.C7212d0;
/* renamed from: w1.w */
/* loaded from: classes.dex */
public final class C7167w {

    /* renamed from: d */
    public static final C7167w f36439d = new C7167w(null, -1, -1);

    /* renamed from: a */
    public final C7212d0 f36440a;

    /* renamed from: b */
    public final int f36441b;

    /* renamed from: c */
    public final int f36442c;

    /* renamed from: a */
    public int m2255a() {
        return this.f36442c;
    }

    /* renamed from: b */
    public boolean m2254b(C7167w c7167w) {
        return this.f36442c == c7167w.f36442c;
    }

    public int hashCode() {
        return this.f36440a.hashCode() + this.f36441b + this.f36442c;
    }

    /* renamed from: c */
    public boolean m2253c(C7167w c7167w) {
        C7212d0 c7212d0;
        C7212d0 c7212d02;
        if (this.f36442c == c7167w.f36442c && ((c7212d0 = this.f36440a) == (c7212d02 = c7167w.f36440a) || (c7212d0 != null && c7212d0.equals(c7212d02)))) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C7167w)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        C7167w c7167w = (C7167w) obj;
        if (this.f36441b != c7167w.f36441b || !m2253c(c7167w)) {
            return false;
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(50);
        C7212d0 c7212d0 = this.f36440a;
        if (c7212d0 != null) {
            sb.append(c7212d0.toHuman());
            sb.append(":");
        }
        int i = this.f36442c;
        if (i >= 0) {
            sb.append(i);
        }
        sb.append('@');
        int i2 = this.f36441b;
        if (i2 < 0) {
            sb.append("????");
        } else {
            sb.append(C0438g.m26478g(i2));
        }
        return sb.toString();
    }

    public C7167w(C7212d0 c7212d0, int i, int i2) {
        if (i >= -1) {
            if (i2 >= -1) {
                this.f36440a = c7212d0;
                this.f36441b = i;
                this.f36442c = i2;
                return;
            }
            throw new IllegalArgumentException("line < -1");
        }
        throw new IllegalArgumentException("address < -1");
    }
}
