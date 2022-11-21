package p168r4;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.prineside.tdi2.Config;
import java.util.ArrayList;
import java.util.List;
import p026c4.InterfaceC1045f;
/* renamed from: r4.mu2 */
/* loaded from: classes2.dex */
public final class mu2 {

    /* renamed from: a */
    public final g52 f27880a;

    /* renamed from: b */
    public final String f27881b;

    /* renamed from: c */
    public final String f27882c;

    /* renamed from: d */
    public final String f27883d;

    /* renamed from: e */
    public final Context f27884e;

    /* renamed from: f */
    public final cp2 f27885f;

    /* renamed from: g */
    public final InterfaceC1045f f27886g;

    /* renamed from: h */
    public final C6300u f27887h;

    public mu2(g52 g52Var, im0 im0Var, String str, String str2, Context context, cp2 cp2Var, InterfaceC1045f interfaceC1045f, C6300u c6300u) {
        this.f27880a = g52Var;
        this.f27881b = im0Var.f25171a;
        this.f27882c = str;
        this.f27883d = str2;
        this.f27884e = context;
        this.f27885f = cp2Var;
        this.f27886g = interfaceC1045f;
        this.f27887h = c6300u;
    }

    /* renamed from: f */
    public static String m9266f(String str) {
        return (TextUtils.isEmpty(str) || !bm0.m12756j()) ? str : "fakeForAdDebugLog";
    }

    /* renamed from: a */
    public final List<String> m9271a(bp2 bp2Var, no2 no2Var, List<String> list) {
        return m9270b(bp2Var, no2Var, false, "", "", list);
    }

    /* renamed from: d */
    public static final List<String> m9268d(int i, int i2, List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            StringBuilder sb = new StringBuilder(23);
            sb.append("2.");
            sb.append(i2);
            arrayList.add(m9267e(str, "@gw_mpe@", sb.toString()));
        }
        return arrayList;
    }

    /* renamed from: b */
    public final List<String> m9270b(bp2 bp2Var, no2 no2Var, boolean z, String str, String str2, List<String> list) {
        String str3;
        ArrayList arrayList = new ArrayList();
        if (true != z) {
            str3 = "0";
        } else {
            str3 = Config.SITE_API_VERSION;
        }
        for (String str4 : list) {
            String m9267e = m9267e(m9267e(m9267e(str4, "@gw_adlocid@", bp2Var.f21153a.f34161a.f24781f), "@gw_adnetrefresh@", str3), "@gw_sdkver@", this.f27881b);
            if (no2Var != null) {
                m9267e = kk0.m10015a(m9267e(m9267e(m9267e(m9267e, "@gw_qdata@", no2Var.f28438y), "@gw_adnetid@", no2Var.f28437x), "@gw_allocid@", no2Var.f28436w), this.f27884e, no2Var.f28396S);
            }
            String m9267e2 = m9267e(m9267e(m9267e(m9267e, "@gw_adnetstatus@", this.f27880a.m11285g()), "@gw_seqnum@", this.f27882c), "@gw_sessid@", this.f27883d);
            boolean z2 = false;
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30969a2)).booleanValue() && !TextUtils.isEmpty(str)) {
                z2 = true;
            }
            boolean z3 = !TextUtils.isEmpty(str2);
            if (!z2) {
                if (z3) {
                    z3 = true;
                } else {
                    arrayList.add(m9267e2);
                }
            }
            if (this.f27887h.m6684a(Uri.parse(m9267e2))) {
                Uri.Builder buildUpon = Uri.parse(m9267e2).buildUpon();
                if (z2) {
                    buildUpon = buildUpon.appendQueryParameter("ms", str);
                }
                if (z3) {
                    buildUpon = buildUpon.appendQueryParameter("attok", str2);
                }
                m9267e2 = buildUpon.build().toString();
            }
            arrayList.add(m9267e2);
        }
        return arrayList;
    }

    /* renamed from: c */
    public final List<String> m9269c(no2 no2Var, List<String> list, eh0 eh0Var) {
        String m9266f;
        ArrayList arrayList = new ArrayList();
        long mo24763a = this.f27886g.mo24763a();
        try {
            String mo11797a = eh0Var.mo11797a();
            String num = Integer.toString(eh0Var.mo11796b());
            cp2 cp2Var = this.f27885f;
            String str = "";
            if (cp2Var == null) {
                m9266f = "";
            } else {
                m9266f = m9266f(cp2Var.f21649a);
            }
            cp2 cp2Var2 = this.f27885f;
            if (cp2Var2 != null) {
                str = m9266f(cp2Var2.f21650b);
            }
            for (String str2 : list) {
                arrayList.add(kk0.m10015a(m9267e(m9267e(m9267e(m9267e(m9267e(m9267e(str2, "@gw_rwd_userid@", Uri.encode(m9266f)), "@gw_rwd_custom_data@", Uri.encode(str)), "@gw_tmstmp@", Long.toString(mo24763a)), "@gw_rwd_itm@", Uri.encode(mo11797a)), "@gw_rwd_amt@", num), "@gw_sdkver@", this.f27881b), this.f27884e, no2Var.f28396S));
            }
            return arrayList;
        } catch (RemoteException e) {
            cm0.m12439d("Unable to determine award type and amount.", e);
            return arrayList;
        }
    }

    /* renamed from: e */
    public static String m9267e(String str, String str2, String str3) {
        if (true == TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        return str.replaceAll(str2, str3);
    }
}
