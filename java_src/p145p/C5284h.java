package p145p;

import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* renamed from: p.h */
/* loaded from: classes.dex */
public class C5284h<E> implements Cloneable {

    /* renamed from: p */
    public static final Object f19823p = new Object();

    /* renamed from: a */
    public boolean f19824a;

    /* renamed from: b */
    public int[] f19825b;

    /* renamed from: d */
    public Object[] f19826d;

    /* renamed from: k */
    public int f19827k;

    public C5284h() {
        this(10);
    }

    /* renamed from: h */
    public E m13651h(int i) {
        return m13650i(i, null);
    }

    public C5284h(int i) {
        this.f19824a = false;
        if (i == 0) {
            this.f19825b = C5274c.f19785a;
            this.f19826d = C5274c.f19787c;
            return;
        }
        int m13710e = C5274c.m13710e(i);
        this.f19825b = new int[m13710e];
        this.f19826d = new Object[m13710e];
    }

    /* renamed from: a */
    public void m13655a(int i, E e) {
        int i2 = this.f19827k;
        if (i2 != 0 && i <= this.f19825b[i2 - 1]) {
            m13647n(i, e);
            return;
        }
        if (this.f19824a && i2 >= this.f19825b.length) {
            m13652f();
        }
        int i3 = this.f19827k;
        if (i3 >= this.f19825b.length) {
            int m13710e = C5274c.m13710e(i3 + 1);
            int[] iArr = new int[m13710e];
            Object[] objArr = new Object[m13710e];
            int[] iArr2 = this.f19825b;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f19826d;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f19825b = iArr;
            this.f19826d = objArr;
        }
        this.f19825b[i3] = i;
        this.f19826d[i3] = e;
        this.f19827k = i3 + 1;
    }

    /* renamed from: b */
    public void m13654b() {
        int i = this.f19827k;
        Object[] objArr = this.f19826d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f19827k = 0;
        this.f19824a = false;
    }

    /* renamed from: f */
    public final void m13652f() {
        int i = this.f19827k;
        int[] iArr = this.f19825b;
        Object[] objArr = this.f19826d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f19823p) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f19824a = false;
        this.f19827k = i2;
    }

    /* renamed from: i */
    public E m13650i(int i, E e) {
        E e2;
        int m13714a = C5274c.m13714a(this.f19825b, this.f19827k, i);
        if (m13714a >= 0 && (e2 = (E) this.f19826d[m13714a]) != f19823p) {
            return e2;
        }
        return e;
    }

    /* renamed from: j */
    public int m13649j(int i) {
        if (this.f19824a) {
            m13652f();
        }
        return C5274c.m13714a(this.f19825b, this.f19827k, i);
    }

    /* renamed from: l */
    public int m13648l(int i) {
        if (this.f19824a) {
            m13652f();
        }
        return this.f19825b[i];
    }

    /* renamed from: n */
    public void m13647n(int i, E e) {
        int m13714a = C5274c.m13714a(this.f19825b, this.f19827k, i);
        if (m13714a >= 0) {
            this.f19826d[m13714a] = e;
            return;
        }
        int i2 = m13714a ^ (-1);
        int i3 = this.f19827k;
        if (i2 < i3) {
            Object[] objArr = this.f19826d;
            if (objArr[i2] == f19823p) {
                this.f19825b[i2] = i;
                objArr[i2] = e;
                return;
            }
        }
        if (this.f19824a && i3 >= this.f19825b.length) {
            m13652f();
            i2 = C5274c.m13714a(this.f19825b, this.f19827k, i) ^ (-1);
        }
        int i4 = this.f19827k;
        if (i4 >= this.f19825b.length) {
            int m13710e = C5274c.m13710e(i4 + 1);
            int[] iArr = new int[m13710e];
            Object[] objArr2 = new Object[m13710e];
            int[] iArr2 = this.f19825b;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f19826d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f19825b = iArr;
            this.f19826d = objArr2;
        }
        int i5 = this.f19827k;
        if (i5 - i2 != 0) {
            int[] iArr3 = this.f19825b;
            int i6 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i6, i5 - i2);
            Object[] objArr4 = this.f19826d;
            System.arraycopy(objArr4, i2, objArr4, i6, this.f19827k - i2);
        }
        this.f19825b[i2] = i;
        this.f19826d[i2] = e;
        this.f19827k++;
    }

    /* renamed from: o */
    public void m13646o(int i) {
        int m13714a = C5274c.m13714a(this.f19825b, this.f19827k, i);
        if (m13714a >= 0) {
            Object[] objArr = this.f19826d;
            Object obj = objArr[m13714a];
            Object obj2 = f19823p;
            if (obj != obj2) {
                objArr[m13714a] = obj2;
                this.f19824a = true;
            }
        }
    }

    /* renamed from: p */
    public int m13645p() {
        if (this.f19824a) {
            m13652f();
        }
        return this.f19827k;
    }

    /* renamed from: t */
    public E m13644t(int i) {
        if (this.f19824a) {
            m13652f();
        }
        return (E) this.f19826d[i];
    }

    /* renamed from: c */
    public C5284h<E> clone() {
        try {
            C5284h<E> c5284h = (C5284h) super.clone();
            c5284h.f19825b = (int[]) this.f19825b.clone();
            c5284h.f19826d = (Object[]) this.f19826d.clone();
            return c5284h;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public String toString() {
        if (m13645p() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f19827k * 28);
        sb.append('{');
        for (int i = 0; i < this.f19827k; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m13648l(i));
            sb.append(SignatureVisitor.INSTANCEOF);
            E m13644t = m13644t(i);
            if (m13644t != this) {
                sb.append(m13644t);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
