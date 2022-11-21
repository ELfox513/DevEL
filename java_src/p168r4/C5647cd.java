package p168r4;

import android.util.Log;
/* renamed from: r4.cd */
/* loaded from: classes2.dex */
public final class C5647cd {

    /* renamed from: a */
    public final InterfaceC6319ui f21477a;

    /* renamed from: b */
    public final Object f21478b;

    /* renamed from: c */
    public final int f21479c;

    /* renamed from: d */
    public final InterfaceC5839hj[] f21480d;

    /* renamed from: e */
    public final boolean[] f21481e;

    /* renamed from: f */
    public final long f21482f;

    /* renamed from: g */
    public int f21483g;

    /* renamed from: h */
    public long f21484h;

    /* renamed from: i */
    public boolean f21485i;

    /* renamed from: j */
    public boolean f21486j;

    /* renamed from: k */
    public boolean f21487k;

    /* renamed from: l */
    public C5647cd f21488l;

    /* renamed from: m */
    public C5618bk f21489m;

    /* renamed from: n */
    public final InterfaceC6055nd[] f21490n;

    /* renamed from: o */
    public final InterfaceC6092od[] f21491o;

    /* renamed from: p */
    public final AbstractC5581ak f21492p;

    /* renamed from: q */
    public final InterfaceC6393wi f21493q;

    /* renamed from: r */
    public C5618bk f21494r;

    /* renamed from: s */
    public final mp0 f21495s;

    public C5647cd(InterfaceC6055nd[] interfaceC6055ndArr, InterfaceC6092od[] interfaceC6092odArr, long j, AbstractC5581ak abstractC5581ak, mp0 mp0Var, InterfaceC6393wi interfaceC6393wi, Object obj, int i, int i2, boolean z, long j2, byte[] bArr) {
        this.f21490n = interfaceC6055ndArr;
        this.f21491o = interfaceC6092odArr;
        this.f21482f = j;
        this.f21492p = abstractC5581ak;
        this.f21495s = mp0Var;
        this.f21493q = interfaceC6393wi;
        obj.getClass();
        this.f21478b = obj;
        this.f21479c = i;
        this.f21483g = i2;
        this.f21485i = z;
        this.f21484h = j2;
        this.f21480d = new InterfaceC5839hj[2];
        this.f21481e = new boolean[2];
        this.f21477a = interfaceC6393wi.mo5717d(i2, mp0Var.m9290l());
    }

    /* renamed from: a */
    public final boolean m12489a() {
        return this.f21486j && (!this.f21487k || this.f21477a.mo5297m() == Long.MIN_VALUE);
    }

    /* renamed from: c */
    public final long m12487c(long j, boolean z) {
        return m12486d(j, false, new boolean[2]);
    }

    /* renamed from: d */
    public final long m12486d(long j, boolean z, boolean[] zArr) {
        boolean z2;
        boolean z3;
        C6468yj c6468yj = this.f21489m.f21084b;
        int i = 0;
        while (true) {
            boolean z4 = true;
            if (i >= 2) {
                break;
            }
            boolean[] zArr2 = this.f21481e;
            if (z || !this.f21489m.m12767a(this.f21494r, i)) {
                z4 = false;
            }
            zArr2[i] = z4;
            i++;
        }
        long mo5302e = this.f21477a.mo5302e(c6468yj.m4680b(), this.f21481e, this.f21480d, zArr, j);
        this.f21494r = this.f21489m;
        this.f21487k = false;
        int i2 = 0;
        while (true) {
            InterfaceC5839hj[] interfaceC5839hjArr = this.f21480d;
            if (i2 < 2) {
                if (interfaceC5839hjArr[i2] != null) {
                    if (c6468yj.m4681a(i2) != null) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    C6358vk.m6137d(z3);
                    this.f21487k = true;
                } else {
                    if (c6468yj.m4681a(i2) == null) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    C6358vk.m6137d(z2);
                }
                i2++;
            } else {
                this.f21495s.m9300b(this.f21490n, this.f21489m.f21083a, c6468yj);
                return mo5302e;
            }
        }
    }

    /* renamed from: b */
    public final boolean m12488b() {
        C5618bk mo5711a = this.f21492p.mo5711a(this.f21491o, this.f21477a.mo5295p());
        C5618bk c5618bk = this.f21494r;
        if (c5618bk != null) {
            for (int i = 0; i < 2; i++) {
                if (mo5711a.m12767a(c5618bk, i)) {
                }
            }
            return false;
        }
        this.f21489m = mo5711a;
        return true;
    }

    /* renamed from: e */
    public final void m12485e() {
        try {
            this.f21493q.mo5719b(this.f21477a);
        } catch (RuntimeException e) {
            Log.e("ExoPlayerImplInternal", "Period release failed.", e);
        }
    }
}
