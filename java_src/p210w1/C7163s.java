package p210w1;

import p015b2.C0447o;
/* renamed from: w1.s */
/* loaded from: classes.dex */
public final class C7163s extends C0447o {

    /* renamed from: d */
    public static final C7163s f36218d = new C7163s(0);

    /* renamed from: a */
    public final C7157q[] f36219a;

    /* renamed from: b */
    public int f36220b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C7163s(int r3) {
        /*
            r2 = this;
            r0 = 0
            if (r3 == 0) goto L5
            r1 = 1
            goto L6
        L5:
            r1 = 0
        L6:
            r2.<init>(r1)
            w1.q[] r3 = new p210w1.C7157q[r3]
            r2.f36219a = r3
            r2.f36220b = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p210w1.C7163s.<init>(int):void");
    }

    /* renamed from: A */
    public C7157q m2328A(C7157q c7157q) {
        return m2318z(c7157q.m2380B());
    }

    /* renamed from: B */
    public int m2327B() {
        return this.f36219a.length;
    }

    /* renamed from: D */
    public C7157q m2325D(C7151k c7151k) {
        int length = this.f36219a.length;
        for (int i = 0; i < length; i++) {
            C7157q c7157q = this.f36219a[i];
            if (c7157q != null && c7151k.equals(c7157q.m2354z())) {
                return c7157q;
            }
        }
        return null;
    }

    /* renamed from: E */
    public C7163s m2324E() {
        int length = this.f36219a.length;
        C7163s c7163s = new C7163s(length);
        for (int i = 0; i < length; i++) {
            C7157q c7157q = this.f36219a[i];
            if (c7157q != null) {
                c7163s.m2323F(c7157q);
            }
        }
        c7163s.f36220b = this.f36220b;
        return c7163s;
    }

    /* renamed from: I */
    public void m2321I(C7157q c7157q) {
        try {
            this.f36219a[c7157q.m2380B()] = null;
            this.f36220b = -1;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("bogus reg");
        }
    }

    /* renamed from: J */
    public C7163s m2320J(int i) {
        int length = this.f36219a.length;
        C7163s c7163s = new C7163s(length + i);
        for (int i2 = 0; i2 < length; i2++) {
            C7157q c7157q = this.f36219a[i2];
            if (c7157q != null) {
                c7163s.m2323F(c7157q.m2365R(i));
            }
        }
        c7163s.f36220b = this.f36220b;
        if (isImmutable()) {
            c7163s.setImmutable();
        }
        return c7163s;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C7163s)) {
            return false;
        }
        C7163s c7163s = (C7163s) obj;
        C7157q[] c7157qArr = c7163s.f36219a;
        int length = this.f36219a.length;
        if (length != c7157qArr.length || size() != c7163s.size()) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            C7157q c7157q = this.f36219a[i];
            C7157q c7157q2 = c7157qArr[i];
            if (c7157q != c7157q2 && (c7157q == null || !c7157q.equals(c7157q2))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int hashCode;
        int length = this.f36219a.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            C7157q c7157q = this.f36219a[i2];
            if (c7157q == null) {
                hashCode = 0;
            } else {
                hashCode = c7157q.hashCode();
            }
            i = (i * 31) + hashCode;
        }
        return i;
    }

    public int size() {
        int i = this.f36220b;
        if (i < 0) {
            int length = this.f36219a.length;
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                if (this.f36219a[i3] != null) {
                    i2++;
                }
            }
            this.f36220b = i2;
            return i2;
        }
        return i;
    }

    public String toString() {
        int length = this.f36219a.length;
        StringBuilder sb = new StringBuilder(length * 25);
        sb.append('{');
        boolean z = false;
        for (int i = 0; i < length; i++) {
            C7157q c7157q = this.f36219a[i];
            if (c7157q != null) {
                if (z) {
                    sb.append(", ");
                } else {
                    z = true;
                }
                sb.append(c7157q);
            }
        }
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: x */
    public C7157q m2319x(C7157q c7157q) {
        int length = this.f36219a.length;
        for (int i = 0; i < length; i++) {
            C7157q c7157q2 = this.f36219a[i];
            if (c7157q2 != null && c7157q.m2370M(c7157q2)) {
                return c7157q2;
            }
        }
        return null;
    }

    /* renamed from: z */
    public C7157q m2318z(int i) {
        try {
            return this.f36219a[i];
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("bogus reg");
        }
    }

    /* renamed from: C */
    public void m2326C(C7163s c7163s, boolean z) {
        C7157q m2376F;
        throwIfImmutable();
        C7157q[] c7157qArr = c7163s.f36219a;
        int length = this.f36219a.length;
        int min = Math.min(length, c7157qArr.length);
        this.f36220b = -1;
        for (int i = 0; i < min; i++) {
            C7157q c7157q = this.f36219a[i];
            if (c7157q != null && (m2376F = c7157q.m2376F(c7157qArr[i], z)) != c7157q) {
                this.f36219a[i] = m2376F;
            }
        }
        while (min < length) {
            this.f36219a[min] = null;
            min++;
        }
    }

    /* renamed from: F */
    public void m2323F(C7157q c7157q) {
        int i;
        C7157q c7157q2;
        throwIfImmutable();
        if (c7157q != null) {
            this.f36220b = -1;
            try {
                int m2380B = c7157q.m2380B();
                C7157q[] c7157qArr = this.f36219a;
                c7157qArr[m2380B] = c7157q;
                if (m2380B > 0 && (c7157q2 = c7157qArr[m2380B - 1]) != null && c7157q2.m2355x() == 2) {
                    this.f36219a[i] = null;
                }
                if (c7157q.m2355x() == 2) {
                    this.f36219a[m2380B + 1] = null;
                    return;
                }
                return;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new IllegalArgumentException("spec.getReg() out of range");
            }
        }
        throw new NullPointerException("spec == null");
    }

    /* renamed from: H */
    public void m2322H(C7163s c7163s) {
        int m2327B = c7163s.m2327B();
        for (int i = 0; i < m2327B; i++) {
            C7157q m2318z = c7163s.m2318z(i);
            if (m2318z != null) {
                m2323F(m2318z);
            }
        }
    }
}
