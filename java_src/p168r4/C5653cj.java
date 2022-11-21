package p168r4;

import com.prineside.tdi2.tiles.CoreTile;
/* renamed from: r4.cj */
/* loaded from: classes2.dex */
public final class C5653cj {

    /* renamed from: i */
    public int f21552i;

    /* renamed from: j */
    public int f21553j;

    /* renamed from: k */
    public int f21554k;

    /* renamed from: l */
    public int f21555l;

    /* renamed from: q */
    public C5870id f21560q;

    /* renamed from: a */
    public int f21544a = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;

    /* renamed from: b */
    public int[] f21545b = new int[CoreTile.FIXED_LEVEL_XP_REQUIREMENT];

    /* renamed from: c */
    public long[] f21546c = new long[CoreTile.FIXED_LEVEL_XP_REQUIREMENT];

    /* renamed from: f */
    public long[] f21549f = new long[CoreTile.FIXED_LEVEL_XP_REQUIREMENT];

    /* renamed from: e */
    public int[] f21548e = new int[CoreTile.FIXED_LEVEL_XP_REQUIREMENT];

    /* renamed from: d */
    public int[] f21547d = new int[CoreTile.FIXED_LEVEL_XP_REQUIREMENT];

    /* renamed from: g */
    public C6427xf[] f21550g = new C6427xf[CoreTile.FIXED_LEVEL_XP_REQUIREMENT];

    /* renamed from: h */
    public C5870id[] f21551h = new C5870id[CoreTile.FIXED_LEVEL_XP_REQUIREMENT];

    /* renamed from: m */
    public long f21556m = Long.MIN_VALUE;

    /* renamed from: n */
    public long f21557n = Long.MIN_VALUE;

    /* renamed from: p */
    public boolean f21559p = true;

    /* renamed from: o */
    public boolean f21558o = true;

    /* renamed from: a */
    public final void m12457a() {
        this.f21553j = 0;
        this.f21554k = 0;
        this.f21555l = 0;
        this.f21552i = 0;
        this.f21558o = true;
    }

    /* renamed from: b */
    public final void m12456b() {
        this.f21556m = Long.MIN_VALUE;
        this.f21557n = Long.MIN_VALUE;
    }

    /* renamed from: c */
    public final int m12455c() {
        return this.f21553j + this.f21552i;
    }

    /* renamed from: d */
    public final synchronized boolean m12454d() {
        return this.f21552i != 0;
    }

    /* renamed from: e */
    public final synchronized C5870id m12453e() {
        if (this.f21559p) {
            return null;
        }
        return this.f21560q;
    }

    /* renamed from: f */
    public final synchronized long m12452f() {
        return Math.max(this.f21556m, this.f21557n);
    }

    /* renamed from: g */
    public final synchronized int m12451g(C5906jd c5906jd, C5835hf c5835hf, boolean z, boolean z2, C5870id c5870id, C5617bj c5617bj) {
        long j;
        if (!m12454d()) {
            if (z2) {
                c5835hf.m12479e(4);
                return -4;
            }
            C5870id c5870id2 = this.f21560q;
            if (c5870id2 == null || (!z && c5870id2 == c5870id)) {
                return -3;
            }
            c5906jd.f26005a = c5870id2;
            return -5;
        }
        if (!z) {
            C5870id[] c5870idArr = this.f21551h;
            int i = this.f21554k;
            if (c5870idArr[i] == c5870id) {
                if (c5835hf.f24563c == null) {
                    return -3;
                }
                c5835hf.f24564d = this.f21549f[i];
                c5835hf.m12479e(this.f21548e[i]);
                int[] iArr = this.f21547d;
                int i2 = this.f21554k;
                c5617bj.f21069a = iArr[i2];
                c5617bj.f21070b = this.f21546c[i2];
                c5617bj.f21072d = this.f21550g[i2];
                this.f21556m = Math.max(this.f21556m, c5835hf.f24564d);
                int i3 = this.f21552i - 1;
                this.f21552i = i3;
                int i4 = this.f21554k + 1;
                this.f21554k = i4;
                this.f21553j++;
                if (i4 == this.f21544a) {
                    this.f21554k = 0;
                    i4 = 0;
                }
                if (i3 > 0) {
                    j = this.f21546c[i4];
                } else {
                    j = c5617bj.f21070b + c5617bj.f21069a;
                }
                c5617bj.f21071c = j;
                return -4;
            }
        }
        c5906jd.f26005a = this.f21551h[this.f21554k];
        return -5;
    }

    /* renamed from: h */
    public final synchronized long m12450h() {
        if (!m12454d()) {
            return -1L;
        }
        int i = this.f21554k;
        int i2 = this.f21552i;
        int i3 = i + i2;
        int i4 = this.f21544a;
        int i5 = (i3 - 1) % i4;
        this.f21554k = i3 % i4;
        this.f21553j += i2;
        this.f21552i = 0;
        return this.f21546c[i5] + this.f21547d[i5];
    }

    /* renamed from: i */
    public final synchronized long m12449i(long j, boolean z) {
        if (m12454d()) {
            long[] jArr = this.f21549f;
            int i = this.f21554k;
            if (j >= jArr[i]) {
                int i2 = 0;
                if (j > this.f21557n && !z) {
                    return -1L;
                }
                int i3 = -1;
                while (i != this.f21555l && this.f21549f[i] <= j) {
                    if (1 == (this.f21548e[i] & 1)) {
                        i3 = i2;
                    }
                    i = (i + 1) % this.f21544a;
                    i2++;
                }
                if (i3 == -1) {
                    return -1L;
                }
                int i4 = (this.f21554k + i3) % this.f21544a;
                this.f21554k = i4;
                this.f21553j += i3;
                this.f21552i -= i3;
                return this.f21546c[i4];
            }
        }
        return -1L;
    }

    /* renamed from: j */
    public final synchronized boolean m12448j(C5870id c5870id) {
        if (c5870id == null) {
            this.f21559p = true;
            return false;
        }
        this.f21559p = false;
        if (C5988ll.m9653a(c5870id, this.f21560q)) {
            return false;
        }
        this.f21560q = c5870id;
        return true;
    }

    /* renamed from: k */
    public final synchronized void m12447k(long j, int i, long j2, int i2, C6427xf c6427xf) {
        if (this.f21558o) {
            if ((i & 1) == 0) {
                return;
            }
            this.f21558o = false;
        }
        C6358vk.m6137d(!this.f21559p);
        m12446l(j);
        long[] jArr = this.f21549f;
        int i3 = this.f21555l;
        jArr[i3] = j;
        long[] jArr2 = this.f21546c;
        jArr2[i3] = j2;
        this.f21547d[i3] = i2;
        this.f21548e[i3] = i;
        this.f21550g[i3] = c6427xf;
        this.f21551h[i3] = this.f21560q;
        this.f21545b[i3] = 0;
        int i4 = this.f21552i + 1;
        this.f21552i = i4;
        int i5 = this.f21544a;
        if (i4 == i5) {
            int i6 = i5 + CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
            int[] iArr = new int[i6];
            long[] jArr3 = new long[i6];
            long[] jArr4 = new long[i6];
            int[] iArr2 = new int[i6];
            int[] iArr3 = new int[i6];
            C6427xf[] c6427xfArr = new C6427xf[i6];
            C5870id[] c5870idArr = new C5870id[i6];
            int i7 = this.f21554k;
            int i8 = i5 - i7;
            System.arraycopy(jArr2, i7, jArr3, 0, i8);
            System.arraycopy(this.f21549f, this.f21554k, jArr4, 0, i8);
            System.arraycopy(this.f21548e, this.f21554k, iArr2, 0, i8);
            System.arraycopy(this.f21547d, this.f21554k, iArr3, 0, i8);
            System.arraycopy(this.f21550g, this.f21554k, c6427xfArr, 0, i8);
            System.arraycopy(this.f21551h, this.f21554k, c5870idArr, 0, i8);
            System.arraycopy(this.f21545b, this.f21554k, iArr, 0, i8);
            int i9 = this.f21554k;
            System.arraycopy(this.f21546c, 0, jArr3, i8, i9);
            System.arraycopy(this.f21549f, 0, jArr4, i8, i9);
            System.arraycopy(this.f21548e, 0, iArr2, i8, i9);
            System.arraycopy(this.f21547d, 0, iArr3, i8, i9);
            System.arraycopy(this.f21550g, 0, c6427xfArr, i8, i9);
            System.arraycopy(this.f21551h, 0, c5870idArr, i8, i9);
            System.arraycopy(this.f21545b, 0, iArr, i8, i9);
            this.f21546c = jArr3;
            this.f21549f = jArr4;
            this.f21548e = iArr2;
            this.f21547d = iArr3;
            this.f21550g = c6427xfArr;
            this.f21551h = c5870idArr;
            this.f21545b = iArr;
            this.f21554k = 0;
            int i10 = this.f21544a;
            this.f21555l = i10;
            this.f21552i = i10;
            this.f21544a = i6;
            return;
        }
        int i11 = i3 + 1;
        this.f21555l = i11;
        if (i11 == i5) {
            this.f21555l = 0;
        }
    }

    /* renamed from: l */
    public final synchronized void m12446l(long j) {
        this.f21557n = Math.max(this.f21557n, j);
    }
}
