package p168r4;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import p016b3.InterfaceC0549y1;
/* renamed from: r4.fj0 */
/* loaded from: classes2.dex */
public final class fj0 implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a */
    public final Context f23513a;

    /* renamed from: b */
    public final SharedPreferences f23514b;

    /* renamed from: c */
    public final InterfaceC0549y1 f23515c;

    /* renamed from: d */
    public final ik0 f23516d;

    /* renamed from: e */
    public String f23517e = "";

    public fj0(Context context, InterfaceC0549y1 interfaceC0549y1, ik0 ik0Var) {
        this.f23514b = PreferenceManager.getDefaultSharedPreferences(context);
        this.f23515c = interfaceC0549y1;
        this.f23513a = context;
        this.f23516d = ik0Var;
    }

    /* renamed from: a */
    public final void m11503a() {
        this.f23514b.registerOnSharedPreferenceChangeListener(this);
        onSharedPreferenceChanged(this.f23514b, "IABTCF_PurposeConsents");
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        Context context;
        if (!"IABTCF_PurposeConsents".equals(str)) {
            return;
        }
        String string = sharedPreferences.getString("IABTCF_PurposeConsents", "");
        if (!string.isEmpty() && !this.f23517e.equals(string)) {
            this.f23517e = string;
            boolean z = false;
            if (string.charAt(0) != '1') {
                z = true;
            }
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31082o0)).booleanValue()) {
                this.f23515c.mo26218S0(z);
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31158x4)).booleanValue() && z && (context = this.f23513a) != null) {
                    context.deleteDatabase("OfflineUpload.db");
                }
            }
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31042j0)).booleanValue()) {
                this.f23516d.m10623f();
            }
        }
    }
}
