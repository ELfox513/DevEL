package p004a3;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import p016b3.C0497k2;
import p016b3.C0543w1;
import p168r4.C5592av;
import p168r4.C6225rz;
import p168r4.cm0;
import p235z2.C7601t;
/* renamed from: a3.a */
/* loaded from: classes.dex */
public final class C0058a {
    /* renamed from: b */
    public static final boolean m27708b(Context context, C0064e c0064e, InterfaceC0083x interfaceC0083x, InterfaceC0081v interfaceC0081v) {
        String str;
        int i = 0;
        if (c0064e == null) {
            cm0.m12437f("No intent data for launcher overlay.");
            return false;
        }
        C6225rz.m7278a(context);
        Intent intent = c0064e.f107s;
        if (intent != null) {
            return m27709a(context, intent, interfaceC0083x, interfaceC0081v, c0064e.f109u);
        }
        Intent intent2 = new Intent();
        if (TextUtils.isEmpty(c0064e.f101b)) {
            cm0.m12437f("Open GMSG did not contain a URL.");
            return false;
        }
        if (!TextUtils.isEmpty(c0064e.f102d)) {
            intent2.setDataAndType(Uri.parse(c0064e.f101b), c0064e.f102d);
        } else {
            intent2.setData(Uri.parse(c0064e.f101b));
        }
        intent2.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(c0064e.f103k)) {
            intent2.setPackage(c0064e.f103k);
        }
        if (!TextUtils.isEmpty(c0064e.f104p)) {
            String[] split = c0064e.f104p.split("/", 2);
            if (split.length < 2) {
                String valueOf = String.valueOf(c0064e.f104p);
                if (valueOf.length() != 0) {
                    str = "Could not parse component name from open GMSG: ".concat(valueOf);
                } else {
                    str = new String("Could not parse component name from open GMSG: ");
                }
                cm0.m12437f(str);
                return false;
            }
            intent2.setClassName(split[0], split[1]);
        }
        String str2 = c0064e.f105q;
        if (!TextUtils.isEmpty(str2)) {
            try {
                i = Integer.parseInt(str2);
            } catch (NumberFormatException unused) {
                cm0.m12437f("Could not parse intent flags.");
            }
            intent2.addFlags(i);
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30921U2)).booleanValue()) {
            intent2.addFlags(268435456);
            intent2.putExtra("android.support.customtabs.extra.user_opt_out", true);
        } else {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30913T2)).booleanValue()) {
                C7601t.m939d();
                C0497k2.m26325b0(context, intent2);
            }
        }
        return m27709a(context, intent2, interfaceC0083x, interfaceC0081v, c0064e.f109u);
    }

    /* renamed from: a */
    public static final boolean m27709a(Context context, Intent intent, InterfaceC0083x interfaceC0083x, InterfaceC0081v interfaceC0081v, boolean z) {
        String str;
        if (z) {
            return m27707c(context, intent.getData(), interfaceC0083x, interfaceC0081v);
        }
        try {
            String valueOf = String.valueOf(intent.toURI());
            if (valueOf.length() != 0) {
                str = "Launching an intent: ".concat(valueOf);
            } else {
                str = new String("Launching an intent: ");
            }
            C0543w1.m26251k(str);
            C7601t.m939d();
            C0497k2.m26306p(context, intent);
            if (interfaceC0083x != null) {
                interfaceC0083x.mo4164g();
            }
            if (interfaceC0081v != null) {
                interfaceC0081v.mo11850R(true);
            }
            return true;
        } catch (ActivityNotFoundException e) {
            cm0.m12437f(e.getMessage());
            if (interfaceC0081v != null) {
                interfaceC0081v.mo11850R(false);
            }
            return false;
        }
    }

    /* renamed from: c */
    public static final boolean m27707c(Context context, Uri uri, InterfaceC0083x interfaceC0083x, InterfaceC0081v interfaceC0081v) {
        int i;
        try {
            i = C7601t.m939d().m26329Z(context, uri);
            if (interfaceC0083x != null) {
                interfaceC0083x.mo4164g();
            }
        } catch (ActivityNotFoundException e) {
            cm0.m12437f(e.getMessage());
            i = 6;
        }
        if (interfaceC0081v != null) {
            interfaceC0081v.mo11849x(i);
        }
        if (i != 5) {
            return false;
        }
        return true;
    }
}
