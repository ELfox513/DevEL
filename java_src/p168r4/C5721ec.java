package p168r4;

import java.util.Arrays;
/* renamed from: r4.ec */
/* loaded from: classes2.dex */
public final class C5721ec<V> {

    /* renamed from: a */
    public long[] f22925a = new long[10];

    /* renamed from: b */
    public V[] f22926b = (V[]) new Object[10];

    /* renamed from: c */
    public int f22927c;

    /* renamed from: d */
    public int f22928d;

    public C5721ec(int i) {
    }

    /* renamed from: a */
    public final synchronized void m11824a(long j, V v) {
        int i = this.f22928d;
        if (i > 0) {
            if (j <= this.f22925a[((this.f22927c + i) - 1) % this.f22926b.length]) {
                m11823b();
            }
        }
        int length = this.f22926b.length;
        if (this.f22928d >= length) {
            int i2 = length + length;
            long[] jArr = new long[i2];
            V[] vArr = (V[]) new Object[i2];
            int i3 = this.f22927c;
            int i4 = length - i3;
            System.arraycopy(this.f22925a, i3, jArr, 0, i4);
            System.arraycopy(this.f22926b, this.f22927c, vArr, 0, i4);
            int i5 = this.f22927c;
            if (i5 > 0) {
                System.arraycopy(this.f22925a, 0, jArr, i4, i5);
                System.arraycopy(this.f22926b, 0, vArr, i4, this.f22927c);
            }
            this.f22925a = jArr;
            this.f22926b = vArr;
            this.f22927c = 0;
        }
        int i6 = this.f22927c;
        int i7 = this.f22928d;
        V[] vArr2 = this.f22926b;
        int length2 = (i6 + i7) % vArr2.length;
        this.f22925a[length2] = j;
        vArr2[length2] = v;
        this.f22928d = i7 + 1;
    }

    /* renamed from: b */
    public final synchronized void m11823b() {
        this.f22927c = 0;
        this.f22928d = 0;
        Arrays.fill(this.f22926b, (Object) null);
    }

    /* renamed from: c */
    public final synchronized int m11822c() {
        return this.f22928d;
    }

    /* renamed from: d */
    public final synchronized V m11821d() {
        if (this.f22928d == 0) {
            return null;
        }
        return m11819f();
    }

    /* renamed from: e */
    public final synchronized V m11820e(long j) {
        V v;
        v = null;
        while (this.f22928d > 0 && j - this.f22925a[this.f22927c] >= 0) {
            v = m11819f();
        }
        return v;
    }

    /* renamed from: f */
    public final V m11819f() {
        boolean z;
        if (this.f22928d > 0) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10371d(z);
        V[] vArr = this.f22926b;
        int i = this.f22927c;
        V v = vArr[i];
        vArr[i] = null;
        this.f22927c = (i + 1) % vArr.length;
        this.f22928d--;
        return v;
    }
}
