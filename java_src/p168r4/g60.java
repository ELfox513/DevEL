package p168r4;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import com.prineside.tdi2.Config;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import net.bytebuddy.pool.TypePool;
import p004a3.C0064e;
import p004a3.InterfaceC0081v;
import p016b3.C0497k2;
import p016b3.C0543w1;
import p016b3.InterfaceC0548y0;
import p060f4.BinderC3514b;
import p163r.C5505x0;
import p168r4.InterfaceC5812gt;
import p168r4.bt0;
import p168r4.cf1;
import p168r4.cs0;
import p168r4.e80;
import p168r4.gt0;
import p168r4.kt0;
import p168r4.nt0;
import p168r4.pt0;
import p168r4.tr0;
import p235z2.C7583b;
import p235z2.C7601t;
/* renamed from: r4.g60 */
/* loaded from: classes2.dex */
public final class g60<T extends InterfaceC5812gt & tr0 & cs0 & e80 & bt0 & gt0 & kt0 & cf1 & nt0 & pt0> implements u50<T> {

    /* renamed from: a */
    public final C7583b f23906a;

    /* renamed from: b */
    public final ls1 f23907b;

    /* renamed from: c */
    public final xt2 f23908c;

    /* renamed from: e */
    public final zd0 f23910e;

    /* renamed from: f */
    public final c12 f23911f;

    /* renamed from: g */
    public InterfaceC0081v f23912g = null;

    /* renamed from: d */
    public final hm0 f23909d = new hm0(null);

    public g60(C7583b c7583b, zd0 zd0Var, c12 c12Var, ls1 ls1Var, xt2 xt2Var) {
        this.f23906a = c7583b;
        this.f23910e = zd0Var;
        this.f23911f = c12Var;
        this.f23907b = ls1Var;
        this.f23908c = xt2Var;
    }

    /* renamed from: c */
    public static boolean m11283c(Map<String, String> map) {
        return Config.SITE_API_VERSION.equals(map.get("custom_close"));
    }

    /* renamed from: h */
    public final boolean m11278h(T t, Context context, String str, String str2) {
        boolean z;
        C7601t.m939d();
        boolean m26313i = C0497k2.m26313i(context);
        C7601t.m939d();
        InterfaceC0548y0 m26322d = C0497k2.m26322d(context);
        ls1 ls1Var = this.f23907b;
        if (ls1Var != null) {
            k12.m10115h7(context, ls1Var, this.f23908c, this.f23911f, str2, "offline_open");
        }
        T t2 = t;
        if (t2.mo5049r().m6018g() && t2.mo5078h() == null) {
            z = true;
        } else {
            z = false;
        }
        if (m26313i) {
            this.f23911f.m12659e(this.f23909d, str2);
            return false;
        }
        C7601t.m939d();
        if (C5505x0.m13170b(context).m13171a() && m26322d != null && !z) {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30973a6)).booleanValue()) {
                if (t2.mo5049r().m6018g()) {
                    k12.m10116g7(t2.mo5078h(), null, m26322d, this.f23911f, this.f23907b, this.f23908c, str2, str);
                } else {
                    t.mo5072j0(m26322d, this.f23911f, this.f23907b, this.f23908c, str2, str, C7601t.m937f().mo26276h());
                }
                ls1 ls1Var2 = this.f23907b;
                if (ls1Var2 != null) {
                    k12.m10115h7(context, ls1Var2, this.f23908c, this.f23911f, str2, "dialog_impression");
                }
                t.mo3609F0();
                return true;
            }
        }
        this.f23911f.m12658f(str2);
        if (this.f23907b != null) {
            HashMap hashMap = new HashMap();
            C7601t.m939d();
            if (!C5505x0.m13170b(context).m13171a()) {
                hashMap.put("dialog_not_shown_reason", "notifications_disabled");
            } else if (m26322d == null) {
                hashMap.put("dialog_not_shown_reason", "work_manager_unavailable");
            } else {
                if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30973a6)).booleanValue()) {
                    hashMap.put("dialog_not_shown_reason", "notification_flow_disabled");
                } else if (z) {
                    hashMap.put("dialog_not_shown_reason", "fullscreen_no_activity");
                }
            }
            k12.m10114i7(context, this.f23907b, this.f23908c, this.f23911f, str2, "dialog_not_shown", hashMap);
        }
        return false;
    }

    /* renamed from: j */
    public final void m11276j(boolean z) {
        zd0 zd0Var = this.f23910e;
        if (zd0Var != null) {
            zd0Var.m4297i(z);
        }
    }

    /* renamed from: d */
    public static int m11282d(Map<String, String> map) {
        String str = map.get("o");
        if (str != null) {
            if ("p".equalsIgnoreCase(str)) {
                return 7;
            }
            if ("l".equalsIgnoreCase(str)) {
                return 6;
            }
            if ("c".equalsIgnoreCase(str)) {
                return C7601t.m937f().mo26276h();
            }
            return -1;
        }
        return -1;
    }

    /* renamed from: e */
    public static Uri m11281e(Context context, C6300u c6300u, Uri uri, View view, Activity activity) {
        if (c6300u == null) {
            return uri;
        }
        try {
            if (c6300u.m6679f(uri)) {
                return c6300u.m6680e(uri, context, view, activity);
            }
            return uri;
        } catch (C6337v unused) {
            return uri;
        } catch (Exception e) {
            C7601t.m935h().m9056k(e, "OpenGmsgHandler.maybeAddClickSignalsToUri");
            return uri;
        }
    }

    /* renamed from: f */
    public static Uri m11280f(Uri uri) {
        String str;
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e) {
            String valueOf = String.valueOf(uri.toString());
            if (valueOf.length() != 0) {
                str = "Error adding click uptime parameter to url: ".concat(valueOf);
            } else {
                str = new String("Error adding click uptime parameter to url: ");
            }
            cm0.m12439d(str, e);
        }
        return uri;
    }

    @Override // p168r4.u50
    /* renamed from: b */
    public final void mo4240a(T t, Map<String, String> map) {
        String str;
        boolean z;
        boolean z2;
        String str2;
        boolean z3;
        HashMap hashMap;
        Object obj;
        T t2 = t;
        String m10015a = kk0.m10015a(map.get("u"), t2.getContext(), true);
        String str3 = map.get("a");
        if (str3 == null) {
            cm0.m12437f("Action missing from an open GMSG.");
            return;
        }
        C7583b c7583b = this.f23906a;
        if (c7583b != null && !c7583b.m1032b()) {
            this.f23906a.m1031c(m10015a);
            return;
        }
        no2 mo5128G = t2.mo5128G();
        so2 mo5117M = t2.mo5117M();
        boolean z4 = false;
        if (mo5128G == null || mo5117M == null) {
            str = "";
            z = false;
        } else {
            z = mo5128G.f28415f0;
            str = mo5117M.f31426b;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30965Z6)).booleanValue() && map.containsKey("sc") && map.get("sc").equals("0")) {
            z2 = false;
        } else {
            z2 = true;
        }
        if ("expand".equalsIgnoreCase(str3)) {
            if (t2.mo5106T()) {
                cm0.m12437f("Cannot expand WebView that is already expanded.");
                return;
            }
            m11276j(false);
            t.mo5107S0(m11283c(map), m11282d(map), z2);
        } else if ("webapp".equalsIgnoreCase(str3)) {
            m11276j(false);
            if (m10015a != null) {
                t.mo5063m0(m11283c(map), m11282d(map), m10015a, z2);
            } else {
                t.mo5111Q0(m11283c(map), m11282d(map), map.get("html"), map.get("baseurl"), z2);
            }
        } else if ("chrome_custom_tab".equalsIgnoreCase(str3)) {
            Context context = t2.getContext();
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30929V2)).booleanValue()) {
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30979b3)).booleanValue()) {
                    C0543w1.m26251k("User opt out chrome custom tab.");
                } else {
                    if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30961Z2)).booleanValue()) {
                        z4 = true;
                        break;
                    }
                    String str4 = (String) C5592av.m12935c().m8098c(C6225rz.f30970a3);
                    if (!str4.isEmpty() && context != null) {
                        String packageName = context.getPackageName();
                        for (String str5 : j13.m10444b(m03.m9523b(TypePool.Default.LazyTypeDescription.GenericTypeToken.INDEXED_TYPE_DELIMITER)).m10442d(str4)) {
                            if (str5.equals(packageName)) {
                                z4 = true;
                                break;
                            }
                        }
                    }
                }
            }
            boolean m8086a = q00.m8086a(t2.getContext());
            if (z4) {
                if (!m8086a) {
                    m11275k(4);
                } else {
                    m11276j(true);
                    if (TextUtils.isEmpty(m10015a)) {
                        cm0.m12437f("Cannot open browser with null or empty url");
                        m11275k(7);
                        return;
                    }
                    Uri m11280f = m11280f(m11281e(t2.getContext(), t2.mo5126H(), Uri.parse(m10015a), t2.mo5124I(), t2.mo5078h()));
                    if (z && this.f23911f != null && m11278h(t, t2.getContext(), m11280f.toString(), str)) {
                        return;
                    }
                    this.f23912g = new c60(this);
                    t.mo5133C0(new C0064e(null, m11280f.toString(), null, null, null, null, null, null, BinderC3514b.m18741L0(this.f23912g).asBinder(), true), z2);
                    return;
                }
            }
            map.put("use_first_package", "true");
            map.put("use_running_process", "true");
            m11277i(t, map, z, str, z2);
        } else if ("app".equalsIgnoreCase(str3) && "true".equalsIgnoreCase(map.get("system_browser"))) {
            m11277i(t, map, z, str, z2);
        } else if ("open_app".equalsIgnoreCase(str3)) {
            if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30908S5)).booleanValue()) {
                return;
            }
            m11276j(true);
            String str6 = map.get("p");
            if (str6 == null) {
                cm0.m12437f("Package name missing from open app action.");
            } else if (!z || this.f23911f == null || !m11278h(t, t2.getContext(), str6, str)) {
                PackageManager packageManager = t2.getContext().getPackageManager();
                if (packageManager == null) {
                    cm0.m12437f("Cannot get package manager from open app action.");
                    return;
                }
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str6);
                if (launchIntentForPackage != null) {
                    t.mo5133C0(new C0064e(launchIntentForPackage, this.f23912g), z2);
                }
            }
        } else {
            m11276j(true);
            String str7 = map.get("intent_url");
            Intent intent = null;
            if (!TextUtils.isEmpty(str7)) {
                try {
                    intent = Intent.parseUri(str7, 0);
                } catch (URISyntaxException e) {
                    String valueOf = String.valueOf(str7);
                    if (valueOf.length() != 0) {
                        str2 = "Error parsing the url: ".concat(valueOf);
                    } else {
                        str2 = new String("Error parsing the url: ");
                    }
                    cm0.m12439d(str2, e);
                }
            }
            Intent intent2 = intent;
            if (intent2 != null && intent2.getData() != null) {
                Uri data = intent2.getData();
                if (!Uri.EMPTY.equals(data)) {
                    Uri m11280f2 = m11280f(m11281e(t2.getContext(), t2.mo5126H(), data, t2.mo5124I(), t2.mo5078h()));
                    if (!TextUtils.isEmpty(intent2.getType())) {
                        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30916T5)).booleanValue()) {
                            intent2.setDataAndType(m11280f2, intent2.getType());
                        }
                    }
                    intent2.setData(m11280f2);
                }
            }
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31008e6)).booleanValue() && "intent_async".equalsIgnoreCase(str3) && map.containsKey("event_id")) {
                z3 = true;
            } else {
                z3 = false;
            }
            HashMap hashMap2 = new HashMap();
            if (z3) {
                hashMap = hashMap2;
                obj = "p";
                this.f23912g = new e60(this, z2, t, hashMap2, map);
                z2 = false;
            } else {
                hashMap = hashMap2;
                obj = "p";
            }
            if (intent2 != null) {
                if (z && this.f23911f != null && m11278h(t, t2.getContext(), intent2.getData().toString(), str)) {
                    if (z3) {
                        HashMap hashMap3 = hashMap;
                        hashMap3.put(map.get("event_id"), Boolean.TRUE);
                        t.mo5125H0("openIntentAsync", hashMap3);
                        return;
                    }
                    return;
                }
                t.mo5133C0(new C0064e(intent2, this.f23912g), z2);
                return;
            }
            HashMap hashMap4 = hashMap;
            if (!TextUtils.isEmpty(m10015a)) {
                m10015a = m11280f(m11281e(t2.getContext(), t2.mo5126H(), Uri.parse(m10015a), t2.mo5124I(), t2.mo5078h())).toString();
            }
            if (z && this.f23911f != null && m11278h(t, t2.getContext(), m10015a, str)) {
                if (z3) {
                    hashMap4.put(map.get("event_id"), Boolean.TRUE);
                    t.mo5125H0("openIntentAsync", hashMap4);
                    return;
                }
                return;
            }
            t.mo5133C0(new C0064e(map.get("i"), m10015a, map.get("m"), map.get(obj), map.get("c"), map.get("f"), map.get("e"), this.f23912g), z2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00df, code lost:
        if (p168r4.f60.m11605b(r11, r5, r6, r7) == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0122, code lost:
        r11 = r15;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m11277i(T r18, java.util.Map<java.lang.String, java.lang.String> r19, boolean r20, java.lang.String r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.g60.m11277i(r4.gt, java.util.Map, boolean, java.lang.String, boolean):void");
    }

    /* renamed from: k */
    public final void m11275k(int i) {
        if (this.f23907b == null) {
            return;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31040i6)).booleanValue()) {
            xt2 xt2Var = this.f23908c;
            wt2 m5590a = wt2.m5590a("cct_action");
            m5590a.m5588c("cct_open_status", p00.m8538a(i));
            xt2Var.mo4985a(m5590a);
            return;
        }
        ks1 m9572d = this.f23907b.m9572d();
        m9572d.m9954d("action", "cct_action");
        m9572d.m9954d("cct_open_status", p00.m8538a(i));
        m9572d.m9953e();
    }
}
