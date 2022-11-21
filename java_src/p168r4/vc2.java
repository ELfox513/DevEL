package p168r4;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import java.util.concurrent.Callable;
import p235z2.C7601t;
/* renamed from: r4.vc2 */
/* loaded from: classes2.dex */
public final class vc2 implements eg2<tc2> {

    /* renamed from: a */
    public final Context f32692a;

    /* renamed from: b */
    public final i83 f32693b;

    public vc2(Context context, i83 i83Var) {
        this.f32692a = context;
        this.f32693b = i83Var;
    }

    @Override // p168r4.eg2
    public final h83<tc2> zza() {
        return this.f32693b.mo8015c(new Callable(this) { // from class: r4.sc2

            /* renamed from: a */
            public final vc2 f31308a;

            {
                this.f31308a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f31308a.m6168a();
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ tc2 m6168a() {
        String string;
        Bundle bundle;
        C7601t.m939d();
        Context context = this.f32692a;
        String str = "";
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31102q4)).booleanValue()) {
            string = "";
        } else {
            string = context.getSharedPreferences("mobileads_consent", 0).getString("consent_string", "");
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31118s4)).booleanValue()) {
            str = this.f32692a.getSharedPreferences("mobileads_consent", 0).getString("fc_consent", "");
        }
        C7601t.m939d();
        Context context2 = this.f32692a;
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31110r4)).booleanValue()) {
            bundle = null;
        } else {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context2);
            bundle = new Bundle();
            if (defaultSharedPreferences.contains("IABConsent_CMPPresent")) {
                bundle.putBoolean("IABConsent_CMPPresent", defaultSharedPreferences.getBoolean("IABConsent_CMPPresent", false));
            }
            String[] strArr = {"IABConsent_SubjectToGDPR", "IABConsent_ConsentString", "IABConsent_ParsedPurposeConsents", "IABConsent_ParsedVendorConsents"};
            for (int i = 0; i < 4; i++) {
                String str2 = strArr[i];
                if (defaultSharedPreferences.contains(str2)) {
                    bundle.putString(str2, defaultSharedPreferences.getString(str2, null));
                }
            }
        }
        return new tc2(string, str, bundle, null);
    }
}
