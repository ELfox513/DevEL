package p015b2;

import java.util.Arrays;
/* renamed from: b2.j */
/* loaded from: classes.dex */
public final class C0441j extends C0447o {

    /* renamed from: k */
    public static final C0441j f1530k;

    /* renamed from: a */
    public int[] f1531a;

    /* renamed from: b */
    public int f1532b;

    /* renamed from: d */
    public boolean f1533d;

    public C0441j() {
        this(4);
    }

    /* renamed from: A */
    public boolean m26471A(int i) {
        return m26468D(i) >= 0;
    }

    /* renamed from: D */
    public int m26468D(int i) {
        int m26456z = m26456z(i);
        if (m26456z >= 0) {
            return m26456z;
        }
        return -1;
    }

    /* renamed from: O */
    public int m26458O() {
        return m26470B(this.f1532b - 1);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0441j)) {
            return false;
        }
        C0441j c0441j = (C0441j) obj;
        if (this.f1533d != c0441j.f1533d || this.f1532b != c0441j.f1532b) {
            return false;
        }
        for (int i = 0; i < this.f1532b; i++) {
            if (this.f1531a[i] != c0441j.f1531a[i]) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i = 0;
        for (int i2 = 0; i2 < this.f1532b; i2++) {
            i = (i * 31) + this.f1531a[i2];
        }
        return i;
    }

    public int size() {
        return this.f1532b;
    }

    static {
        C0441j c0441j = new C0441j(0);
        f1530k = c0441j;
        c0441j.setImmutable();
    }

    public C0441j(int i) {
        super(true);
        try {
            this.f1531a = new int[i];
            this.f1532b = 0;
            this.f1533d = true;
        } catch (NegativeArraySizeException unused) {
            throw new IllegalArgumentException("size < 0");
        }
    }

    /* renamed from: F */
    public static C0441j m26466F(int i) {
        C0441j c0441j = new C0441j(1);
        c0441j.m26457x(i);
        c0441j.setImmutable();
        return c0441j;
    }

    /* renamed from: H */
    public static C0441j m26465H(int i, int i2) {
        C0441j c0441j = new C0441j(2);
        c0441j.m26457x(i);
        c0441j.m26457x(i2);
        c0441j.setImmutable();
        return c0441j;
    }

    /* renamed from: B */
    public int m26470B(int i) {
        if (i < this.f1532b) {
            try {
                return this.f1531a[i];
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new IndexOutOfBoundsException("n < 0");
            }
        }
        throw new IndexOutOfBoundsException("n >= size()");
    }

    /* renamed from: C */
    public final void m26469C() {
        int i = this.f1532b;
        int[] iArr = this.f1531a;
        if (i == iArr.length) {
            int[] iArr2 = new int[((i * 3) / 2) + 10];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            this.f1531a = iArr2;
        }
    }

    /* renamed from: E */
    public void m26467E(int i, int i2) {
        if (i <= this.f1532b) {
            m26469C();
            int[] iArr = this.f1531a;
            int i3 = i + 1;
            System.arraycopy(iArr, i, iArr, i3, this.f1532b - i);
            int[] iArr2 = this.f1531a;
            iArr2[i] = i2;
            boolean z = true;
            int i4 = this.f1532b + 1;
            this.f1532b = i4;
            if (!this.f1533d || ((i != 0 && i2 <= iArr2[i - 1]) || (i != i4 - 1 && i2 >= iArr2[i3]))) {
                z = false;
            }
            this.f1533d = z;
            return;
        }
        throw new IndexOutOfBoundsException("n > size()");
    }

    /* renamed from: I */
    public C0441j m26464I() {
        int i = this.f1532b;
        C0441j c0441j = new C0441j(i);
        for (int i2 = 0; i2 < i; i2++) {
            c0441j.m26457x(this.f1531a[i2]);
        }
        return c0441j;
    }

    /* renamed from: K */
    public void m26462K(int i) {
        int i2;
        if (i < this.f1532b) {
            int[] iArr = this.f1531a;
            System.arraycopy(iArr, i + 1, iArr, i, (i2 - i) - 1);
            this.f1532b--;
            return;
        }
        throw new IndexOutOfBoundsException("n >= size()");
    }

    /* renamed from: M */
    public void m26460M(int i) {
        if (i >= 0) {
            if (i <= this.f1532b) {
                throwIfImmutable();
                this.f1532b = i;
                return;
            }
            throw new IllegalArgumentException("newSize > size");
        }
        throw new IllegalArgumentException("newSize < 0");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((this.f1532b * 5) + 10);
        sb.append('{');
        for (int i = 0; i < this.f1532b; i++) {
            if (i != 0) {
                sb.append(", ");
            }
            sb.append(this.f1531a[i]);
        }
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: z */
    public int m26456z(int i) {
        int i2 = this.f1532b;
        if (!this.f1533d) {
            for (int i3 = 0; i3 < i2; i3++) {
                if (this.f1531a[i3] == i) {
                    return i3;
                }
            }
            return -i2;
        }
        int i4 = -1;
        int i5 = i2;
        while (i5 > i4 + 1) {
            int i6 = ((i5 - i4) >> 1) + i4;
            if (i <= this.f1531a[i6]) {
                i5 = i6;
            } else {
                i4 = i6;
            }
        }
        if (i5 != i2) {
            if (i != this.f1531a[i5]) {
                return (-i5) - 1;
            }
            return i5;
        }
        return (-i2) - 1;
    }

    /* renamed from: J */
    public int m26463J() {
        throwIfImmutable();
        this.f1532b--;
        return m26470B(this.f1532b - 1);
    }

    /* renamed from: L */
    public void m26461L(int i, int i2) {
        throwIfImmutable();
        if (i < this.f1532b) {
            try {
                this.f1531a[i] = i2;
                this.f1533d = false;
                return;
            } catch (ArrayIndexOutOfBoundsException unused) {
                if (i >= 0) {
                    return;
                }
                throw new IllegalArgumentException("n < 0");
            }
        }
        throw new IndexOutOfBoundsException("n >= size()");
    }

    /* renamed from: N */
    public void m26459N() {
        throwIfImmutable();
        if (!this.f1533d) {
            Arrays.sort(this.f1531a, 0, this.f1532b);
            this.f1533d = true;
        }
    }

    /* renamed from: x */
    public void m26457x(int i) {
        throwIfImmutable();
        m26469C();
        int[] iArr = this.f1531a;
        int i2 = this.f1532b;
        int i3 = i2 + 1;
        this.f1532b = i3;
        iArr[i2] = i;
        if (this.f1533d) {
            boolean z = true;
            if (i3 > 1) {
                if (i < iArr[i3 - 2]) {
                    z = false;
                }
                this.f1533d = z;
            }
        }
    }
}
