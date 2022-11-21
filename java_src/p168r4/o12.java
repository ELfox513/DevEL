package p168r4;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
/* renamed from: r4.o12 */
/* loaded from: classes2.dex */
public final class o12 implements qe0 {
    /* renamed from: f */
    public static gv2 m8934f(String str) {
        if ("native".equals(str)) {
            return gv2.NATIVE;
        }
        if ("javascript".equals(str)) {
            return gv2.JAVASCRIPT;
        }
        return gv2.NONE;
    }

    @Override // p168r4.qe0
    /* renamed from: U */
    public final void mo7880U(InterfaceC3512a interfaceC3512a) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31133u3)).booleanValue() && wu2.m5565b()) {
            Object m18740t0 = BinderC3514b.m18740t0(interfaceC3512a);
            if (m18740t0 instanceof yu2) {
                ((yu2) m18740t0).mo4560c();
            }
        }
    }

    @Override // p168r4.qe0
    /* renamed from: a */
    public final String mo7879a(Context context) {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31133u3)).booleanValue()) {
            return null;
        }
        return "a.1.3.3-google_20200416";
    }

    @Override // p168r4.qe0
    /* renamed from: b */
    public final InterfaceC3512a mo7878b(String str, WebView webView, String str2, String str3, String str4, String str5, se0 se0Var, re0 re0Var, String str6) {
        String str7;
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31133u3)).booleanValue() || !wu2.m5565b()) {
            return null;
        }
        hv2 m10786a = hv2.m10786a(str5, str);
        gv2 m8934f = m8934f("javascript");
        gv2 m8934f2 = m8934f(str4);
        dv2 m8932h = m8932h(re0Var.toString());
        gv2 gv2Var = gv2.NONE;
        if (m8934f == gv2Var) {
            cm0.m12437f("Omid js session error; Unable to parse impression owner: javascript");
            return null;
        } else if (m8932h == null) {
            cm0.m12437f("Omid js session error; Unable to parse creative type: ".concat(String.valueOf(re0Var)));
            return null;
        } else if (m8932h == dv2.VIDEO && m8934f2 == gv2Var) {
            String valueOf = String.valueOf(str4);
            if (valueOf.length() != 0) {
                str7 = "Omid js session error; Video events owner unknown for video creative: ".concat(valueOf);
            } else {
                str7 = new String("Omid js session error; Video events owner unknown for video creative: ");
            }
            cm0.m12437f(str7);
            return null;
        } else {
            return BinderC3514b.m18741L0(yu2.m4558e(zu2.m4078a(m8932h, m8933g(se0Var.toString()), m8934f, m8934f2, true), av2.m12933b(m10786a, webView, str6, "")));
        }
    }

    @Override // p168r4.qe0
    /* renamed from: c */
    public final void mo7877c(InterfaceC3512a interfaceC3512a, View view) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31133u3)).booleanValue() && wu2.m5565b()) {
            Object m18740t0 = BinderC3514b.m18740t0(interfaceC3512a);
            if (m18740t0 instanceof yu2) {
                ((yu2) m18740t0).mo4559d(view, ev2.NOT_VISIBLE, "Ad overlay");
            }
        }
    }

    @Override // p168r4.qe0
    /* renamed from: d */
    public final InterfaceC3512a mo7876d(String str, WebView webView, String str2, String str3, String str4, se0 se0Var, re0 re0Var, String str5) {
        String str6;
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31133u3)).booleanValue() || !wu2.m5565b()) {
            return null;
        }
        hv2 m10786a = hv2.m10786a("Google", str);
        gv2 m8934f = m8934f("javascript");
        dv2 m8932h = m8932h(re0Var.toString());
        gv2 gv2Var = gv2.NONE;
        if (m8934f == gv2Var) {
            cm0.m12437f("Omid html session error; Unable to parse impression owner: javascript");
            return null;
        } else if (m8932h == null) {
            cm0.m12437f("Omid html session error; Unable to parse creative type: ".concat(String.valueOf(re0Var)));
            return null;
        } else {
            gv2 m8934f2 = m8934f(str4);
            if (m8932h == dv2.VIDEO && m8934f2 == gv2Var) {
                String valueOf = String.valueOf(str4);
                if (valueOf.length() != 0) {
                    str6 = "Omid html session error; Video events owner unknown for video creative: ".concat(valueOf);
                } else {
                    str6 = new String("Omid html session error; Video events owner unknown for video creative: ");
                }
                cm0.m12437f(str6);
                return null;
            }
            return BinderC3514b.m18741L0(yu2.m4558e(zu2.m4078a(m8932h, m8933g(se0Var.toString()), m8934f, m8934f2, true), av2.m12934a(m10786a, webView, str5, "")));
        }
    }

    @Override // p168r4.qe0
    /* renamed from: e */
    public final void mo7875e(InterfaceC3512a interfaceC3512a, View view) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31133u3)).booleanValue() && wu2.m5565b()) {
            Object m18740t0 = BinderC3514b.m18740t0(interfaceC3512a);
            if (m18740t0 instanceof yu2) {
                ((yu2) m18740t0).mo4561b(view);
            }
        }
    }

    @Override // p168r4.qe0
    /* renamed from: e0 */
    public final boolean mo7874e0(Context context) {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31133u3)).booleanValue()) {
            cm0.m12437f("Omid flag is disabled");
            return false;
        } else if (wu2.m5565b()) {
            return true;
        } else {
            wu2.m5566a(context);
            return wu2.m5565b();
        }
    }

    @Override // p168r4.qe0
    public final void zzf(InterfaceC3512a interfaceC3512a) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31133u3)).booleanValue() && wu2.m5565b()) {
            Object m18740t0 = BinderC3514b.m18740t0(interfaceC3512a);
            if (m18740t0 instanceof yu2) {
                ((yu2) m18740t0).mo4562a();
            }
        }
    }

    /* renamed from: g */
    public static fv2 m8933g(String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode != -1104128070) {
            if (hashCode != 1318088141) {
                if (hashCode == 1988248512 && str.equals("onePixel")) {
                    c = 2;
                }
                c = 65535;
            } else {
                if (str.equals("definedByJavascript")) {
                    c = 1;
                }
                c = 65535;
            }
        } else {
            if (str.equals("beginToRender")) {
                c = 0;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    return fv2.UNSPECIFIED;
                }
                return fv2.ONE_PIXEL;
            }
            return fv2.DEFINED_BY_JAVASCRIPT;
        }
        return fv2.BEGIN_TO_RENDER;
    }

    /* renamed from: h */
    public static dv2 m8932h(String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode != -382745961) {
            if (hashCode != 112202875) {
                if (hashCode == 714893483 && str.equals("nativeDisplay")) {
                    c = 1;
                }
                c = 65535;
            } else {
                if (str.equals("video")) {
                    c = 2;
                }
                c = 65535;
            }
        } else {
            if (str.equals("htmlDisplay")) {
                c = 0;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    return null;
                }
                return dv2.VIDEO;
            }
            return dv2.NATIVE_DISPLAY;
        }
        return dv2.HTML_DISPLAY;
    }
}
