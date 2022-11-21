package p168r4;

import android.content.Context;
import android.util.Log;
import android.view.Display;
import android.view.Surface;
/* renamed from: r4.ny3 */
/* loaded from: classes2.dex */
public final class ny3 {

    /* renamed from: a */
    public final zx3 f28718a = new zx3();

    /* renamed from: b */
    public final jy3 f28719b;

    /* renamed from: c */
    public final my3 f28720c;

    /* renamed from: d */
    public boolean f28721d;

    /* renamed from: e */
    public Surface f28722e;

    /* renamed from: f */
    public float f28723f;

    /* renamed from: g */
    public float f28724g;

    /* renamed from: h */
    public float f28725h;

    /* renamed from: i */
    public float f28726i;

    /* renamed from: j */
    public int f28727j;

    /* renamed from: k */
    public long f28728k;

    /* renamed from: l */
    public long f28729l;

    /* renamed from: m */
    public long f28730m;

    /* renamed from: n */
    public long f28731n;

    /* renamed from: o */
    public long f28732o;

    /* renamed from: p */
    public long f28733p;

    /* renamed from: q */
    public long f28734q;

    /* renamed from: a */
    public final void m8976a(int i) {
        if (this.f28727j == i) {
            return;
        }
        this.f28727j = i;
        m8962o(true);
    }

    /* renamed from: c */
    public final void m8974c() {
        this.f28721d = true;
        m8964m();
        m8962o(false);
    }

    /* renamed from: e */
    public final void m8972e() {
        m8964m();
    }

    /* renamed from: i */
    public final void m8968i() {
        this.f28721d = false;
        m8961p();
    }

    /* renamed from: m */
    public final void m8964m() {
        this.f28730m = 0L;
        this.f28733p = -1L;
        this.f28731n = -1L;
    }

    /* renamed from: b */
    public final void m8975b() {
        if (this.f28719b != null) {
            my3 my3Var = this.f28720c;
            my3Var.getClass();
            my3Var.m9250b();
            this.f28719b.mo9536b(new iy3(this) { // from class: r4.fy3

                /* renamed from: a */
                public final ny3 f23798a;

                {
                    this.f23798a = this;
                }

                @Override // p168r4.iy3
                /* renamed from: a */
                public final void mo10457a(Display display) {
                    this.f23798a.m8965l(display);
                }
            });
        }
    }

    /* renamed from: d */
    public final void m8973d(Surface surface) {
        if (true == (surface instanceof xx3)) {
            surface = null;
        }
        if (this.f28722e == surface) {
            return;
        }
        m8961p();
        this.f28722e = surface;
        m8962o(true);
    }

    /* renamed from: f */
    public final void m8971f(float f) {
        this.f28726i = f;
        m8964m();
        m8962o(false);
    }

    /* renamed from: g */
    public final void m8970g(float f) {
        this.f28723f = f;
        this.f28718a.m4035a();
        m8963n();
    }

    /* renamed from: h */
    public final void m8969h(long j) {
        long j2 = this.f28731n;
        if (j2 != -1) {
            this.f28733p = j2;
            this.f28734q = this.f28732o;
        }
        this.f28730m++;
        this.f28718a.m4034b(j * 1000);
        m8963n();
    }

    /* renamed from: j */
    public final void m8967j() {
        jy3 jy3Var = this.f28719b;
        if (jy3Var != null) {
            jy3Var.mo9537a();
            my3 my3Var = this.f28720c;
            my3Var.getClass();
            my3Var.m9249c();
        }
    }

    /* renamed from: k */
    public final long m8966k(long j) {
        long j2;
        if (this.f28733p != -1 && this.f28718a.m4033c()) {
            long m4030f = this.f28734q + (((float) (this.f28718a.m4030f() * (this.f28730m - this.f28733p))) / this.f28726i);
            if (Math.abs(j - m4030f) <= 20000000) {
                j = m4030f;
            } else {
                m8964m();
            }
        }
        this.f28731n = this.f28730m;
        this.f28732o = j;
        my3 my3Var = this.f28720c;
        if (my3Var != null && this.f28728k != -9223372036854775807L) {
            long j3 = my3Var.f28016a;
            if (j3 == -9223372036854775807L) {
                return j;
            }
            long j4 = this.f28728k;
            long j5 = j3 + (((j - j3) / j4) * j4);
            if (j <= j5) {
                j2 = j5 - j4;
            } else {
                j5 = j4 + j5;
                j2 = j5;
            }
            if (j5 - j >= j - j2) {
                j5 = j2;
            }
            return j5 - this.f28729l;
        }
        return j;
    }

    /* renamed from: l */
    public final /* bridge */ /* synthetic */ void m8965l(Display display) {
        if (display != null) {
            double refreshRate = display.getRefreshRate();
            Double.isNaN(refreshRate);
            long j = (long) (1.0E9d / refreshRate);
            this.f28728k = j;
            this.f28729l = (j * 80) / 100;
            return;
        }
        Log.w("VideoFrameReleaseHelper", "Unable to query display refresh rate");
        this.f28728k = -9223372036854775807L;
        this.f28729l = -9223372036854775807L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0055, code lost:
        if (java.lang.Math.abs(r0 - r9.f28724g) >= r2) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0062, code lost:
        if (r9.f28718a.m4032d() >= 30) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0065, code lost:
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0066, code lost:
        if (r3 == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0069, code lost:
        return;
     */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8963n() {
        /*
            r9 = this;
            int r0 = p168r4.C5979lc.f27164a
            r1 = 30
            if (r0 < r1) goto L6f
            android.view.Surface r0 = r9.f28722e
            if (r0 != 0) goto Lb
            goto L6f
        Lb:
            r4.zx3 r0 = r9.f28718a
            boolean r0 = r0.m4033c()
            if (r0 == 0) goto L1a
            r4.zx3 r0 = r9.f28718a
            float r0 = r0.m4029g()
            goto L1c
        L1a:
            float r0 = r9.f28723f
        L1c:
            float r2 = r9.f28724g
            int r3 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r3 != 0) goto L23
            return
        L23:
            r3 = 1
            r4 = 0
            r5 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r6 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r6 == 0) goto L58
            int r2 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r2 == 0) goto L58
            r4.zx3 r1 = r9.f28718a
            boolean r1 = r1.m4033c()
            r2 = 1065353216(0x3f800000, float:1.0)
            if (r1 == 0) goto L4b
            r4.zx3 r1 = r9.f28718a
            long r5 = r1.m4031e()
            r7 = 5000000000(0x12a05f200, double:2.470328229E-314)
            int r1 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r1 < 0) goto L4b
            r2 = 1017370378(0x3ca3d70a, float:0.02)
        L4b:
            float r1 = r9.f28724g
            float r1 = r0 - r1
            float r1 = java.lang.Math.abs(r1)
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 < 0) goto L65
            goto L66
        L58:
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 != 0) goto L6a
            r4.zx3 r2 = r9.f28718a
            int r2 = r2.m4032d()
            if (r2 < r1) goto L65
            goto L66
        L65:
            r3 = 0
        L66:
            if (r3 == 0) goto L69
            goto L6a
        L69:
            return
        L6a:
            r9.f28724g = r0
            r9.m8962o(r4)
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.ny3.m8963n():void");
    }

    /* renamed from: o */
    public final void m8962o(boolean z) {
        Surface surface;
        if (C5979lc.f27164a >= 30 && (surface = this.f28722e) != null && this.f28727j != Integer.MIN_VALUE) {
            float f = 0.0f;
            if (this.f28721d) {
                float f2 = this.f28724g;
                if (f2 != -1.0f) {
                    f = this.f28726i * f2;
                }
            }
            if (!z && this.f28725h == f) {
                return;
            }
            this.f28725h = f;
            hy3.m10755a(surface, f);
        }
    }

    /* renamed from: p */
    public final void m8961p() {
        Surface surface;
        if (C5979lc.f27164a >= 30 && (surface = this.f28722e) != null && this.f28727j != Integer.MIN_VALUE && this.f28725h != 0.0f) {
            this.f28725h = 0.0f;
            hy3.m10755a(surface, 0.0f);
        }
    }

    public ny3(Context context) {
        jy3 jy3Var;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            if (C5979lc.f27164a >= 17) {
                jy3Var = ly3.m9535c(applicationContext);
            } else {
                jy3Var = null;
            }
            if (jy3Var == null) {
                jy3Var = ky3.m9833c(applicationContext);
            }
        } else {
            jy3Var = null;
        }
        this.f28719b = jy3Var;
        this.f28720c = jy3Var != null ? my3.m9251a() : null;
        this.f28728k = -9223372036854775807L;
        this.f28729l = -9223372036854775807L;
        this.f28723f = -1.0f;
        this.f28726i = 1.0f;
        this.f28727j = 0;
    }
}
