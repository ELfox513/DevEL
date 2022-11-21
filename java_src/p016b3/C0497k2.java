package p016b3;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.badlogic.gdx.net.HttpRequestHeader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p026c4.C1047h;
import p026c4.C1054o;
import p042d4.C3325e;
import p068g3.C3584e;
import p136o.C5057c;
import p168r4.AbstractC5928jz;
import p168r4.C5592av;
import p168r4.C6225rz;
import p168r4.C6479yu;
import p168r4.bm0;
import p168r4.bt0;
import p168r4.c03;
import p168r4.ch0;
import p168r4.cm0;
import p168r4.h83;
import p168r4.js3;
import p168r4.n10;
import p168r4.no2;
import p168r4.q00;
import p168r4.qm0;
import p168r4.so2;
import p168r4.tr0;
import p168r4.up1;
import p168r4.vl0;
import p168r4.y73;
import p202v2.C6991n;
import p219x2.C7239a;
import p235z2.C7601t;
/* renamed from: b3.k2 */
/* loaded from: classes.dex */
public final class C0497k2 {

    /* renamed from: i */
    public static final c03 f1630i = new HandlerC0546x1(Looper.getMainLooper());

    /* renamed from: j */
    public static boolean f1631j = false;

    /* renamed from: e */
    public String f1636e;

    /* renamed from: a */
    public final AtomicReference<Pattern> f1632a = new AtomicReference<>(null);

    /* renamed from: b */
    public final AtomicReference<Pattern> f1633b = new AtomicReference<>(null);

    /* renamed from: c */
    public boolean f1634c = true;

    /* renamed from: d */
    public final Object f1635d = new Object();

    /* renamed from: f */
    public boolean f1637f = false;

    /* renamed from: g */
    public boolean f1638g = false;

    /* renamed from: h */
    public final Executor f1639h = Executors.newSingleThreadExecutor();

    /* renamed from: L */
    public static int m26343L(int i) {
        if (i >= 5000) {
            return i;
        }
        if (i > 0) {
            StringBuilder sb = new StringBuilder(97);
            sb.append("HTTP timeout too low: ");
            sb.append(i);
            sb.append(" milliseconds. Reverting to default timeout: 60000 milliseconds.");
            cm0.m12437f(sb.toString());
            return 60000;
        }
        return 60000;
    }

    /* renamed from: d */
    public static final InterfaceC0548y0 m26322d(Context context) {
        try {
            Object newInstance = context.getClassLoader().loadClass("com.google.android.gms.ads.internal.util.WorkManagerUtil").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                cm0.m12440c("Instantiated WorkManagerUtil not instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) newInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
            if (queryLocalInterface instanceof InterfaceC0548y0) {
                return (InterfaceC0548y0) queryLocalInterface;
            }
            return new C0542w0(iBinder);
        } catch (Exception e) {
            C7601t.m935h().m9056k(e, "Failed to instantiate WorkManagerUtil");
            return null;
        }
    }

    /* renamed from: e0 */
    public static final String m26319e0() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return str2;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + str2.length());
        sb.append(str);
        sb.append(" ");
        sb.append(str2);
        return sb.toString();
    }

    @TargetApi(16)
    /* renamed from: g */
    public static final boolean m26316g(Context context) {
        KeyguardManager m26350E;
        return context != null && C1054o.m24738c() && (m26350E = m26350E(context)) != null && m26350E.isKeyguardLocked();
    }

    /* renamed from: g0 */
    public static final int[] m26315g0() {
        return new int[]{0, 0};
    }

    /* renamed from: h */
    public static final boolean m26314h(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException unused) {
            return true;
        } catch (Throwable th) {
            cm0.m12439d("Error loading class.", th);
            C7601t.m935h().m9056k(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    /* renamed from: j */
    public static final boolean m26312j(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        PowerManager powerManager;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (runningAppProcessInfo.importance == 100 && !keyguardManager.inKeyguardRestrictedInputMode() && (powerManager = (PowerManager) context.getSystemService("power")) != null) {
                        return !powerManager.isScreenOn();
                    }
                    return true;
                }
            }
            return true;
        } catch (Throwable unused) {
        }
        return false;
    }

    /* renamed from: R */
    public final JSONObject m26337R(Bundle bundle, JSONObject jSONObject) {
        if (bundle != null) {
            try {
                return m26336S(bundle);
            } catch (JSONException e) {
                cm0.m12439d("Error converting Bundle to JSON", e);
                return null;
            }
        }
        return null;
    }

    /* renamed from: T */
    public final h83<Map<String, String>> m26335T(Uri uri) {
        return y73.m4811d(new Callable(uri) { // from class: b3.c2

            /* renamed from: a */
            public final Uri f1590a;

            {
                this.f1590a = uri;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Uri uri2 = this.f1590a;
                c03 c03Var = C0497k2.f1630i;
                C7601t.m939d();
                return C0497k2.m26304r(uri2);
            }
        }, this.f1639h);
    }

    /* renamed from: E */
    public static KeyguardManager m26350E(Context context) {
        Object systemService = context.getSystemService("keyguard");
        if (systemService != null && (systemService instanceof KeyguardManager)) {
            return (KeyguardManager) systemService;
        }
        return null;
    }

    /* renamed from: G */
    public static String m26348G(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        String string = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
        return TextUtils.isEmpty(string) ? "" : (string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$") || string.matches("^/\\d+~.+$")) ? string : "";
    }

    /* renamed from: b */
    public static final WebResourceResponse m26326b(Context context, String str, String str2) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put(HttpRequestHeader.UserAgent, C7601t.m939d().m26339P(context, str));
            hashMap.put("Cache-Control", "max-stale=3600");
            String str3 = new C0539v0(context).m26253b(0, str2, hashMap, null).get(60L, TimeUnit.SECONDS);
            if (str3 != null) {
                return new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(str3.getBytes("UTF-8")));
            }
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            cm0.m12436g("Could not fetch MRAID JS.", e);
        }
        return null;
    }

    @TargetApi(18)
    /* renamed from: b0 */
    public static final void m26325b0(Context context, Intent intent) {
        Bundle bundle;
        if (intent != null && C1054o.m24736e()) {
            if (intent.getExtras() != null) {
                bundle = intent.getExtras();
            } else {
                bundle = new Bundle();
            }
            bundle.putBinder("android.support.customtabs.extra.SESSION", null);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            intent.putExtras(bundle);
        }
    }

    /* renamed from: d0 */
    public static final String m26321d0() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("Mozilla/5.0 (Linux; U; Android");
        String str = Build.VERSION.RELEASE;
        if (str != null) {
            sb.append(" ");
            sb.append(str);
        }
        sb.append("; ");
        sb.append(Locale.getDefault());
        String str2 = Build.DEVICE;
        if (str2 != null) {
            sb.append("; ");
            sb.append(str2);
            String str3 = Build.DISPLAY;
            if (str3 != null) {
                sb.append(" Build/");
                sb.append(str3);
            }
        }
        sb.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return sb.toString();
    }

    /* renamed from: f0 */
    public static final DisplayMetrics m26317f0(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    /* renamed from: l */
    public static final boolean m26310l(Context context) {
        Window window;
        if ((context instanceof Activity) && (window = ((Activity) context).getWindow()) != null && window.getDecorView() != null) {
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            window.getDecorView().getGlobalVisibleRect(rect, null);
            window.getDecorView().getWindowVisibleDisplayFrame(rect2);
            if (rect.bottom != 0 && rect2.bottom != 0 && rect.top == rect2.top) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: m */
    public static final void m26309m(View view, int i, MotionEvent motionEvent) {
        String str;
        int i2;
        int i3;
        int i4;
        String str2;
        no2 mo5128G;
        so2 mo5117M;
        View view2 = view;
        int[] iArr = new int[2];
        Rect rect = new Rect();
        try {
            String packageName = view.getContext().getPackageName();
            if (view2 instanceof up1) {
                view2 = ((up1) view2).getChildAt(0);
            }
            if (!(view2 instanceof C6991n) && !(view2 instanceof C3584e)) {
                str = "UNKNOWN";
                i2 = 0;
            } else {
                str = "NATIVE";
                i2 = 1;
            }
            if (view2.getLocalVisibleRect(rect)) {
                i4 = rect.width();
                i3 = rect.height();
            } else {
                i3 = 0;
                i4 = 0;
            }
            C7601t.m939d();
            long m26328a = m26328a(view2);
            view2.getLocationOnScreen(iArr);
            int i5 = iArr[0];
            int i6 = iArr[1];
            String str3 = "none";
            if (!(view2 instanceof bt0) || (mo5117M = ((bt0) view2).mo5117M()) == null) {
                str2 = "none";
            } else {
                str2 = mo5117M.f31426b;
            }
            if ((view2 instanceof tr0) && (mo5128G = ((tr0) view2).mo5128G()) != null) {
                str = no2.m9024a(mo5128G.f28406b);
                i2 = mo5128G.f28414f;
                str3 = mo5128G.f28382E;
            }
            cm0.m12438e(String.format(Locale.US, "<Ad package=%s, adNetCls=%s, gwsQueryId=%s, format=%s, impType=%d, class=%s, x=%d, y=%d, width=%d, height=%d, vWidth=%d, vHeight=%d, alpha=%d, state=%s>", packageName, str3, str2, str, Integer.valueOf(i2), view2.getClass().getName(), Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(view2.getWidth()), Integer.valueOf(view2.getHeight()), Integer.valueOf(i4), Integer.valueOf(i3), Long.valueOf(m26328a), Integer.toString(i, 2)));
        } catch (Exception e) {
            cm0.m12439d("Failure getting view location.", e);
        }
    }

    /* renamed from: n */
    public static final void m26308n(Context context, String str, String str2) {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.add(str2);
        for (String str3 : arrayList) {
            new C0480g1(context, str, str3).mo10833c();
        }
    }

    /* renamed from: o */
    public static final void m26307o(Context context, Throwable th) {
        if (context != null) {
            try {
                if (n10.f28075b.m6673e().booleanValue()) {
                    C1047h.m24764a(context, th);
                }
            } catch (IllegalStateException unused) {
            }
        }
    }

    /* renamed from: r */
    public static final Map<String, String> m26304r(Uri uri) {
        if (uri == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str : uri.getQueryParameterNames()) {
            if (!TextUtils.isEmpty(str)) {
                hashMap.put(str, uri.getQueryParameter(str));
            }
        }
        return hashMap;
    }

    /* renamed from: u */
    public static final String m26301u(Context context) {
        try {
            return new WebView(context).getSettings().getUserAgentString();
        } catch (Throwable unused) {
            return m26321d0();
        }
    }

    @TargetApi(18)
    /* renamed from: x */
    public static final void m26298x(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            m26325b0(context, intent);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            String uri2 = uri.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(uri2).length() + 26);
            sb.append("Opening ");
            sb.append(uri2);
            sb.append(" in a new browser.");
            cm0.m12442a(sb.toString());
        } catch (ActivityNotFoundException e) {
            cm0.m12439d("No browser is found.", e);
        }
    }

    /* renamed from: B */
    public final JSONArray m26353B(Collection<?> collection) {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            m26352C(jSONArray, it.next());
        }
        return jSONArray;
    }

    /* renamed from: C */
    public final void m26352C(JSONArray jSONArray, Object obj) {
        if (obj instanceof Bundle) {
            jSONArray.put(m26336S((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONArray.put(m26338Q((Map) obj));
        } else if (obj instanceof Collection) {
            jSONArray.put(m26353B((Collection) obj));
        } else if (obj instanceof Object[]) {
            JSONArray jSONArray2 = new JSONArray();
            for (Object obj2 : (Object[]) obj) {
                m26352C(jSONArray2, obj2);
            }
            jSONArray.put(jSONArray2);
        } else {
            jSONArray.put(obj);
        }
    }

    /* renamed from: D */
    public final void m26351D(JSONObject jSONObject, String str, Object obj) {
        if (obj instanceof Bundle) {
            jSONObject.put(str, m26336S((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONObject.put(str, m26338Q((Map) obj));
        } else if (obj instanceof Collection) {
            if (str == null) {
                str = "null";
            }
            jSONObject.put(str, m26353B((Collection) obj));
        } else if (obj instanceof Object[]) {
            jSONObject.put(str, m26353B(Arrays.asList((Object[]) obj)));
        } else {
            jSONObject.put(str, obj);
        }
    }

    /* renamed from: N */
    public final boolean m26341N(Context context) {
        if (this.f1637f) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new C0493j2(this, null), intentFilter);
        this.f1637f = true;
        return true;
    }

    /* renamed from: O */
    public final boolean m26340O(Context context) {
        if (this.f1638g) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        context.getApplicationContext().registerReceiver(new C0485h2(this, null), intentFilter);
        this.f1638g = true;
        return true;
    }

    /* renamed from: P */
    public final String m26339P(Context context, String str) {
        String str2;
        synchronized (this.f1635d) {
            String str3 = this.f1636e;
            if (str3 != null) {
                return str3;
            }
            if (str == null) {
                return m26321d0();
            }
            try {
                this.f1636e = C7601t.m937f().mo26289b(context);
            } catch (Exception unused) {
            }
            if (TextUtils.isEmpty(this.f1636e)) {
                C6479yu.m4568a();
                if (!vl0.m6114n()) {
                    this.f1636e = null;
                    f1630i.post(new RunnableC0473e2(this, context));
                    while (this.f1636e == null) {
                        try {
                            this.f1635d.wait();
                        } catch (InterruptedException unused2) {
                            String m26321d0 = m26321d0();
                            this.f1636e = m26321d0;
                            String valueOf = String.valueOf(m26321d0);
                            if (valueOf.length() != 0) {
                                str2 = "Interrupted, use default user agent: ".concat(valueOf);
                            } else {
                                str2 = new String("Interrupted, use default user agent: ");
                            }
                            cm0.m12437f(str2);
                        }
                    }
                } else {
                    this.f1636e = m26301u(context);
                }
            }
            String valueOf2 = String.valueOf(this.f1636e);
            StringBuilder sb = new StringBuilder(valueOf2.length() + 10 + str.length());
            sb.append(valueOf2);
            sb.append(" (Mobile; ");
            sb.append(str);
            this.f1636e = sb.toString();
            try {
                if (C3325e.m19140a(context).m19142g()) {
                    this.f1636e = String.valueOf(this.f1636e).concat(";aia");
                }
            } catch (Exception e) {
                C7601t.m935h().m9056k(e, "AdUtil.getUserAgent");
            }
            String concat = String.valueOf(this.f1636e).concat(")");
            this.f1636e = concat;
            return concat;
        }
    }

    /* renamed from: Q */
    public final JSONObject m26338Q(Map<String, ?> map) {
        String str;
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str2 : map.keySet()) {
                m26351D(jSONObject, str2, map.get(str2));
            }
            return jSONObject;
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(e.getMessage());
            if (valueOf.length() != 0) {
                str = "Could not convert map to JSON: ".concat(valueOf);
            } else {
                str = new String("Could not convert map to JSON: ");
            }
            throw new JSONException(str);
        }
    }

    /* renamed from: S */
    public final JSONObject m26336S(Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            m26351D(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    /* renamed from: W */
    public final boolean m26332W(String str) {
        return m26349F(str, this.f1632a, (String) C5592av.m12935c().m8098c(C6225rz.f30934W));
    }

    /* renamed from: X */
    public final boolean m26331X(String str) {
        return m26349F(str, this.f1633b, (String) C5592av.m12935c().m8098c(C6225rz.f30942X));
    }

    @TargetApi(18)
    /* renamed from: Z */
    public final int m26329Z(Context context, Uri uri) {
        int i;
        if (context == null) {
            C0543w1.m26251k("Trying to open chrome custom tab on a null context");
            return 3;
        }
        if (!C1054o.m24736e()) {
            C0543w1.m26251k("Chrome Custom Tabs can only work with version Jellybean onwards.");
            i = 1;
        } else if (!(context instanceof Activity)) {
            C0543w1.m26251k("Chrome Custom Tabs can only work with Activity context.");
            i = 2;
        } else {
            i = 0;
        }
        AbstractC5928jz<Boolean> abstractC5928jz = C6225rz.f30937W2;
        AbstractC5928jz<Boolean> abstractC5928jz2 = C6225rz.f30945X2;
        if (true == ((Boolean) C5592av.m12935c().m8098c(abstractC5928jz)).equals(C5592av.m12935c().m8098c(abstractC5928jz2))) {
            i = 9;
        }
        if (i != 0) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(268435456);
            context.startActivity(intent);
            return i;
        }
        if (((Boolean) C5592av.m12935c().m8098c(abstractC5928jz)).booleanValue()) {
            q00 q00Var = new q00();
            q00Var.m8083d(new C0469d2(this, q00Var, context, uri));
            q00Var.m8082e((Activity) context);
        }
        if (((Boolean) C5592av.m12935c().m8098c(abstractC5928jz2)).booleanValue()) {
            C5057c m14739a = new C5057c.C5058a().m14739a();
            m14739a.f19270a.setPackage(js3.m10169a(context));
            m14739a.m14740a(context, uri);
            return 5;
        }
        return 5;
    }

    /* renamed from: F */
    public static boolean m26349F(String str, AtomicReference<Pattern> atomicReference, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Pattern pattern = atomicReference.get();
            if (pattern == null || !str2.equals(pattern.pattern())) {
                pattern = Pattern.compile(str2);
                atomicReference.set(pattern);
            }
            return pattern.matcher(str).matches();
        } catch (PatternSyntaxException unused) {
            return false;
        }
    }

    /* renamed from: H */
    public static Bundle m26347H(Context context) {
        try {
            return C3325e.m19140a(context).m19146c(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            C0543w1.m26250l("Error getting metadata", e);
            return null;
        }
    }

    /* renamed from: V */
    public static void m26333V(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            qm0.f30190a.execute(runnable);
        }
    }

    /* renamed from: a */
    public static final long m26328a(View view) {
        float f;
        int i;
        float f2 = Float.MAX_VALUE;
        ViewParent viewParent = view;
        do {
            f = 0.0f;
            if (!(viewParent instanceof View)) {
                break;
            }
            View view2 = viewParent;
            f2 = Math.min(f2, view2.getAlpha());
            i = (f2 > 0.0f ? 1 : (f2 == 0.0f ? 0 : -1));
            viewParent = view2.getParent();
        } while (i > 0);
        if (f2 >= 0.0f) {
            f = f2;
        }
        return Math.round(f * 100.0f);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0016 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0017  */
    /* renamed from: a0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m26327a0(android.view.View r2) {
        /*
            android.view.View r2 = r2.getRootView()
            r0 = 0
            if (r2 != 0) goto L9
        L7:
            r2 = r0
            goto L13
        L9:
            android.content.Context r2 = r2.getContext()
            boolean r1 = r2 instanceof android.app.Activity
            if (r1 == 0) goto L7
            android.app.Activity r2 = (android.app.Activity) r2
        L13:
            r1 = 0
            if (r2 != 0) goto L17
            return r1
        L17:
            android.view.Window r2 = r2.getWindow()
            if (r2 != 0) goto L1e
            goto L22
        L1e:
            android.view.WindowManager$LayoutParams r0 = r2.getAttributes()
        L22:
            if (r0 == 0) goto L2d
            int r2 = r0.flags
            r0 = 524288(0x80000, float:7.34684E-40)
            r2 = r2 & r0
            if (r2 == 0) goto L2d
            r2 = 1
            return r2
        L2d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p016b3.C0497k2.m26327a0(android.view.View):boolean");
    }

    /* renamed from: c */
    public static final String m26324c() {
        Resources m9057j = C7601t.m935h().m9057j();
        if (m9057j != null) {
            return m9057j.getString(C7239a.f36636n);
        }
        return "Test Ad";
    }

    /* renamed from: c0 */
    public static final String m26323c0(Context context) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        return m26348G(m26347H(context));
    }

    /* renamed from: e */
    public static final boolean m26320e(Context context, String str) {
        Context m12467a = ch0.m12467a(context);
        if (C3325e.m19140a(m12467a).m19147b(str, m12467a.getPackageName()) == 0) {
            return true;
        }
        return false;
    }

    /* renamed from: f */
    public static final boolean m26318f(String str) {
        if (!bm0.m12756j()) {
            return false;
        }
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31101q3)).booleanValue()) {
            return false;
        }
        String str2 = (String) C5592av.m12935c().m8098c(C6225rz.f31117s3);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(";")) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) C5592av.m12935c().m8098c(C6225rz.f31109r3);
        if (str4.isEmpty()) {
            return true;
        }
        for (String str5 : str4.split(";")) {
            if (str5.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public static final boolean m26313i(Context context) {
        boolean z;
        if (C1054o.m24730k()) {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30982b6)).booleanValue()) {
                synchronized (C0497k2.class) {
                    z = f1631j;
                }
                return z;
            }
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        return false;
    }

    /* renamed from: k */
    public static final boolean m26311k(Context context) {
        Bundle m26347H = m26347H(context);
        String string = m26347H.getString("com.google.android.gms.ads.INTEGRATION_MANAGER");
        if (TextUtils.isEmpty(m26348G(m26347H)) && !TextUtils.isEmpty(string)) {
            return true;
        }
        return false;
    }

    /* renamed from: p */
    public static final void m26306p(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable unused) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    /* renamed from: q */
    public static final int m26305q(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            cm0.m12437f("Could not parse value:".concat(e.toString()));
            return 0;
        }
    }

    /* renamed from: s */
    public static final WebResourceResponse m26303s(HttpURLConnection httpURLConnection) {
        String trim;
        C7601t.m939d();
        String contentType = httpURLConnection.getContentType();
        String str = "";
        if (TextUtils.isEmpty(contentType)) {
            trim = "";
        } else {
            trim = contentType.split(";")[0].trim();
        }
        C7601t.m939d();
        String contentType2 = httpURLConnection.getContentType();
        if (!TextUtils.isEmpty(contentType2)) {
            String[] split = contentType2.split(";");
            if (split.length != 1) {
                int i = 1;
                while (true) {
                    if (i >= split.length) {
                        break;
                    }
                    if (split[i].trim().startsWith("charset")) {
                        String[] split2 = split[i].trim().split("=");
                        if (split2.length > 1) {
                            str = split2[1].trim();
                            break;
                        }
                    }
                    i++;
                }
            }
        }
        String str2 = str;
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        HashMap hashMap = new HashMap(headerFields.size());
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null && entry.getValue().size() > 0) {
                hashMap.put(entry.getKey(), entry.getValue().get(0));
            }
        }
        return C7601t.m937f().mo26267n(trim, str2, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), hashMap, httpURLConnection.getInputStream());
    }

    /* renamed from: t */
    public static final int[] m26302t(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        return (window == null || (findViewById = window.findViewById(16908290)) == null) ? m26315g0() : new int[]{findViewById.getWidth(), findViewById.getHeight()};
    }

    /* renamed from: v */
    public static final int[] m26300v(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        int[] m26315g0 = (window == null || (findViewById = window.findViewById(16908290)) == null) ? m26315g0() : new int[]{findViewById.getTop(), findViewById.getBottom()};
        return new int[]{C6479yu.m4568a().m6127a(activity, m26315g0[0]), C6479yu.m4568a().m6127a(activity, m26315g0[1])};
    }

    /* renamed from: w */
    public static final boolean m26299w(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z;
        if (!C7601t.m939d().f1634c && keyguardManager != null && keyguardManager.inKeyguardRestrictedInputMode() && !m26327a0(view)) {
            z = false;
        } else {
            z = true;
        }
        long m26328a = m26328a(view);
        if (view.getVisibility() == 0 && view.isShown() && ((powerManager == null || powerManager.isScreenOn()) && z)) {
            if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30887Q0)).booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect())) {
                if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30901R6)).booleanValue()) {
                    return true;
                }
                if (m26328a >= ((Integer) C5592av.m12935c().m8098c(C6225rz.f30917T6)).intValue()) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: y */
    public static final int[] m26297y(Activity activity) {
        int[] m26302t = m26302t(activity);
        return new int[]{C6479yu.m4568a().m6127a(activity, m26302t[0]), C6479yu.m4568a().m6127a(activity, m26302t[1])};
    }

    /* renamed from: z */
    public static final boolean m26296z(View view, Context context) {
        PowerManager powerManager;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            powerManager = (PowerManager) applicationContext.getSystemService("power");
        } else {
            powerManager = null;
        }
        return m26299w(view, powerManager, m26350E(context));
    }

    /* renamed from: M */
    public final void m26342M(Context context, String str, boolean z, HttpURLConnection httpURLConnection, boolean z2, int i) {
        int m26343L = m26343L(i);
        StringBuilder sb = new StringBuilder(39);
        sb.append("HTTP timeout: ");
        sb.append(m26343L);
        sb.append(" milliseconds.");
        cm0.m12438e(sb.toString());
        httpURLConnection.setConnectTimeout(m26343L);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(m26343L);
        httpURLConnection.setRequestProperty(HttpRequestHeader.UserAgent, m26339P(context, str));
        httpURLConnection.setUseCaches(false);
    }

    /* renamed from: U */
    public final void m26334U(Context context, String str, String str2, Bundle bundle, boolean z) {
        C7601t.m939d();
        bundle.putString("device", m26319e0());
        bundle.putString("eids", TextUtils.join(",", C6225rz.m7276c()));
        C6479yu.m4568a();
        vl0.m6112p(context, str, "gmob-apps", bundle, true, new C0477f2(this, context, str));
    }

    @TargetApi(26)
    /* renamed from: Y */
    public final void m26330Y(Context context) {
        if (!C1054o.m24730k()) {
            return;
        }
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30982b6)).booleanValue()) {
            return;
        }
        ((ConnectivityManager) context.getSystemService("connectivity")).registerDefaultNetworkCallback(new C0481g2(this));
    }
}
