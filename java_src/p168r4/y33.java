package p168r4;

import java.util.Arrays;
import java.util.Set;
/* renamed from: r4.y33 */
/* loaded from: classes2.dex */
public abstract class y33<E> extends j33<E> implements Set<E> {

    /* renamed from: b */
    public transient o33<E> f33875b;

    /* renamed from: o */
    public static <E> y33<E> m4917o() {
        return j53.f25902t;
    }

    /* renamed from: t */
    public static int m4913t(int i) {
        boolean z;
        double d;
        int max = Math.max(i, 2);
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1);
            do {
                highestOneBit += highestOneBit;
                d = highestOneBit;
                Double.isNaN(d);
            } while (d * 0.7d < max);
            return highestOneBit;
        }
        if (max < 1073741824) {
            z = true;
        } else {
            z = false;
        }
        z03.m4496a(z, "collection too large");
        return 1073741824;
    }

    /* renamed from: w */
    public static <E> x33<E> m4910w(int i) {
        return new x33<>(i);
    }

    /* renamed from: y */
    public static boolean m4908y(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    @Override // p168r4.j33, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: d */
    public abstract r53<E> iterator();

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof y33) && mo4912u() && ((y33) obj).mo4912u() && hashCode() != obj.hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    if (containsAll(set)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return n53.m9158a(this);
    }

    @Override // p168r4.j33
    /* renamed from: k */
    public o33<E> mo4918k() {
        o33<E> o33Var = this.f33875b;
        if (o33Var == null) {
            o33<E> mo4911v = mo4911v();
            this.f33875b = mo4911v;
            return mo4911v;
        }
        return o33Var;
    }

    /* renamed from: u */
    public boolean mo4912u() {
        return false;
    }

    /* renamed from: v */
    public o33<E> mo4911v() {
        return o33.m8891z(toArray());
    }

    @SafeVarargs
    /* renamed from: q */
    public static <E> y33<E> m4916q(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        Object[] objArr = new Object[11];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        System.arraycopy(eArr, 0, objArr, 6, 5);
        return m4909x(11, objArr);
    }

    /* renamed from: x */
    public static <E> y33<E> m4909x(int i, Object... objArr) {
        if (i != 0) {
            if (i != 1) {
                int m4913t = m4913t(i);
                Object[] objArr2 = new Object[m4913t];
                int i2 = m4913t - 1;
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < i; i5++) {
                    Object obj = objArr[i5];
                    a53.m13045b(obj, i5);
                    int hashCode = obj.hashCode();
                    int m11298a = g33.m11298a(hashCode);
                    while (true) {
                        int i6 = m11298a & i2;
                        Object obj2 = objArr2[i6];
                        if (obj2 == null) {
                            objArr[i4] = obj;
                            objArr2[i6] = obj;
                            i3 += hashCode;
                            i4++;
                            break;
                        } else if (obj2.equals(obj)) {
                            break;
                        } else {
                            m11298a++;
                        }
                    }
                }
                Arrays.fill(objArr, i4, i, (Object) null);
                if (i4 == 1) {
                    Object obj3 = objArr[0];
                    obj3.getClass();
                    return new o53(obj3, i3);
                } else if (m4913t(i4) < m4913t / 2) {
                    return m4909x(i4, objArr);
                } else {
                    if (m4908y(i4, objArr.length)) {
                        objArr = Arrays.copyOf(objArr, i4);
                    }
                    return new j53(objArr, i3, objArr2, i2, i4);
                }
            }
            Object obj4 = objArr[0];
            obj4.getClass();
            return new o53(obj4);
        }
        return j53.f25902t;
    }
}
