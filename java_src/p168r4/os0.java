package p168r4;

import android.content.Context;
import android.net.TrafficStats;
import android.os.StrictMode;
import p235z2.C7582a;
import p235z2.C7601t;
import p235z2.InterfaceC7593l;
/* renamed from: r4.os0 */
/* loaded from: classes2.dex */
public final class os0 {
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, r4.cs0] */
    /* renamed from: a */
    public static final cs0 m8708a(final Context context, final vt0 vt0Var, final String str, final boolean z, final boolean z2, final C6300u c6300u, final r00 r00Var, final im0 im0Var, h00 h00Var, final InterfaceC7593l interfaceC7593l, final C7582a c7582a, final C5882ip c5882ip, final no2 no2Var, final so2 so2Var) {
        C6225rz.m7278a(context);
        try {
            m13 m13Var = new m13(context, vt0Var, str, z, z2, c6300u, r00Var, im0Var, null, interfaceC7593l, c7582a, c5882ip, no2Var, so2Var) { // from class: r4.ls0

                /* renamed from: a */
                public final Context f27340a;

                /* renamed from: b */
                public final vt0 f27341b;

                /* renamed from: d */
                public final String f27342d;

                /* renamed from: k */
                public final boolean f27343k;

                /* renamed from: p */
                public final boolean f27344p;

                /* renamed from: q */
                public final C6300u f27345q;

                /* renamed from: r */
                public final r00 f27346r;

                /* renamed from: s */
                public final im0 f27347s;

                /* renamed from: t */
                public final InterfaceC7593l f27348t;

                /* renamed from: u */
                public final C7582a f27349u;

                /* renamed from: v */
                public final C5882ip f27350v;

                /* renamed from: w */
                public final no2 f27351w;

                /* renamed from: x */
                public final so2 f27352x;

                {
                    this.f27340a = context;
                    this.f27341b = vt0Var;
                    this.f27342d = str;
                    this.f27343k = z;
                    this.f27344p = z2;
                    this.f27345q = c6300u;
                    this.f27346r = r00Var;
                    this.f27347s = im0Var;
                    this.f27348t = interfaceC7593l;
                    this.f27349u = c7582a;
                    this.f27350v = c5882ip;
                    this.f27351w = no2Var;
                    this.f27352x = so2Var;
                }

                @Override // p168r4.m13
                public final Object zza() {
                    Context context2 = this.f27340a;
                    vt0 vt0Var2 = this.f27341b;
                    String str2 = this.f27342d;
                    boolean z3 = this.f27343k;
                    boolean z4 = this.f27344p;
                    C6300u c6300u2 = this.f27345q;
                    r00 r00Var2 = this.f27346r;
                    im0 im0Var2 = this.f27347s;
                    InterfaceC7593l interfaceC7593l2 = this.f27348t;
                    C7582a c7582a2 = this.f27349u;
                    C5882ip c5882ip2 = this.f27350v;
                    no2 no2Var2 = this.f27351w;
                    so2 so2Var2 = this.f27352x;
                    try {
                        TrafficStats.setThreadStatsTag(264);
                        int i = xs0.f33708l0;
                        ss0 ss0Var = new ss0(new xs0(new ut0(context2), vt0Var2, str2, z3, z4, c6300u2, r00Var2, im0Var2, null, interfaceC7593l2, c7582a2, c5882ip2, no2Var2, so2Var2));
                        ss0Var.setWebViewClient(C7601t.m937f().mo26269l(ss0Var, c5882ip2, z4));
                        ss0Var.setWebChromeClient(new bs0(ss0Var));
                        return ss0Var;
                    } finally {
                        TrafficStats.clearThreadStatsTag();
                    }
                }
            };
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            ?? zza = m13Var.zza();
            StrictMode.setThreadPolicy(threadPolicy);
            return zza;
        } catch (Throwable th) {
            throw new ns0("Webview initialization failed.", th);
        }
    }

    /* renamed from: b */
    public static final h83<cs0> m8707b(final Context context, final im0 im0Var, final String str, final C6300u c6300u, final C7582a c7582a) {
        return y73.m4810e(new d73(context, c6300u, im0Var, c7582a, str) { // from class: r4.ks0

            /* renamed from: a */
            public final Context f26536a;

            /* renamed from: b */
            public final C6300u f26537b;

            /* renamed from: c */
            public final im0 f26538c;

            /* renamed from: d */
            public final C7582a f26539d;

            /* renamed from: e */
            public final String f26540e;

            {
                this.f26536a = context;
                this.f26537b = c6300u;
                this.f26538c = im0Var;
                this.f26539d = c7582a;
                this.f26540e = str;
            }

            @Override // p168r4.d73
            public final h83 zza() {
                Context context2 = this.f26536a;
                C6300u c6300u2 = this.f26537b;
                im0 im0Var2 = this.f26538c;
                C7582a c7582a2 = this.f26539d;
                String str2 = this.f26540e;
                C7601t.m938e();
                cs0 m8708a = os0.m8708a(context2, vt0.m6023b(), "", false, false, c6300u2, null, im0Var2, null, null, c7582a2, C5882ip.m10583a(), null, null);
                final um0 m6486g = um0.m6486g(m8708a);
                m8708a.mo5057o0().mo7000s0(new qt0(m6486g) { // from class: r4.ms0

                    /* renamed from: a */
                    public final um0 f27863a;

                    {
                        this.f27863a = m6486g;
                    }

                    @Override // p168r4.qt0
                    /* renamed from: R */
                    public final void mo5285R(boolean z) {
                        this.f27863a.m6485h();
                    }
                });
                m8708a.loadUrl(str2);
                return m6486g;
            }
        }, qm0.f30194e);
    }
}
