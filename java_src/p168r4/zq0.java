package p168r4;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import java.io.IOException;
import p016b3.C0497k2;
import p026c4.InterfaceC1045f;
import p235z2.C7601t;
@TargetApi(16)
/* renamed from: r4.zq0 */
/* loaded from: classes2.dex */
public final class zq0 extends qq0 implements eo0 {

    /* renamed from: k */
    public fo0 f34703k;

    /* renamed from: p */
    public String f34704p;

    /* renamed from: q */
    public boolean f34705q;

    /* renamed from: r */
    public boolean f34706r;

    /* renamed from: s */
    public hq0 f34707s;

    /* renamed from: t */
    public long f34708t;

    /* renamed from: u */
    public long f34709u;

    /* renamed from: A */
    public static String m4117A(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        int length = String.valueOf(canonicalName).length();
        StringBuilder sb = new StringBuilder(str.length() + 2 + length + String.valueOf(message).length());
        sb.append(str);
        sb.append("/");
        sb.append(canonicalName);
        sb.append(":");
        sb.append(message);
        return sb.toString();
    }

    @Override // p168r4.eo0
    /* renamed from: b */
    public final void mo4115b(int i, int i2) {
    }

    @Override // p168r4.qq0
    /* renamed from: e */
    public final boolean mo4112e(String str) {
        return mo4111f(str, new String[]{str});
    }

    @Override // p168r4.qq0
    /* renamed from: h */
    public final void mo4109h(int i) {
        this.f34703k.mo5228G(i);
    }

    @Override // p168r4.qq0
    /* renamed from: i */
    public final void mo4108i(int i) {
        this.f34703k.mo5229F(i);
    }

    @Override // p168r4.qq0
    /* renamed from: j */
    public final void mo4107j(int i) {
        this.f34703k.mo5211Z(i);
    }

    @Override // p168r4.qq0
    /* renamed from: k */
    public final void mo4106k(int i) {
        this.f34703k.mo5210a0(i);
    }

    @Override // p168r4.qq0
    /* renamed from: m */
    public final void mo4105m() {
        synchronized (this) {
            this.f34705q = true;
            notify();
            release();
        }
        String str = this.f34704p;
        if (str != null) {
            m7700r(this.f34704p, m4102v(str), "externalAbort", "Programmatic precache abort.");
        }
    }

    /* renamed from: t */
    public final fo0 m4104t() {
        synchronized (this) {
            this.f34706r = true;
            notify();
        }
        this.f34703k.mo5217T(null);
        fo0 fo0Var = this.f34703k;
        this.f34703k = null;
        return fo0Var;
    }

    @Override // p168r4.eo0
    /* renamed from: x */
    public final void mo4101x(int i) {
    }

    @Override // p168r4.eo0
    /* renamed from: y */
    public final void mo4100y() {
        cm0.m12437f("Precache onRenderedFirstFrame");
    }

    /* renamed from: z */
    public final void m4099z(long j) {
        C0497k2.f1630i.postDelayed(new Runnable(this) { // from class: r4.yq0

            /* renamed from: a */
            public final zq0 f34181a;

            {
                this.f34181a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f34181a.m4103u();
            }
        }, j);
    }

    @Override // p168r4.eo0
    /* renamed from: a */
    public final void mo4116a(final boolean z, final long j) {
        final po0 po0Var = this.f30288d.get();
        if (po0Var != null) {
            qm0.f30194e.execute(new Runnable(po0Var, z, j) { // from class: r4.xq0

                /* renamed from: a */
                public final po0 f33692a;

                /* renamed from: b */
                public final boolean f33693b;

                /* renamed from: d */
                public final long f33694d;

                {
                    this.f33692a = po0Var;
                    this.f33693b = z;
                    this.f33694d = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f33692a.mo5085e1(this.f33693b, this.f33694d);
                }
            });
        }
    }

    @Override // p168r4.eo0
    /* renamed from: c */
    public final void mo4114c(String str, Exception exc) {
        cm0.m12436g("Precache exception", exc);
        C7601t.m935h().m9055l(exc, "VideoStreamExoPlayerCache.onException");
    }

    @Override // p168r4.eo0
    /* renamed from: d */
    public final void mo4113d(String str, Exception exc) {
        cm0.m12436g("Precache error", exc);
        C7601t.m935h().m9055l(exc, "VideoStreamExoPlayerCache.onError");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r5v1, types: [r4.qq0] */
    /* JADX WARN: Type inference failed for: r5v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v11, types: [int] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r6v19 */
    @Override // p168r4.qq0
    /* renamed from: f */
    public final boolean mo4111f(String str, String[] strArr) {
        String str2;
        String str3;
        zq0 zq0Var;
        long j;
        long j2;
        long j3;
        ?? r1;
        long j4;
        String str4;
        long j5;
        long j6;
        boolean z;
        long j7;
        long j8;
        long j9;
        long j10;
        zq0 zq0Var2 = this;
        String str5 = str;
        zq0Var2.f34704p = str5;
        String m4102v = m4102v(str);
        String str6 = "error";
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            zq0Var2.f34703k.mo5219R(uriArr, zq0Var2.f30287b);
            po0 po0Var = zq0Var2.f30288d.get();
            if (po0Var != null) {
                po0Var.mo5132D(m4102v, zq0Var2);
            }
            InterfaceC1045f m932k = C7601t.m932k();
            long mo24763a = m932k.mo24763a();
            long longValue = ((Long) C5592av.m12935c().m8098c(C6225rz.f31121t)).longValue();
            long longValue2 = ((Long) C5592av.m12935c().m8098c(C6225rz.f31113s)).longValue() * 1000;
            long intValue = ((Integer) C5592av.m12935c().m8098c(C6225rz.f31105r)).intValue();
            boolean booleanValue = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31059l1)).booleanValue();
            long j11 = -1;
            while (true) {
                synchronized (this) {
                    try {
                        if (m932k.mo24763a() - mo24763a <= longValue2) {
                            if (!zq0Var2.f34705q) {
                                if (zq0Var2.f34706r) {
                                    break;
                                } else if (zq0Var2.f34703k.mo5234A()) {
                                    long mo5227H = zq0Var2.f34703k.mo5227H();
                                    if (mo5227H > 0) {
                                        long mo5221N = zq0Var2.f34703k.mo5221N();
                                        if (mo5221N != j11) {
                                            if (mo5221N > 0) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            if (booleanValue) {
                                                j7 = zq0Var2.f34703k.mo5226I();
                                            } else {
                                                j7 = -1;
                                            }
                                            if (booleanValue) {
                                                j8 = zq0Var2.f34703k.mo5225J();
                                            } else {
                                                j8 = -1;
                                            }
                                            if (booleanValue) {
                                                j9 = zq0Var2.f34703k.mo5224K();
                                            } else {
                                                j9 = -1;
                                            }
                                            try {
                                                j = intValue;
                                                j10 = mo5227H;
                                                j2 = longValue2;
                                                j4 = longValue;
                                                str4 = m4102v;
                                            } catch (Throwable th) {
                                                th = th;
                                                zq0Var = this;
                                                str2 = str;
                                                str3 = m4102v;
                                            }
                                            try {
                                                m7704n(str, m4102v, mo5221N, j10, z, j7, j8, j9, fo0.m11458P(), fo0.m11457Q());
                                                j6 = mo5221N;
                                                j5 = mo5227H;
                                                str2 = j10;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                zq0Var = this;
                                                str2 = str;
                                                str3 = str4;
                                                try {
                                                    throw th;
                                                } catch (Exception e) {
                                                    e = e;
                                                    String str7 = str6;
                                                    String message = e.getMessage();
                                                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(message).length());
                                                    sb.append("Failed to preload url ");
                                                    sb.append(str2);
                                                    sb.append(" Exception: ");
                                                    sb.append(message);
                                                    cm0.m12437f(sb.toString());
                                                    C7601t.m935h().m9055l(e, "VideoStreamExoPlayerCache.preload");
                                                    release();
                                                    zq0Var.m7700r(str2, str3, str7, m4117A(str7, e));
                                                    return false;
                                                }
                                            }
                                        } else {
                                            j = intValue;
                                            j2 = longValue2;
                                            j4 = longValue;
                                            str4 = m4102v;
                                            j5 = mo5227H;
                                            j6 = j11;
                                            str2 = intValue;
                                        }
                                        zq0Var = (mo5221N > j5 ? 1 : (mo5221N == j5 ? 0 : -1));
                                        if (zq0Var >= 0) {
                                            m7701q(str, str4, j5);
                                        } else {
                                            try {
                                                zq0 zq0Var3 = this;
                                                str2 = str;
                                                str3 = str4;
                                                if (zq0Var3.f34703k.mo5220O() < j || mo5221N <= 0) {
                                                    j3 = j4;
                                                    r1 = j6;
                                                    zq0Var = zq0Var3;
                                                }
                                            } catch (Throwable th3) {
                                                th = th3;
                                                throw th;
                                            }
                                        }
                                    } else {
                                        j = intValue;
                                        j2 = longValue2;
                                        str2 = str5;
                                        str3 = m4102v;
                                        zq0Var = zq0Var2;
                                        j3 = longValue;
                                        r1 = j11;
                                    }
                                    try {
                                        try {
                                            zq0Var.wait(j3);
                                        } catch (InterruptedException unused) {
                                            throw new IOException("Wait interrupted.");
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        str6 = r1;
                                        throw th;
                                    }
                                } else {
                                    throw new IOException("ExoPlayer was released during preloading.");
                                }
                            } else {
                                throw new IOException("Abort requested before buffering finished. ");
                            }
                        } else {
                            long j12 = longValue2;
                            StringBuilder sb2 = new StringBuilder(47);
                            sb2.append("Timeout reached. Limit: ");
                            sb2.append(j12);
                            sb2.append(" ms");
                            throw new IOException(sb2.toString());
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        str2 = str5;
                        str3 = m4102v;
                        zq0Var = zq0Var2;
                    }
                }
                longValue = j3;
                zq0Var2 = zq0Var;
                str5 = str2;
                m4102v = str3;
                intValue = j;
                longValue2 = j2;
                j11 = r1;
            }
            return true;
        } catch (Exception e2) {
            e = e2;
            str2 = str5;
            str3 = m4102v;
            zq0Var = zq0Var2;
        }
    }

    @Override // p168r4.qq0
    /* renamed from: g */
    public final boolean mo4110g(String str, String[] strArr, hq0 hq0Var) {
        this.f34704p = str;
        this.f34707s = hq0Var;
        String m4102v = m4102v(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            this.f34703k.mo5219R(uriArr, this.f30287b);
            po0 po0Var = this.f30288d.get();
            if (po0Var != null) {
                po0Var.mo5132D(m4102v, this);
            }
            this.f34708t = C7601t.m932k().mo24763a();
            this.f34709u = -1L;
            m4099z(0L);
            return true;
        } catch (Exception e) {
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(message).length());
            sb.append("Failed to preload url ");
            sb.append(str);
            sb.append(" Exception: ");
            sb.append(message);
            cm0.m12437f(sb.toString());
            C7601t.m935h().m9055l(e, "VideoStreamExoPlayerCache.preload");
            release();
            m7700r(str, m4102v, "error", m4117A("error", e));
            return false;
        }
    }

    @Override // p168r4.qq0, p194u3.InterfaceC6907j
    public final void release() {
        fo0 fo0Var = this.f34703k;
        if (fo0Var != null) {
            fo0Var.mo5217T(null);
            this.f34703k.mo5216U();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22, types: [r4.zq0, r4.qq0] */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26, types: [r4.zq0] */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* renamed from: u */
    public final /* synthetic */ void m4103u() {
        String str;
        zq0 zq0Var;
        zq0 zq0Var2;
        SharedPreferences$OnSharedPreferenceChangeListenerC6151pz m12935c;
        long longValue;
        long intValue;
        zq0 zq0Var3;
        long j;
        long j2;
        String str2;
        long j3;
        boolean z;
        long j4;
        long j5;
        long j6;
        String m4102v = m4102v(this.f34704p);
        String str3 = "error";
        try {
            AbstractC5928jz<Long> abstractC5928jz = C6225rz.f31113s;
            m12935c = C5592av.m12935c();
            longValue = ((Long) m12935c.m8098c(abstractC5928jz)).longValue() * 1000;
            intValue = ((Integer) C5592av.m12935c().m8098c(C6225rz.f31105r)).intValue();
            zq0Var = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31059l1)).booleanValue();
            try {
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
            str = m4102v;
            zq0Var = this;
        }
        synchronized (this) {
            try {
                int i = ((C7601t.m932k().mo24763a() - this.f34708t) > longValue ? 1 : ((C7601t.m932k().mo24763a() - this.f34708t) == longValue ? 0 : -1));
                if (i <= 0) {
                    try {
                        if (!this.f34705q) {
                            if (this.f34706r) {
                                zq0Var2 = this;
                            } else if (this.f34703k.mo5234A()) {
                                long mo5227H = this.f34703k.mo5227H();
                                if (mo5227H > 0) {
                                    long mo5221N = this.f34703k.mo5221N();
                                    if (mo5221N != this.f34709u) {
                                        if (mo5221N > 0) {
                                            z = true;
                                        } else {
                                            z = false;
                                        }
                                        try {
                                            String str4 = this.f34704p;
                                            if (zq0Var != 0) {
                                                j4 = this.f34703k.mo5226I();
                                            } else {
                                                j4 = -1;
                                            }
                                            if (zq0Var != 0) {
                                                j5 = this.f34703k.mo5225J();
                                            } else {
                                                j5 = -1;
                                            }
                                            if (zq0Var != 0) {
                                                j6 = this.f34703k.mo5224K();
                                            } else {
                                                j6 = -1;
                                            }
                                            long j7 = j4;
                                            j2 = intValue;
                                            str2 = m4102v;
                                            try {
                                                m7704n(str4, m4102v, mo5221N, mo5227H, z, j7, j5, j6, fo0.m11458P(), fo0.m11457Q());
                                                zq0Var = this;
                                                j = mo5221N;
                                                try {
                                                    zq0Var.f34709u = j;
                                                    j3 = mo5227H;
                                                    zq0Var = zq0Var;
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    str = str2;
                                                    throw th;
                                                }
                                            } catch (Throwable th3) {
                                                th = th3;
                                                zq0Var = this;
                                                str = str2;
                                                throw th;
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                            zq0Var = this;
                                            str = m4102v;
                                        }
                                    } else {
                                        j = mo5221N;
                                        j2 = intValue;
                                        str2 = m4102v;
                                        zq0Var = this;
                                        j3 = mo5227H;
                                    }
                                    if (j >= j3) {
                                        zq0Var.m7701q(zq0Var.f34704p, str2, j3);
                                        zq0Var2 = zq0Var;
                                    } else {
                                        int i2 = (zq0Var.f34703k.mo5220O() > j2 ? 1 : (zq0Var.f34703k.mo5220O() == j2 ? 0 : -1));
                                        zq0Var3 = zq0Var;
                                        if (i2 >= 0) {
                                            zq0Var3 = zq0Var;
                                            if (j > 0) {
                                                zq0Var2 = zq0Var;
                                            }
                                        }
                                    }
                                } else {
                                    zq0Var3 = this;
                                }
                                zq0Var3.m4099z(((Long) C5592av.m12935c().m8098c(C6225rz.f31121t)).longValue());
                                return;
                            } else {
                                throw new IOException("ExoPlayer was released during preloading.");
                            }
                            C7601t.m917z().m10560i(zq0Var2.f34707s);
                        }
                        throw new IOException("Abort requested before buffering finished. ");
                    } catch (Throwable th5) {
                        th = th5;
                        str3 = m12935c;
                        str = i;
                    }
                } else {
                    str = m4102v;
                    zq0Var = this;
                    try {
                        StringBuilder sb = new StringBuilder(47);
                        sb.append("Timeout reached. Limit: ");
                        sb.append(longValue);
                        sb.append(" ms");
                        throw new IOException(sb.toString());
                    } catch (Throwable th6) {
                        th = th6;
                        str3 = "downloadTimeout";
                    }
                }
            } catch (Throwable th7) {
                th = th7;
                str = m4102v;
                zq0Var = this;
            }
            try {
                throw th;
            } catch (Exception e2) {
                e = e2;
                String str5 = str3;
                String str6 = zq0Var.f34704p;
                String message = e.getMessage();
                StringBuilder sb2 = new StringBuilder(String.valueOf(str6).length() + 34 + String.valueOf(message).length());
                sb2.append("Failed to preload url ");
                sb2.append(str6);
                sb2.append(" Exception: ");
                sb2.append(message);
                cm0.m12437f(sb2.toString());
                C7601t.m935h().m9055l(e, "VideoStreamExoPlayerCache.preload");
                release();
                zq0Var.m7700r(zq0Var.f34704p, str, str5, m4117A(str5, e));
                zq0Var2 = zq0Var;
                C7601t.m917z().m10560i(zq0Var2.f34707s);
            }
        }
    }

    public zq0(po0 po0Var, oo0 oo0Var) {
        super(po0Var);
        fo0 xp0Var;
        Context context = po0Var.getContext();
        if (oo0Var.f29097m) {
            xp0Var = new sr0(context, oo0Var, this.f30288d.get());
        } else {
            xp0Var = new xp0(context, oo0Var, this.f30288d.get());
        }
        this.f34703k = xp0Var;
        xp0Var.mo5217T(this);
    }

    /* renamed from: v */
    public static final String m4102v(String str) {
        String valueOf = String.valueOf(vl0.m6124d(str));
        if (valueOf.length() != 0) {
            return "cache:".concat(valueOf);
        }
        return new String("cache:");
    }
}
