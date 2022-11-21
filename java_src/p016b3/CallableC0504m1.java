package p016b3;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import java.util.concurrent.Callable;
/* renamed from: b3.m1 */
/* loaded from: classes.dex */
public final class CallableC0504m1 implements Callable<String> {

    /* renamed from: a */
    public final /* synthetic */ Context f1650a;

    /* renamed from: b */
    public final /* synthetic */ Context f1651b;

    public CallableC0504m1(C0508n1 c0508n1, Context context, Context context2) {
        this.f1650a = context;
        this.f1651b = context2;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ String call() {
        SharedPreferences sharedPreferences;
        boolean z = false;
        if (this.f1650a != null) {
            C0543w1.m26251k("Attempting to read user agent from Google Play Services.");
            sharedPreferences = this.f1650a.getSharedPreferences("admob_user_agent", 0);
        } else {
            C0543w1.m26251k("Attempting to read user agent from local cache.");
            sharedPreferences = this.f1651b.getSharedPreferences("admob_user_agent", 0);
            z = true;
        }
        String string = sharedPreferences.getString("user_agent", "");
        if (TextUtils.isEmpty(string)) {
            C0543w1.m26251k("Reading user agent from WebSettings");
            string = WebSettings.getDefaultUserAgent(this.f1651b);
            if (z) {
                sharedPreferences.edit().putString("user_agent", string).apply();
                C0543w1.m26251k("Persisting user agent.");
            }
        }
        return string;
    }
}
