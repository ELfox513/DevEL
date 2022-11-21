package p229y4;

import android.app.Activity;
import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import p106k5.C4462a;
import p106k5.C4469d;
/* renamed from: y4.z1 */
/* loaded from: classes2.dex */
public final class C7501z1 {

    /* renamed from: a */
    public final C7498y1 f37329a;

    /* renamed from: b */
    public final Activity f37330b;

    /* renamed from: c */
    public final C4462a f37331c;

    /* renamed from: d */
    public final C4469d f37332d;

    public /* synthetic */ C7501z1(C7498y1 c7498y1, Activity activity, C4462a c4462a, C4469d c4469d, C7495x1 c7495x1) {
        this.f37329a = c7498y1;
        this.f37330b = activity;
        this.f37331c = c4462a;
        this.f37332d = c4469d;
    }

    /* renamed from: a */
    public static /* synthetic */ C7491w0 m1371a(C7501z1 c7501z1) {
        Bundle bundle;
        Application application;
        Application application2;
        C7418b0 c7418b0;
        List<EnumC7476r0> arrayList;
        C7463n c7463n;
        String locale;
        Application application3;
        Application application4;
        Application application5;
        Window window;
        View decorView;
        WindowInsets rootWindowInsets;
        DisplayCutout displayCutout;
        List<C7482t0> list;
        Application application6;
        PackageInfo packageInfo;
        Application application7;
        Application application8;
        long j;
        Application application9;
        C7491w0 c7491w0 = new C7491w0();
        String m16337c = c7501z1.f37332d.m16337c();
        String str = null;
        if (TextUtils.isEmpty(m16337c)) {
            try {
                application = c7501z1.f37329a.f37313a;
                PackageManager packageManager = application.getPackageManager();
                application2 = c7501z1.f37329a.f37313a;
                bundle = packageManager.getApplicationInfo(application2.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                bundle = null;
            }
            if (bundle != null) {
                m16337c = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
            }
            if (TextUtils.isEmpty(m16337c)) {
                throw new C7486u1(3, "The UMP SDK requires a valid application ID in your AndroidManifest.xml through a com.google.android.gms.ads.APPLICATION_ID meta-data tag.\nExample AndroidManifest:\n    <meta-data\n        android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\n        android:value=\"ca-app-pub-0000000000000000~0000000000\">");
            }
        }
        c7491w0.f37287a = m16337c;
        c7418b0 = c7501z1.f37329a.f37314b;
        C7413a m1463a = c7418b0.m1463a();
        if (m1463a != null) {
            c7491w0.f37289c = m1463a.f37109a;
            c7491w0.f37288b = Boolean.valueOf(m1463a.f37110b);
        }
        if (!c7501z1.f37331c.m16345b()) {
            arrayList = Collections.emptyList();
        } else {
            arrayList = new ArrayList<>();
            int m16346a = c7501z1.f37331c.m16346a();
            if (m16346a != 1) {
                if (m16346a == 2) {
                    arrayList.add(EnumC7476r0.GEO_OVERRIDE_NON_EEA);
                }
            } else {
                arrayList.add(EnumC7476r0.GEO_OVERRIDE_EEA);
            }
            arrayList.add(EnumC7476r0.PREVIEWING_DEBUG_MESSAGES);
        }
        c7491w0.f37297k = arrayList;
        c7463n = c7501z1.f37329a.f37315c;
        c7491w0.f37293g = c7463n.m1414b();
        c7491w0.f37292f = Boolean.valueOf(c7501z1.f37332d.m16338b());
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            locale = Locale.getDefault().toLanguageTag();
        } else {
            locale = Locale.getDefault().toString();
        }
        c7491w0.f37291e = locale;
        C7479s0 c7479s0 = new C7479s0();
        c7479s0.f37269b = Integer.valueOf(i);
        c7479s0.f37268a = Build.MODEL;
        c7479s0.f37270c = 2;
        c7491w0.f37290d = c7479s0;
        application3 = c7501z1.f37329a.f37313a;
        Configuration configuration = application3.getResources().getConfiguration();
        application4 = c7501z1.f37329a.f37313a;
        application4.getResources().getConfiguration();
        C7485u0 c7485u0 = new C7485u0();
        c7485u0.f37277a = Integer.valueOf(configuration.screenWidthDp);
        c7485u0.f37278b = Integer.valueOf(configuration.screenHeightDp);
        application5 = c7501z1.f37329a.f37313a;
        c7485u0.f37279c = Double.valueOf(application5.getResources().getDisplayMetrics().density);
        if (i < 28) {
            list = Collections.emptyList();
        } else {
            Activity activity = c7501z1.f37330b;
            if (activity == null) {
                window = null;
            } else {
                window = activity.getWindow();
            }
            if (window == null) {
                decorView = null;
            } else {
                decorView = window.getDecorView();
            }
            if (decorView == null) {
                rootWindowInsets = null;
            } else {
                rootWindowInsets = decorView.getRootWindowInsets();
            }
            if (rootWindowInsets == null) {
                displayCutout = null;
            } else {
                displayCutout = rootWindowInsets.getDisplayCutout();
            }
            if (displayCutout == null) {
                list = Collections.emptyList();
            } else {
                displayCutout.getSafeInsetBottom();
                ArrayList arrayList2 = new ArrayList();
                for (Rect rect : displayCutout.getBoundingRects()) {
                    if (rect != null) {
                        C7482t0 c7482t0 = new C7482t0();
                        c7482t0.f37273b = Integer.valueOf(rect.left);
                        c7482t0.f37274c = Integer.valueOf(rect.right);
                        c7482t0.f37272a = Integer.valueOf(rect.top);
                        c7482t0.f37275d = Integer.valueOf(rect.bottom);
                        arrayList2.add(c7482t0);
                    }
                }
                list = arrayList2;
            }
        }
        c7485u0.f37280d = list;
        c7491w0.f37294h = c7485u0;
        application6 = c7501z1.f37329a.f37313a;
        try {
            application9 = c7501z1.f37329a.f37313a;
            packageInfo = application9.getPackageManager().getPackageInfo(application6.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused2) {
            packageInfo = null;
        }
        C7473q0 c7473q0 = new C7473q0();
        c7473q0.f37255a = application6.getPackageName();
        application7 = c7501z1.f37329a.f37313a;
        PackageManager packageManager2 = application7.getPackageManager();
        application8 = c7501z1.f37329a.f37313a;
        CharSequence applicationLabel = packageManager2.getApplicationLabel(application8.getApplicationInfo());
        if (applicationLabel != null) {
            str = applicationLabel.toString();
        }
        c7473q0.f37256b = str;
        if (packageInfo != null) {
            if (Build.VERSION.SDK_INT >= 28) {
                j = packageInfo.getLongVersionCode();
            } else {
                j = packageInfo.versionCode;
            }
            c7473q0.f37257c = Long.toString(j);
        }
        c7491w0.f37295i = c7473q0;
        C7488v0 c7488v0 = new C7488v0();
        c7488v0.f37283a = "2.0.0";
        c7491w0.f37296j = c7488v0;
        return c7491w0;
    }
}
