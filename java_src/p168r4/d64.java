package p168r4;

import android.util.Log;
/* renamed from: r4.d64 */
/* loaded from: classes2.dex */
public final class d64 implements a74 {

    /* renamed from: a */
    public final m54 f22117a;

    /* renamed from: b */
    public final C6386wb f22118b = new C6386wb(new byte[10], 10);

    /* renamed from: c */
    public int f22119c = 0;

    /* renamed from: d */
    public int f22120d;

    /* renamed from: e */
    public C5758fc f22121e;

    /* renamed from: f */
    public boolean f22122f;

    /* renamed from: g */
    public boolean f22123g;

    /* renamed from: h */
    public boolean f22124h;

    /* renamed from: i */
    public int f22125i;

    /* renamed from: j */
    public int f22126j;

    /* renamed from: k */
    public boolean f22127k;

    public d64(m54 m54Var) {
        this.f22117a = m54Var;
    }

    @Override // p168r4.a74
    /* renamed from: a */
    public final void mo9145a() {
        this.f22119c = 0;
        this.f22120d = 0;
        this.f22124h = false;
        this.f22117a.zza();
    }

    @Override // p168r4.a74
    /* renamed from: b */
    public final void mo9144b(C5758fc c5758fc, d04 d04Var, z64 z64Var) {
        this.f22121e = c5758fc;
        this.f22117a.mo4425a(d04Var, z64Var);
    }

    @Override // p168r4.a74
    /* renamed from: c */
    public final void mo9143c(C6423xb c6423xb, int i) {
        long j;
        int i2;
        C5903ja.m10370e(this.f22121e);
        int i3 = -1;
        int i4 = 2;
        if ((i & 1) != 0) {
            int i5 = this.f22119c;
            if (i5 != 0 && i5 != 1) {
                if (i5 != 2) {
                    int i6 = this.f22126j;
                    if (i6 != -1) {
                        StringBuilder sb = new StringBuilder(59);
                        sb.append("Unexpected start indicator: expected ");
                        sb.append(i6);
                        sb.append(" more bytes");
                        Log.w("PesReader", sb.toString());
                    }
                    this.f22117a.mo4423c();
                } else {
                    Log.w("PesReader", "Unexpected start indicator reading extended header");
                }
            }
            m12221d(1);
        }
        int i7 = i;
        while (c6423xb.m5407l() > 0) {
            int i8 = this.f22119c;
            if (i8 != 0) {
                int i9 = 0;
                if (i8 != 1) {
                    if (i8 != i4) {
                        int m5407l = c6423xb.m5407l();
                        int i10 = this.f22126j;
                        if (i10 != i3) {
                            i9 = m5407l - i10;
                        }
                        if (i9 > 0) {
                            m5407l -= i9;
                            c6423xb.m5405n(c6423xb.m5404o() + m5407l);
                        }
                        this.f22117a.mo4424b(c6423xb);
                        int i11 = this.f22126j;
                        if (i11 != i3) {
                            int i12 = i11 - m5407l;
                            this.f22126j = i12;
                            if (i12 == 0) {
                                this.f22117a.mo4423c();
                                m12221d(1);
                            }
                        }
                    } else {
                        if (m12220e(c6423xb, this.f22118b.f33149a, Math.min(10, this.f22125i)) && m12220e(c6423xb, null, this.f22125i)) {
                            this.f22118b.m5789d(0);
                            if (this.f22122f) {
                                this.f22118b.m5787f(4);
                                int m5785h = this.f22118b.m5785h(3);
                                this.f22118b.m5787f(1);
                                int m5785h2 = this.f22118b.m5785h(15);
                                this.f22118b.m5787f(1);
                                long m5785h3 = (m5785h2 << 15) | (m5785h << 30) | this.f22118b.m5785h(15);
                                this.f22118b.m5787f(1);
                                if (!this.f22124h && this.f22123g) {
                                    this.f22118b.m5787f(4);
                                    int m5785h4 = this.f22118b.m5785h(3);
                                    this.f22118b.m5787f(1);
                                    int m5785h5 = this.f22118b.m5785h(15);
                                    this.f22118b.m5787f(1);
                                    int m5785h6 = this.f22118b.m5785h(15);
                                    this.f22118b.m5787f(1);
                                    this.f22121e.m11580e((m5785h4 << 30) | (m5785h5 << 15) | m5785h6);
                                    this.f22124h = true;
                                }
                                j = this.f22121e.m11580e(m5785h3);
                            } else {
                                j = -9223372036854775807L;
                            }
                            if (true != this.f22127k) {
                                i2 = 0;
                            } else {
                                i2 = 4;
                            }
                            i7 |= i2;
                            this.f22117a.mo4422d(j, i7);
                            m12221d(3);
                            i3 = -1;
                        }
                    }
                } else if (m12220e(c6423xb, this.f22118b.f33149a, 9)) {
                    int i13 = 0;
                    this.f22118b.m5789d(0);
                    int m5785h7 = this.f22118b.m5785h(24);
                    if (m5785h7 != 1) {
                        StringBuilder sb2 = new StringBuilder(41);
                        sb2.append("Unexpected start code prefix: ");
                        sb2.append(m5785h7);
                        Log.w("PesReader", sb2.toString());
                        i3 = -1;
                        this.f22126j = -1;
                    } else {
                        this.f22118b.m5787f(8);
                        int m5785h8 = this.f22118b.m5785h(16);
                        this.f22118b.m5787f(5);
                        this.f22127k = this.f22118b.m5786g();
                        this.f22118b.m5787f(2);
                        this.f22122f = this.f22118b.m5786g();
                        this.f22123g = this.f22118b.m5786g();
                        this.f22118b.m5787f(6);
                        int m5785h9 = this.f22118b.m5785h(8);
                        this.f22125i = m5785h9;
                        if (m5785h8 == 0) {
                            this.f22126j = -1;
                        } else {
                            int i14 = (m5785h8 - 3) - m5785h9;
                            this.f22126j = i14;
                            if (i14 < 0) {
                                StringBuilder sb3 = new StringBuilder(47);
                                sb3.append("Found negative packet payload size: ");
                                sb3.append(i14);
                                Log.w("PesReader", sb3.toString());
                                i3 = -1;
                                this.f22126j = -1;
                                i13 = 2;
                            }
                        }
                        i3 = -1;
                        i13 = 2;
                    }
                    m12221d(i13);
                } else {
                    i3 = -1;
                }
            } else {
                c6423xb.m5400s(c6423xb.m5407l());
            }
            i4 = 2;
        }
    }

    /* renamed from: d */
    public final void m12221d(int i) {
        this.f22119c = i;
        this.f22120d = 0;
    }

    /* renamed from: e */
    public final boolean m12220e(C6423xb c6423xb, byte[] bArr, int i) {
        int min = Math.min(c6423xb.m5407l(), i - this.f22120d);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            c6423xb.m5400s(min);
        } else {
            c6423xb.m5398u(bArr, this.f22120d, min);
        }
        int i2 = this.f22120d + min;
        this.f22120d = i2;
        if (i2 == i) {
            return true;
        }
        return false;
    }
}
