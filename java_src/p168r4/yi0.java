package p168r4;

import android.content.Context;
import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0539v0;
import p026c4.C1054o;
import p042d4.C3325e;
import p185t3.C6746h;
import p220x3.C7297q;
/* renamed from: r4.yi0 */
/* loaded from: classes2.dex */
public final class yi0 implements ej0 {

    /* renamed from: m */
    public static final List<Future<Void>> f34084m = Collections.synchronizedList(new ArrayList());

    /* renamed from: a */
    public final bq3 f34085a;

    /* renamed from: b */
    public final LinkedHashMap<String, wq3> f34086b;

    /* renamed from: e */
    public final Context f34089e;

    /* renamed from: f */
    public boolean f34090f;

    /* renamed from: g */
    public final bj0 f34091g;

    /* renamed from: l */
    public final aj0 f34096l;

    /* renamed from: c */
    public final List<String> f34087c = new ArrayList();

    /* renamed from: d */
    public final List<String> f34088d = new ArrayList();

    /* renamed from: h */
    public final Object f34092h = new Object();

    /* renamed from: i */
    public HashSet<String> f34093i = new HashSet<>();

    /* renamed from: j */
    public boolean f34094j = false;

    /* renamed from: k */
    public boolean f34095k = false;

    @Override // p168r4.ej0
    /* renamed from: a */
    public final bj0 mo4699a() {
        return this.f34091g;
    }

    @Override // p168r4.ej0
    /* renamed from: e */
    public final boolean mo4695e() {
        return C1054o.m24735f() && this.f34091g.f21075d && !this.f34094j;
    }

    /* renamed from: f */
    public final /* synthetic */ h83 m4694f(Map map) {
        wq3 wq3Var;
        String str;
        h83 m4805j;
        if (map != null) {
            try {
                for (String str2 : map.keySet()) {
                    JSONArray optJSONArray = new JSONObject((String) map.get(str2)).optJSONArray("matches");
                    if (optJSONArray != null) {
                        synchronized (this.f34092h) {
                            int length = optJSONArray.length();
                            synchronized (this.f34092h) {
                                wq3Var = this.f34086b.get(str2);
                            }
                            if (wq3Var == null) {
                                String valueOf = String.valueOf(str2);
                                if (valueOf.length() != 0) {
                                    str = "Cannot find the corresponding resource object for ".concat(valueOf);
                                } else {
                                    str = new String("Cannot find the corresponding resource object for ");
                                }
                                dj0.m12126a(str);
                            } else {
                                boolean z = false;
                                for (int i = 0; i < length; i++) {
                                    wq3Var.m5610A(optJSONArray.getJSONObject(i).getString("threat_type"));
                                }
                                boolean z2 = this.f34090f;
                                if (length > 0) {
                                    z = true;
                                }
                                this.f34090f = z | z2;
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                if (m10.f27444b.m6673e().booleanValue()) {
                    cm0.m12441b("Failed to get SafeBrowsing metadata", e);
                }
                return y73.m4812c(new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.f34090f) {
            synchronized (this.f34092h) {
                this.f34085a.m12717Q(10);
            }
        }
        boolean z3 = this.f34090f;
        if ((z3 && this.f34091g.f21079r) || ((this.f34095k && this.f34091g.f21078q) || (!z3 && this.f34091g.f21076k))) {
            synchronized (this.f34092h) {
                for (wq3 wq3Var2 : this.f34086b.values()) {
                    this.f34085a.m12725C(wq3Var2.m9614o());
                }
                this.f34085a.m12719L(this.f34087c);
                this.f34085a.m12718P(this.f34088d);
                if (dj0.m12125b()) {
                    String m12716v = this.f34085a.m12716v();
                    String m12724D = this.f34085a.m12724D();
                    StringBuilder sb = new StringBuilder(String.valueOf(m12716v).length() + 53 + String.valueOf(m12724D).length());
                    sb.append("Sending SB report\n  url: ");
                    sb.append(m12716v);
                    sb.append("\n  clickUrl: ");
                    sb.append(m12724D);
                    sb.append("\n  resources: \n");
                    StringBuilder sb2 = new StringBuilder(sb.toString());
                    for (xq3 xq3Var : this.f34085a.m12726B()) {
                        sb2.append("    [");
                        sb2.append(xq3Var.m5160D());
                        sb2.append("] ");
                        sb2.append(xq3Var.m5161C());
                    }
                    dj0.m12126a(sb2.toString());
                }
                byte[] mo6490t = this.f34085a.m9614o().mo6490t();
                h83<String> m26253b = new C0539v0(this.f34089e).m26253b(1, this.f34091g.f21074b, null, mo6490t);
                if (dj0.m12125b()) {
                    m26253b.mo6087c(vi0.f32730a, qm0.f30190a);
                }
                m4805j = y73.m4805j(m26253b, wi0.f33196a, qm0.f30195f);
            }
            return m4805j;
        }
        return y73.m4814a(null);
    }

    @Override // p168r4.ej0
    /* renamed from: A */
    public final void mo4700A(String str) {
        synchronized (this.f34092h) {
            if (str == null) {
                this.f34085a.m12722I();
            } else {
                this.f34085a.m12723E(str);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0036 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // p168r4.ej0
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4698b(android.view.View r8) {
        /*
            r7 = this;
            r4.bj0 r0 = r7.f34091g
            boolean r0 = r0.f21075d
            if (r0 != 0) goto L7
            return
        L7:
            boolean r0 = r7.f34094j
            if (r0 == 0) goto Lc
            return
        Lc:
            p235z2.C7601t.m939d()
            r0 = 1
            r1 = 0
            if (r8 != 0) goto L14
            goto L6d
        L14:
            boolean r2 = r8.isDrawingCacheEnabled()     // Catch: java.lang.RuntimeException -> L2d
            r8.setDrawingCacheEnabled(r0)     // Catch: java.lang.RuntimeException -> L2d
            android.graphics.Bitmap r3 = r8.getDrawingCache()     // Catch: java.lang.RuntimeException -> L2d
            if (r3 == 0) goto L26
            android.graphics.Bitmap r3 = android.graphics.Bitmap.createBitmap(r3)     // Catch: java.lang.RuntimeException -> L2d
            goto L27
        L26:
            r3 = r1
        L27:
            r8.setDrawingCacheEnabled(r2)     // Catch: java.lang.RuntimeException -> L2b
            goto L34
        L2b:
            r2 = move-exception
            goto L2f
        L2d:
            r2 = move-exception
            r3 = r1
        L2f:
            java.lang.String r4 = "Fail to capture the web view"
            p168r4.cm0.m12439d(r4, r2)
        L34:
            if (r3 != 0) goto L6c
            int r2 = r8.getWidth()     // Catch: java.lang.RuntimeException -> L65
            int r3 = r8.getHeight()     // Catch: java.lang.RuntimeException -> L65
            if (r2 == 0) goto L5f
            if (r3 != 0) goto L43
            goto L5f
        L43:
            int r4 = r8.getWidth()     // Catch: java.lang.RuntimeException -> L65
            int r5 = r8.getHeight()     // Catch: java.lang.RuntimeException -> L65
            android.graphics.Bitmap$Config r6 = android.graphics.Bitmap.Config.RGB_565     // Catch: java.lang.RuntimeException -> L65
            android.graphics.Bitmap r4 = android.graphics.Bitmap.createBitmap(r4, r5, r6)     // Catch: java.lang.RuntimeException -> L65
            android.graphics.Canvas r5 = new android.graphics.Canvas     // Catch: java.lang.RuntimeException -> L65
            r5.<init>(r4)     // Catch: java.lang.RuntimeException -> L65
            r6 = 0
            r8.layout(r6, r6, r2, r3)     // Catch: java.lang.RuntimeException -> L65
            r8.draw(r5)     // Catch: java.lang.RuntimeException -> L65
            r1 = r4
            goto L6d
        L5f:
            java.lang.String r8 = "Width or height of view is zero"
            p168r4.cm0.m12437f(r8)     // Catch: java.lang.RuntimeException -> L65
            goto L6d
        L65:
            r8 = move-exception
            java.lang.String r2 = "Fail to capture the webview"
            p168r4.cm0.m12439d(r2, r8)
            goto L6d
        L6c:
            r1 = r3
        L6d:
            if (r1 != 0) goto L75
            java.lang.String r8 = "Failed to capture the webview bitmap."
            p168r4.dj0.m12126a(r8)
            return
        L75:
            r7.f34094j = r0
            r4.ti0 r8 = new r4.ti0
            r8.<init>(r7, r1)
            p016b3.C0497k2.m26333V(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.yi0.mo4698b(android.view.View):void");
    }

    @Override // p168r4.ej0
    /* renamed from: c */
    public final void mo4697c(String str, Map<String, String> map, int i) {
        String str2;
        String str3;
        synchronized (this.f34092h) {
            if (i == 3) {
                this.f34095k = true;
            }
            if (this.f34086b.containsKey(str)) {
                if (i == 3) {
                    this.f34086b.get(str).m5609B(vq3.m6031a(3));
                }
                return;
            }
            wq3 m5159E = xq3.m5159E();
            int m6031a = vq3.m6031a(i);
            if (m6031a != 0) {
                m5159E.m5609B(m6031a);
            }
            m5159E.m5608v(this.f34086b.size());
            m5159E.m5607x(str);
            gq3 m10208C = jq3.m10208C();
            if (this.f34093i.size() > 0 && map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    if (entry.getKey() != null) {
                        str2 = entry.getKey();
                    } else {
                        str2 = "";
                    }
                    if (entry.getValue() != null) {
                        str3 = entry.getValue();
                    } else {
                        str3 = "";
                    }
                    if (this.f34093i.contains(str2.toLowerCase(Locale.ENGLISH))) {
                        eq3 m11396C = fq3.m11396C();
                        m11396C.m11694v(ll3.m9630M(str2));
                        m11396C.m11693x(ll3.m9630M(str3));
                        m10208C.m11059v(m11396C.m9614o());
                    }
                }
            }
            m5159E.m5606z(m10208C.m9614o());
            this.f34086b.put(str, m5159E);
        }
    }

    @Override // p168r4.ej0
    /* renamed from: g */
    public final void mo4693g() {
        synchronized (this.f34092h) {
            this.f34086b.keySet();
            h83 m4814a = y73.m4814a(Collections.emptyMap());
            e73 e73Var = new e73(this) { // from class: r4.ui0

                /* renamed from: a */
                public final yi0 f32287a;

                {
                    this.f32287a = this;
                }

                @Override // p168r4.e73
                /* renamed from: a */
                public final h83 mo1029a(Object obj) {
                    return this.f32287a.m4694f((Map) obj);
                }
            };
            i83 i83Var = qm0.f30195f;
            h83 m4806i = y73.m4806i(m4814a, e73Var, i83Var);
            h83 m4807h = y73.m4807h(m4806i, 10L, TimeUnit.SECONDS, qm0.f30193d);
            y73.m4799p(m4806i, new xi0(this, m4807h), i83Var);
            f34084m.add(m4807h);
        }
    }

    public yi0(Context context, im0 im0Var, bj0 bj0Var, String str, aj0 aj0Var, byte[] bArr) {
        C7297q.m1882k(bj0Var, "SafeBrowsing config is not present.");
        this.f34089e = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f34086b = new LinkedHashMap<>();
        this.f34096l = aj0Var;
        this.f34091g = bj0Var;
        for (String str2 : bj0Var.f21077p) {
            this.f34093i.add(str2.toLowerCase(Locale.ENGLISH));
        }
        this.f34093i.remove("cookie".toLowerCase(Locale.ENGLISH));
        bq3 m12962I = ar3.m12962I();
        m12962I.m12717Q(9);
        m12962I.m12715x(str);
        m12962I.m12714z(str);
        cq3 m11988C = dq3.m11988C();
        String str3 = this.f34091g.f21073a;
        if (str3 != null) {
            m11988C.m12374v(str3);
        }
        m12962I.m12727A(m11988C.m9614o());
        yq3 m4096C = zq3.m4096C();
        m4096C.m4593z(C3325e.m19140a(this.f34089e).m19142g());
        String str4 = im0Var.f25171a;
        if (str4 != null) {
            m4096C.m4595v(str4);
        }
        long m3495a = C6746h.m3490f().m3495a(this.f34089e);
        if (m3495a > 0) {
            m4096C.m4594x(m3495a);
        }
        m12962I.m12720K(m4096C.m9614o());
        this.f34085a = m12962I;
    }

    /* renamed from: h */
    public final /* synthetic */ void m4692h(Bitmap bitmap) {
        jl3 m9624e = ll3.m9624e();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, m9624e);
        synchronized (this.f34092h) {
            bq3 bq3Var = this.f34085a;
            oq3 m7697C = qq3.m7697C();
            m7697C.m8715x(m9624e.m10252c());
            m7697C.m8716v("image/png");
            m7697C.m8714z(2);
            bq3Var.m12721J(m7697C.m9614o());
        }
    }
}
