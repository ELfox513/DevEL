package p016b3;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.Callable;
import p168r4.C5592av;
import p168r4.C5882ip;
import p168r4.C6225rz;
import p168r4.cm0;
import p168r4.cs0;
import p168r4.ht0;
import p168r4.js0;
import p235z2.C7601t;
@TargetApi(16)
/* renamed from: b3.g */
/* loaded from: classes.dex */
public class C0478g {
    public C0478g() {
    }

    public /* synthetic */ C0478g(C0533t2 c0533t2) {
    }

    /* renamed from: r */
    public static C0478g m26374r(int i) {
        return i >= 28 ? new C0474f() : i >= 26 ? new C0462c() : i >= 24 ? new C0537u2() : i >= 21 ? new C0529s2() : i >= 19 ? new C0525r2() : i >= 18 ? new C0521q2() : i >= 17 ? new C0509n2() : new C0478g();
    }

    /* renamed from: s */
    public static final boolean m26373s() {
        int myUid = Process.myUid();
        return myUid == 0 || myUid == 1000;
    }

    /* renamed from: b */
    public String mo26289b(Context context) {
        return "";
    }

    /* renamed from: c */
    public void mo26288c(Context context) {
    }

    /* renamed from: d */
    public Drawable mo26287d(Context context, Bitmap bitmap, boolean z, float f) {
        return new BitmapDrawable(context.getResources(), bitmap);
    }

    /* renamed from: e */
    public int mo26286e(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "wifi_on", 0);
    }

    /* renamed from: f */
    public int mo26285f(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "airplane_mode_on", 0);
    }

    /* renamed from: g */
    public boolean mo26273g(View view) {
        return (view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true;
    }

    /* renamed from: h */
    public int mo26276h() {
        return 5;
    }

    /* renamed from: i */
    public long mo26275i() {
        return -1L;
    }

    /* renamed from: j */
    public ViewGroup.LayoutParams mo26272j() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    /* renamed from: l */
    public js0 mo26269l(cs0 cs0Var, C5882ip c5882ip, boolean z) {
        return new ht0(cs0Var, c5882ip, z);
    }

    /* renamed from: m */
    public int mo26268m() {
        return 1;
    }

    /* renamed from: n */
    public WebResourceResponse mo26267n(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, inputStream);
    }

    /* renamed from: o */
    public boolean mo26256o(Activity activity, Configuration configuration) {
        return false;
    }

    /* renamed from: p */
    public int mo26376p(Context context, TelephonyManager telephonyManager) {
        return 1001;
    }

    /* renamed from: q */
    public void mo26375q(Activity activity) {
    }

    /* renamed from: a */
    public boolean mo26290a(final Context context, final WebSettings webSettings) {
        C0492j1.m26361a(context, new Callable(context, webSettings) { // from class: b3.l2

            /* renamed from: a */
            public final Context f1642a;

            /* renamed from: b */
            public final WebSettings f1643b;

            {
                this.f1642a = context;
                this.f1643b = webSettings;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Context context2 = this.f1642a;
                WebSettings webSettings2 = this.f1643b;
                if (context2.getCacheDir() != null) {
                    webSettings2.setAppCachePath(context2.getCacheDir().getAbsolutePath());
                    webSettings2.setAppCacheMaxSize(0L);
                    webSettings2.setAppCacheEnabled(true);
                }
                webSettings2.setDatabasePath(context2.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath());
                webSettings2.setDatabaseEnabled(true);
                webSettings2.setDomStorageEnabled(true);
                webSettings2.setDisplayZoomControls(false);
                webSettings2.setBuiltInZoomControls(true);
                webSettings2.setSupportZoom(true);
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31146w0)).booleanValue()) {
                    webSettings2.setTextZoom(100);
                }
                webSettings2.setAllowContentAccess(false);
                return Boolean.TRUE;
            }
        });
        webSettings.setAllowFileAccessFromFileURLs(false);
        webSettings.setAllowUniversalAccessFromFileURLs(false);
        return true;
    }

    /* renamed from: k */
    public CookieManager mo26270k(Context context) {
        if (m26373s()) {
            return null;
        }
        try {
            CookieSyncManager.createInstance(context);
            return CookieManager.getInstance();
        } catch (Throwable th) {
            cm0.m12439d("Failed to obtain CookieManager.", th);
            C7601t.m935h().m9056k(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }
}
