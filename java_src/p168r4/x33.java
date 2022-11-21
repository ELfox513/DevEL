package p168r4;

import java.util.Arrays;
/* renamed from: r4.x33 */
/* loaded from: classes2.dex */
public final class x33<E> extends h33<E> {

    /* renamed from: d */
    public Object[] f33433d;

    /* renamed from: e */
    public int f33434e;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p168r4.i33
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ i33 mo5509a(Object obj) {
        m5508f(obj);
        return this;
    }

    /* renamed from: g */
    public final x33<E> m5507g(Iterable<? extends E> iterable) {
        if (this.f33433d != null) {
            for (E e : iterable) {
                m5508f(e);
            }
        } else {
            super.m10987d(iterable);
        }
        return this;
    }

    /* renamed from: h */
    public final y33<E> m5506h() {
        y33<E> m4909x;
        boolean m4908y;
        Object[] objArr;
        int i = this.f24435b;
        if (i != 0) {
            if (i != 1) {
                if (this.f33433d != null && y33.m4913t(i) == this.f33433d.length) {
                    m4908y = y33.m4908y(this.f24435b, this.f24434a.length);
                    if (m4908y) {
                        objArr = Arrays.copyOf(this.f24434a, this.f24435b);
                    } else {
                        objArr = this.f24434a;
                    }
                    int i2 = this.f33434e;
                    Object[] objArr2 = this.f33433d;
                    m4909x = new j53<>(objArr, i2, objArr2, objArr2.length - 1, this.f24435b);
                } else {
                    m4909x = y33.m4909x(this.f24435b, this.f24434a);
                    this.f24435b = m4909x.size();
                }
                this.f24436c = true;
                this.f33433d = null;
                return m4909x;
            }
            Object obj = this.f24434a[0];
            obj.getClass();
            return new o53(obj);
        }
        return j53.f25902t;
    }

    public x33(int i) {
        super(i);
        this.f33433d = new Object[y33.m4913t(i)];
    }

    /* renamed from: f */
    public final x33<E> m5508f(E e) {
        e.getClass();
        if (this.f33433d != null) {
            int m4913t = y33.m4913t(this.f24435b);
            int length = this.f33433d.length;
            if (m4913t <= length) {
                int i = length - 1;
                int hashCode = e.hashCode();
                int m11298a = g33.m11298a(hashCode);
                while (true) {
                    int i2 = m11298a & i;
                    Object[] objArr = this.f33433d;
                    Object obj = objArr[i2];
                    if (obj == null) {
                        objArr[i2] = e;
                        this.f33434e += hashCode;
                        super.m10988c(e);
                        break;
                    } else if (obj.equals(e)) {
                        break;
                    } else {
                        m11298a = i2 + 1;
                    }
                }
                return this;
            }
        }
        this.f33433d = null;
        super.m10988c(e);
        return this;
    }
}
