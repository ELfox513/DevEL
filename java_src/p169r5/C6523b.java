package p169r5;

import android.os.Bundle;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import p026c4.C1041b;
import p070g5.C3612b6;
import p070g5.C3769o7;
import p070g5.C3887y5;
import p070g5.C3899z5;
import p160q5.InterfaceC5424a;
import p220x3.C7297q;
/* renamed from: r5.b */
/* loaded from: classes2.dex */
public final class C6523b {

    /* renamed from: a */
    public static final Set<String> f34801a = new HashSet(Arrays.asList("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"));

    /* renamed from: b */
    public static final List<String> f34802b = Arrays.asList("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");

    /* renamed from: c */
    public static final List<String> f34803c = Arrays.asList("auto", "app", "am");

    /* renamed from: d */
    public static final List<String> f34804d = Arrays.asList("_r", "_dbg");

    /* renamed from: e */
    public static final List<String> f34805e = Arrays.asList((String[]) C1041b.m24779a(C3612b6.f16269a, C3612b6.f16270b));

    /* renamed from: f */
    public static final List<String> f34806f = Arrays.asList("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    /* renamed from: c */
    public static String m4001c(String str) {
        String m17812a = C3899z5.m17812a(str);
        return m17812a != null ? m17812a : str;
    }

    /* renamed from: f */
    public static boolean m3998f(InterfaceC5424a.C5427c c5427c) {
        String str;
        if (c5427c == null || (str = c5427c.f20105a) == null || str.isEmpty()) {
            return false;
        }
        Object obj = c5427c.f20107c;
        if ((obj == null || C3769o7.m18038a(obj) != null) && m3995i(str) && m3994j(str, c5427c.f20106b)) {
            String str2 = c5427c.f20115k;
            if (str2 == null || (m3997g(str2, c5427c.f20116l) && m3999e(str, c5427c.f20115k, c5427c.f20116l))) {
                String str3 = c5427c.f20112h;
                if (str3 == null || (m3997g(str3, c5427c.f20113i) && m3999e(str, c5427c.f20112h, c5427c.f20113i))) {
                    String str4 = c5427c.f20110f;
                    if (str4 != null) {
                        return m3997g(str4, c5427c.f20111g) && m3999e(str, c5427c.f20110f, c5427c.f20111g);
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    /* renamed from: h */
    public static boolean m3996h(String str) {
        return !f34801a.contains(str);
    }

    /* renamed from: i */
    public static boolean m3995i(String str) {
        return !f34803c.contains(str);
    }

    /* renamed from: a */
    public static Bundle m4003a(InterfaceC5424a.C5427c c5427c) {
        Bundle bundle = new Bundle();
        String str = c5427c.f20105a;
        if (str != null) {
            bundle.putString("origin", str);
        }
        String str2 = c5427c.f20106b;
        if (str2 != null) {
            bundle.putString("name", str2);
        }
        Object obj = c5427c.f20107c;
        if (obj != null) {
            C3887y5.m17820b(bundle, obj);
        }
        String str3 = c5427c.f20108d;
        if (str3 != null) {
            bundle.putString("trigger_event_name", str3);
        }
        bundle.putLong("trigger_timeout", c5427c.f20109e);
        String str4 = c5427c.f20110f;
        if (str4 != null) {
            bundle.putString("timed_out_event_name", str4);
        }
        Bundle bundle2 = c5427c.f20111g;
        if (bundle2 != null) {
            bundle.putBundle("timed_out_event_params", bundle2);
        }
        String str5 = c5427c.f20112h;
        if (str5 != null) {
            bundle.putString("triggered_event_name", str5);
        }
        Bundle bundle3 = c5427c.f20113i;
        if (bundle3 != null) {
            bundle.putBundle("triggered_event_params", bundle3);
        }
        bundle.putLong("time_to_live", c5427c.f20114j);
        String str6 = c5427c.f20115k;
        if (str6 != null) {
            bundle.putString("expired_event_name", str6);
        }
        Bundle bundle4 = c5427c.f20116l;
        if (bundle4 != null) {
            bundle.putBundle("expired_event_params", bundle4);
        }
        bundle.putLong("creation_timestamp", c5427c.f20117m);
        bundle.putBoolean("active", c5427c.f20118n);
        bundle.putLong("triggered_timestamp", c5427c.f20119o);
        return bundle;
    }

    /* renamed from: b */
    public static InterfaceC5424a.C5427c m4002b(Bundle bundle) {
        C7297q.m1883j(bundle);
        InterfaceC5424a.C5427c c5427c = new InterfaceC5424a.C5427c();
        c5427c.f20105a = (String) C7297q.m1883j((String) C3887y5.m17821a(bundle, "origin", String.class, null));
        c5427c.f20106b = (String) C7297q.m1883j((String) C3887y5.m17821a(bundle, "name", String.class, null));
        c5427c.f20107c = C3887y5.m17821a(bundle, "value", Object.class, null);
        c5427c.f20108d = (String) C3887y5.m17821a(bundle, "trigger_event_name", String.class, null);
        c5427c.f20109e = ((Long) C3887y5.m17821a(bundle, "trigger_timeout", Long.class, 0L)).longValue();
        c5427c.f20110f = (String) C3887y5.m17821a(bundle, "timed_out_event_name", String.class, null);
        c5427c.f20111g = (Bundle) C3887y5.m17821a(bundle, "timed_out_event_params", Bundle.class, null);
        c5427c.f20112h = (String) C3887y5.m17821a(bundle, "triggered_event_name", String.class, null);
        c5427c.f20113i = (Bundle) C3887y5.m17821a(bundle, "triggered_event_params", Bundle.class, null);
        c5427c.f20114j = ((Long) C3887y5.m17821a(bundle, "time_to_live", Long.class, 0L)).longValue();
        c5427c.f20115k = (String) C3887y5.m17821a(bundle, "expired_event_name", String.class, null);
        c5427c.f20116l = (Bundle) C3887y5.m17821a(bundle, "expired_event_params", Bundle.class, null);
        c5427c.f20118n = ((Boolean) C3887y5.m17821a(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
        c5427c.f20117m = ((Long) C3887y5.m17821a(bundle, "creation_timestamp", Long.class, 0L)).longValue();
        c5427c.f20119o = ((Long) C3887y5.m17821a(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        return c5427c;
    }

    /* renamed from: d */
    public static void m4000d(String str, String str2, Bundle bundle) {
        if ("clx".equals(str) && "_ae".equals(str2)) {
            bundle.putLong("_r", 1L);
        }
    }

    /* renamed from: e */
    public static boolean m3999e(String str, String str2, Bundle bundle) {
        char c;
        if (!"_cmp".equals(str2)) {
            return true;
        }
        if (!m3995i(str) || bundle == null) {
            return false;
        }
        for (String str3 : f34804d) {
            if (bundle.containsKey(str3)) {
                return false;
            }
        }
        int hashCode = str.hashCode();
        if (hashCode != 101200) {
            if (hashCode != 101230) {
                if (hashCode == 3142703 && str.equals("fiam")) {
                    c = 2;
                }
                c = 65535;
            } else {
                if (str.equals("fdl")) {
                    c = 1;
                }
                c = 65535;
            }
        } else {
            if (str.equals("fcm")) {
                c = 0;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    return false;
                }
                bundle.putString("_cis", "fiam_integration");
                return true;
            }
            bundle.putString("_cis", "fdl_integration");
            return true;
        }
        bundle.putString("_cis", "fcm_integration");
        return true;
    }

    /* renamed from: g */
    public static boolean m3997g(String str, Bundle bundle) {
        if (f34802b.contains(str)) {
            return false;
        }
        if (bundle != null) {
            for (String str2 : f34804d) {
                if (bundle.containsKey(str2)) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    /* renamed from: j */
    public static boolean m3994j(String str, String str2) {
        if (!"_ce1".equals(str2) && !"_ce2".equals(str2)) {
            if ("_ln".equals(str2)) {
                if (str.equals("fcm") || str.equals("fiam")) {
                    return true;
                }
                return false;
            } else if (f34805e.contains(str2)) {
                return false;
            } else {
                for (String str3 : f34806f) {
                    if (str2.matches(str3)) {
                        return false;
                    }
                }
                return true;
            }
        } else if (str.equals("fcm") || str.equals("frc")) {
            return true;
        } else {
            return false;
        }
    }
}
