package p077h3;

import android.os.Bundle;
import android.text.TextUtils;
import com.prineside.tdi2.Config;
import p168r4.C6293tt;
import p168r4.bp2;
import p168r4.hp2;
/* renamed from: h3.p */
/* loaded from: classes.dex */
public final class C4011p {
    /* renamed from: a */
    public static boolean m17554a(bp2 bp2Var) {
        if (m17550e(bp2Var)) {
            C6293tt c6293tt = bp2Var.f21153a.f34161a.f24779d;
            return (c6293tt.f31988D == null && c6293tt.f31993I == null) ? false : true;
        }
        return false;
    }

    /* renamed from: b */
    public static String m17553b(bp2 bp2Var) {
        return !m17550e(bp2Var) ? "" : bp2Var.f21153a.f34161a.f24779d.f31985A;
    }

    /* renamed from: d */
    public static String m17551d(hp2 hp2Var) {
        Bundle bundle = hp2Var.f24779d.f31996d;
        return bundle == null ? "unspecified" : bundle.getString("query_info_type");
    }

    /* renamed from: e */
    public static boolean m17550e(bp2 bp2Var) {
        return bp2Var != null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: c */
    public static String m17552c(bp2 bp2Var) {
        char c;
        if (!m17550e(bp2Var)) {
            return "unspecified";
        }
        String m17551d = m17551d(bp2Var.f21153a.f34161a);
        if (TextUtils.isEmpty(m17551d)) {
            return "unspecified";
        }
        switch (m17551d.hashCode()) {
            case 1743582862:
                if (m17551d.equals("requester_type_0")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1743582863:
                if (m17551d.equals("requester_type_1")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1743582864:
                if (m17551d.equals("requester_type_2")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1743582865:
                if (m17551d.equals("requester_type_3")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1743582866:
                if (m17551d.equals("requester_type_4")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1743582867:
                if (m17551d.equals("requester_type_5")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1743582868:
                if (m17551d.equals("requester_type_6")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return "0";
            case 1:
                return Config.SITE_API_VERSION;
            case 2:
                return "2";
            case 3:
                return "3";
            case 4:
                return "4";
            case 5:
                return "5";
            case 6:
                return "6";
            default:
                return m17551d;
        }
    }
}
