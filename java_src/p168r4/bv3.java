package p168r4;

import android.util.SparseArray;
/* renamed from: r4.bv3 */
/* loaded from: classes2.dex */
public final class bv3<V> {

    /* renamed from: c */
    public final InterfaceC6052na<V> f21241c;

    /* renamed from: b */
    public final SparseArray<V> f21240b = new SparseArray<>();

    /* renamed from: a */
    public int f21239a = -1;

    public bv3(InterfaceC6052na<V> interfaceC6052na) {
        this.f21241c = interfaceC6052na;
    }

    /* renamed from: c */
    public final V m12687c() {
        SparseArray<V> sparseArray = this.f21240b;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }

    /* renamed from: d */
    public final void m12686d(int i) {
        int i2 = 0;
        while (i2 < this.f21240b.size() - 1) {
            int i3 = i2 + 1;
            if (i >= this.f21240b.keyAt(i3)) {
                ((su3) this.f21240b.valueAt(i2)).f31520b;
                this.f21240b.removeAt(i2);
                int i4 = this.f21239a;
                if (i4 > 0) {
                    this.f21239a = i4 - 1;
                }
                i2 = i3;
            } else {
                return;
            }
        }
    }

    /* renamed from: e */
    public final void m12685e() {
        for (int i = 0; i < this.f21240b.size(); i++) {
            ((su3) this.f21240b.valueAt(i)).f31520b;
        }
        this.f21239a = -1;
        this.f21240b.clear();
    }

    /* renamed from: f */
    public final boolean m12684f() {
        return this.f21240b.size() == 0;
    }

    /* renamed from: a */
    public final V m12689a(int i) {
        if (this.f21239a == -1) {
            this.f21239a = 0;
        }
        while (true) {
            int i2 = this.f21239a;
            if (i2 > 0 && i < this.f21240b.keyAt(i2)) {
                this.f21239a--;
            }
        }
        while (this.f21239a < this.f21240b.size() - 1 && i >= this.f21240b.keyAt(this.f21239a + 1)) {
            this.f21239a++;
        }
        return this.f21240b.valueAt(this.f21239a);
    }

    /* renamed from: b */
    public final void m12688b(int i, V v) {
        boolean z;
        boolean z2 = true;
        if (this.f21239a == -1) {
            if (this.f21240b.size() == 0) {
                z = true;
            } else {
                z = false;
            }
            C5903ja.m10371d(z);
            this.f21239a = 0;
        }
        if (this.f21240b.size() > 0) {
            SparseArray<V> sparseArray = this.f21240b;
            int keyAt = sparseArray.keyAt(sparseArray.size() - 1);
            if (i < keyAt) {
                z2 = false;
            }
            C5903ja.m10374a(z2);
            if (keyAt == i) {
                SparseArray<V> sparseArray2 = this.f21240b;
                ((su3) sparseArray2.valueAt(sparseArray2.size() - 1)).f31520b;
            }
        }
        this.f21240b.append(i, v);
    }
}
