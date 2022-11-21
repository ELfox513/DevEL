package p201v1;

import p218x1.AbstractC7204a;
import p218x1.C7212d0;
/* renamed from: v1.e */
/* loaded from: classes.dex */
public final class C6973e implements Comparable<C6973e> {

    /* renamed from: a */
    public final C7212d0 f35875a;

    /* renamed from: b */
    public final AbstractC7204a f35876b;

    /* renamed from: d */
    public C7212d0 m2819d() {
        return this.f35875a;
    }

    /* renamed from: f */
    public AbstractC7204a m2818f() {
        return this.f35876b;
    }

    public int hashCode() {
        return (this.f35875a.hashCode() * 31) + this.f35876b.hashCode();
    }

    public String toString() {
        return this.f35875a.toHuman() + ":" + this.f35876b;
    }

    @Override // java.lang.Comparable
    /* renamed from: c */
    public int compareTo(C6973e c6973e) {
        int compareTo = this.f35875a.compareTo(c6973e.f35875a);
        if (compareTo != 0) {
            return compareTo;
        }
        return this.f35876b.compareTo(c6973e.f35876b);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C6973e)) {
            return false;
        }
        C6973e c6973e = (C6973e) obj;
        if (!this.f35875a.equals(c6973e.f35875a) || !this.f35876b.equals(c6973e.f35876b)) {
            return false;
        }
        return true;
    }

    public C6973e(C7212d0 c7212d0, AbstractC7204a abstractC7204a) {
        if (c7212d0 != null) {
            if (abstractC7204a != null) {
                this.f35875a = c7212d0;
                this.f35876b = abstractC7204a;
                return;
            }
            throw new NullPointerException("value == null");
        }
        throw new NullPointerException("name == null");
    }
}
