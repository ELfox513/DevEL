package p187t5;

import android.os.Bundle;
import java.util.Locale;
import p160q5.InterfaceC5424a;
import p196u5.C6930f;
import p205v5.InterfaceC7072b;
/* renamed from: t5.e */
/* loaded from: classes2.dex */
public class C6793e implements InterfaceC5424a.InterfaceC5426b {

    /* renamed from: a */
    public InterfaceC7072b f35478a;

    /* renamed from: b */
    public InterfaceC7072b f35479b;

    /* renamed from: b */
    public static void m3424b(InterfaceC7072b interfaceC7072b, String str, Bundle bundle) {
        if (interfaceC7072b == null) {
            return;
        }
        interfaceC7072b.mo2570b(str, bundle);
    }

    /* renamed from: d */
    public void m3422d(InterfaceC7072b interfaceC7072b) {
        this.f35479b = interfaceC7072b;
    }

    /* renamed from: e */
    public void m3421e(InterfaceC7072b interfaceC7072b) {
        this.f35478a = interfaceC7072b;
    }

    /* renamed from: c */
    public final void m3423c(String str, Bundle bundle) {
        InterfaceC7072b interfaceC7072b;
        if ("clx".equals(bundle.getString("_o"))) {
            interfaceC7072b = this.f35478a;
        } else {
            interfaceC7072b = this.f35479b;
        }
        m3424b(interfaceC7072b, str, bundle);
    }

    @Override // p160q5.InterfaceC5424a.InterfaceC5426b
    /* renamed from: a */
    public void mo3425a(int i, Bundle bundle) {
        String string;
        C6930f.m3016f().m3013i(String.format(Locale.US, "Analytics listener received message. ID: %d, Extras: %s", Integer.valueOf(i), bundle));
        if (bundle != null && (string = bundle.getString("name")) != null) {
            Bundle bundle2 = bundle.getBundle("params");
            if (bundle2 == null) {
                bundle2 = new Bundle();
            }
            m3423c(string, bundle2);
        }
    }
}
