package p145p;

import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* renamed from: p.d */
/* loaded from: classes.dex */
public class C5275d<E> implements Cloneable {

    /* renamed from: p */
    public static final Object f19788p = new Object();

    /* renamed from: a */
    public boolean f19789a;

    /* renamed from: b */
    public long[] f19790b;

    /* renamed from: d */
    public Object[] f19791d;

    /* renamed from: k */
    public int f19792k;

    public C5275d() {
        this(10);
    }

    /* renamed from: h */
    public E m13704h(long j) {
        return m13703i(j, null);
    }

    public C5275d(int i) {
        this.f19789a = false;
        if (i == 0) {
            this.f19790b = C5274c.f19786b;
            this.f19791d = C5274c.f19787c;
            return;
        }
        int m13709f = C5274c.m13709f(i);
        this.f19790b = new long[m13709f];
        this.f19791d = new Object[m13709f];
    }

    /* renamed from: a */
    public void m13708a(long j, E e) {
        int i = this.f19792k;
        if (i != 0 && j <= this.f19790b[i - 1]) {
            m13701l(j, e);
            return;
        }
        if (this.f19789a && i >= this.f19790b.length) {
            m13705f();
        }
        int i2 = this.f19792k;
        if (i2 >= this.f19790b.length) {
            int m13709f = C5274c.m13709f(i2 + 1);
            long[] jArr = new long[m13709f];
            Object[] objArr = new Object[m13709f];
            long[] jArr2 = this.f19790b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.f19791d;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f19790b = jArr;
            this.f19791d = objArr;
        }
        this.f19790b[i2] = j;
        this.f19791d[i2] = e;
        this.f19792k = i2 + 1;
    }

    /* renamed from: b */
    public void m13707b() {
        int i = this.f19792k;
        Object[] objArr = this.f19791d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f19792k = 0;
        this.f19789a = false;
    }

    /* renamed from: f */
    public final void m13705f() {
        int i = this.f19792k;
        long[] jArr = this.f19790b;
        Object[] objArr = this.f19791d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f19788p) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f19789a = false;
        this.f19792k = i2;
    }

    /* renamed from: i */
    public E m13703i(long j, E e) {
        E e2;
        int m13713b = C5274c.m13713b(this.f19790b, this.f19792k, j);
        if (m13713b >= 0 && (e2 = (E) this.f19791d[m13713b]) != f19788p) {
            return e2;
        }
        return e;
    }

    /* renamed from: j */
    public long m13702j(int i) {
        if (this.f19789a) {
            m13705f();
        }
        return this.f19790b[i];
    }

    /* renamed from: l */
    public void m13701l(long j, E e) {
        int m13713b = C5274c.m13713b(this.f19790b, this.f19792k, j);
        if (m13713b >= 0) {
            this.f19791d[m13713b] = e;
            return;
        }
        int i = m13713b ^ (-1);
        int i2 = this.f19792k;
        if (i < i2) {
            Object[] objArr = this.f19791d;
            if (objArr[i] == f19788p) {
                this.f19790b[i] = j;
                objArr[i] = e;
                return;
            }
        }
        if (this.f19789a && i2 >= this.f19790b.length) {
            m13705f();
            i = C5274c.m13713b(this.f19790b, this.f19792k, j) ^ (-1);
        }
        int i3 = this.f19792k;
        if (i3 >= this.f19790b.length) {
            int m13709f = C5274c.m13709f(i3 + 1);
            long[] jArr = new long[m13709f];
            Object[] objArr2 = new Object[m13709f];
            long[] jArr2 = this.f19790b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f19791d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f19790b = jArr;
            this.f19791d = objArr2;
        }
        int i4 = this.f19792k;
        if (i4 - i != 0) {
            long[] jArr3 = this.f19790b;
            int i5 = i + 1;
            System.arraycopy(jArr3, i, jArr3, i5, i4 - i);
            Object[] objArr4 = this.f19791d;
            System.arraycopy(objArr4, i, objArr4, i5, this.f19792k - i);
        }
        this.f19790b[i] = j;
        this.f19791d[i] = e;
        this.f19792k++;
    }

    /* renamed from: n */
    public void m13700n(long j) {
        int m13713b = C5274c.m13713b(this.f19790b, this.f19792k, j);
        if (m13713b >= 0) {
            Object[] objArr = this.f19791d;
            Object obj = objArr[m13713b];
            Object obj2 = f19788p;
            if (obj != obj2) {
                objArr[m13713b] = obj2;
                this.f19789a = true;
            }
        }
    }

    /* renamed from: o */
    public int m13699o() {
        if (this.f19789a) {
            m13705f();
        }
        return this.f19792k;
    }

    /* renamed from: p */
    public E m13698p(int i) {
        if (this.f19789a) {
            m13705f();
        }
        return (E) this.f19791d[i];
    }

    /* renamed from: c */
    public C5275d<E> clone() {
        try {
            C5275d<E> c5275d = (C5275d) super.clone();
            c5275d.f19790b = (long[]) this.f19790b.clone();
            c5275d.f19791d = (Object[]) this.f19791d.clone();
            return c5275d;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public String toString() {
        if (m13699o() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f19792k * 28);
        sb.append('{');
        for (int i = 0; i < this.f19792k; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m13702j(i));
            sb.append(SignatureVisitor.INSTANCEOF);
            E m13698p = m13698p(i);
            if (m13698p != this) {
                sb.append(m13698p);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
