package p232z;

import android.content.res.Configuration;
import android.os.Build;
import android.p010os.LocaleList;
/* renamed from: z.b */
/* loaded from: classes.dex */
public final class C7520b {
    /* renamed from: a */
    public static C7523d m1307a(Configuration configuration) {
        LocaleList locales;
        if (Build.VERSION.SDK_INT >= 24) {
            locales = configuration.getLocales();
            return C7523d.m1301d(locales);
        }
        return C7523d.m1304a(configuration.locale);
    }
}
