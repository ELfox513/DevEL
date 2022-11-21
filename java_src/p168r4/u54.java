package p168r4;

import android.util.SparseArray;
/* renamed from: r4.u54 */
/* loaded from: classes2.dex */
public final class u54 {

    /* renamed from: a */
    public final d14 f32186a;

    /* renamed from: d */
    public final C6460yb f32189d;

    /* renamed from: e */
    public final byte[] f32190e;

    /* renamed from: f */
    public int f32191f;

    /* renamed from: g */
    public long f32192g;

    /* renamed from: h */
    public long f32193h;

    /* renamed from: l */
    public long f32197l;

    /* renamed from: m */
    public long f32198m;

    /* renamed from: n */
    public boolean f32199n;

    /* renamed from: b */
    public final SparseArray<C6015mb> f32187b = new SparseArray<>();

    /* renamed from: c */
    public final SparseArray<C5978lb> f32188c = new SparseArray<>();

    /* renamed from: i */
    public final t54 f32194i = new t54(null);

    /* renamed from: j */
    public final t54 f32195j = new t54(null);

    /* renamed from: k */
    public boolean f32196k = false;

    /* renamed from: a */
    public final void m6634a(C6015mb c6015mb) {
        this.f32187b.append(c6015mb.f27564d, c6015mb);
    }

    /* renamed from: b */
    public final void m6633b(C5978lb c5978lb) {
        this.f32188c.append(c5978lb.f27155a, c5978lb);
    }

    /* renamed from: c */
    public final void m6632c() {
        this.f32196k = false;
    }

    /* renamed from: d */
    public final void m6631d(long j, int i, long j2) {
        this.f32191f = i;
        this.f32193h = j2;
        this.f32192g = j;
    }

    /* renamed from: e */
    public final boolean m6630e(long j, int i, boolean z, boolean z2) {
        boolean z3 = false;
        if (this.f32191f == 9) {
            if (z && this.f32196k) {
                long j2 = this.f32192g;
                int i2 = i + ((int) (j - j2));
                long j3 = this.f32198m;
                if (j3 != -9223372036854775807L) {
                    boolean z4 = this.f32199n;
                    long j4 = this.f32197l;
                    this.f32186a.mo4005e(j3, z4 ? 1 : 0, (int) (j2 - j4), i2, null);
                }
            }
            this.f32197l = this.f32192g;
            this.f32198m = this.f32193h;
            this.f32199n = false;
            this.f32196k = true;
        }
        boolean z5 = this.f32199n;
        int i3 = this.f32191f;
        if (i3 == 5 || (z2 && i3 == 1)) {
            z3 = true;
        }
        boolean z6 = z5 | z3;
        this.f32199n = z6;
        return z6;
    }

    public u54(d14 d14Var, boolean z, boolean z2) {
        this.f32186a = d14Var;
        byte[] bArr = new byte[128];
        this.f32190e = bArr;
        this.f32189d = new C6460yb(bArr, 0, 0);
    }
}
