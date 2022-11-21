package p016b3;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import java.util.concurrent.Callable;
import p026c4.C1057r;
/* renamed from: b3.l1 */
/* loaded from: classes.dex */
public final class CallableC0500l1 implements Callable<String> {

    /* renamed from: a */
    public final /* synthetic */ Context f1641a;

    public CallableC0500l1(C0508n1 c0508n1, Context context) {
        this.f1641a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ String call() {
        String defaultUserAgent;
        SharedPreferences sharedPreferences = this.f1641a.getSharedPreferences("admob_user_agent", 0);
        String string = sharedPreferences.getString("user_agent", "");
        if (TextUtils.isEmpty(string)) {
            C0543w1.m26251k("User agent is not initialized on Google Play Services. Initializing.");
            defaultUserAgent = WebSettings.getDefaultUserAgent(this.f1641a);
            C1057r.m24727a(this.f1641a, sharedPreferences.edit().putString("user_agent", defaultUserAgent), "admob_user_agent");
            return defaultUserAgent;
        }
        C0543w1.m26251k("User agent is already initialized on Google Play Services.");
        return string;
    }
}
