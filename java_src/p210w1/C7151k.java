package p210w1;

import p218x1.C7212d0;
/* renamed from: w1.k */
/* loaded from: classes.dex */
public class C7151k implements Comparable<C7151k> {

    /* renamed from: a */
    public final C7212d0 f36194a;

    /* renamed from: b */
    public final C7212d0 f36195b;

    /* renamed from: c */
    public static int m2401c(C7212d0 c7212d0, C7212d0 c7212d02) {
        if (c7212d0 == c7212d02) {
            return 0;
        }
        if (c7212d0 == null) {
            return -1;
        }
        if (c7212d02 == null) {
            return 1;
        }
        return c7212d0.compareTo(c7212d02);
    }

    /* renamed from: j */
    public static C7151k m2397j(C7212d0 c7212d0, C7212d0 c7212d02) {
        if (c7212d0 == null && c7212d02 == null) {
            return null;
        }
        return new C7151k(c7212d0, c7212d02);
    }

    /* renamed from: f */
    public C7212d0 m2399f() {
        return this.f36194a;
    }

    /* renamed from: h */
    public C7212d0 m2398h() {
        return this.f36195b;
    }

    @Override // java.lang.Comparable
    /* renamed from: d */
    public int compareTo(C7151k c7151k) {
        int m2401c = m2401c(this.f36194a, c7151k.f36194a);
        if (m2401c != 0) {
            return m2401c;
        }
        return m2401c(this.f36195b, c7151k.f36195b);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C7151k) || compareTo((C7151k) obj) != 0) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode;
        C7212d0 c7212d0 = this.f36194a;
        int i = 0;
        if (c7212d0 == null) {
            hashCode = 0;
        } else {
            hashCode = c7212d0.hashCode();
        }
        int i2 = hashCode * 31;
        C7212d0 c7212d02 = this.f36195b;
        if (c7212d02 != null) {
            i = c7212d02.hashCode();
        }
        return i2 + i;
    }

    public String toString() {
        String m2116C;
        C7212d0 c7212d0 = this.f36194a;
        if (c7212d0 != null && this.f36195b == null) {
            return c7212d0.m2116C();
        }
        String str = "";
        if (c7212d0 == null && this.f36195b == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        C7212d0 c7212d02 = this.f36194a;
        if (c7212d02 == null) {
            m2116C = "";
        } else {
            m2116C = c7212d02.m2116C();
        }
        sb.append(m2116C);
        sb.append("|");
        C7212d0 c7212d03 = this.f36195b;
        if (c7212d03 != null) {
            str = c7212d03.m2116C();
        }
        sb.append(str);
        return sb.toString();
    }

    public C7151k(C7212d0 c7212d0, C7212d0 c7212d02) {
        this.f36194a = c7212d0;
        this.f36195b = c7212d02;
    }
}
