package p168r4;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.UUID;
import net.bytebuddy.jar.asm.Opcodes;
import p025c3.AbstractC1038a;
import p113l3.C4562b;
import p184t2.C6706e;
import p184t2.C6712i;
import p185t3.C6746h;
import p185t3.C6756m;
import p193u2.AbstractC6881b;
import p193u2.C6880a;
/* renamed from: r4.vl0 */
/* loaded from: classes2.dex */
public final class vl0 {

    /* renamed from: b */
    public static final Handler f32748b = new c03(Looper.getMainLooper());

    /* renamed from: c */
    public static final String f32749c = C6712i.class.getName();

    /* renamed from: d */
    public static final String f32750d = AbstractC1038a.class.getName();

    /* renamed from: e */
    public static final String f32751e = C6880a.class.getName();

    /* renamed from: f */
    public static final String f32752f = AbstractC6881b.class.getName();

    /* renamed from: g */
    public static final String f32753g = C4562b.class.getName();

    /* renamed from: h */
    public static final String f32754h = C6706e.class.getName();

    /* renamed from: a */
    public float f32755a = -1.0f;

    /* renamed from: d */
    public static String m6124d(String str) {
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(str.getBytes());
                return String.format(Locale.US, "%032X", new BigInteger(1, messageDigest.digest()));
            } catch (ArithmeticException unused) {
                return null;
            } catch (NoSuchAlgorithmException unused2) {
            }
        }
        return null;
    }

    /* renamed from: i */
    public static final int m6119i(DisplayMetrics displayMetrics, int i) {
        return (int) TypedValue.applyDimension(1, i, displayMetrics);
    }

    /* renamed from: j */
    public static final String m6118j(StackTraceElement[] stackTraceElementArr, String str) {
        int i;
        int i2;
        String str2;
        while (true) {
            i2 = i + 1;
            if (i2 < stackTraceElementArr.length) {
                StackTraceElement stackTraceElement = stackTraceElementArr[i];
                String className = stackTraceElement.getClassName();
                i = ("loadAd".equalsIgnoreCase(stackTraceElement.getMethodName()) && (f32749c.equalsIgnoreCase(className) || f32750d.equalsIgnoreCase(className) || f32751e.equalsIgnoreCase(className) || f32752f.equalsIgnoreCase(className) || f32753g.equalsIgnoreCase(className) || f32754h.equalsIgnoreCase(className))) ? 0 : i2;
            } else {
                str2 = null;
                break;
            }
        }
        str2 = stackTraceElementArr[i2].getClassName();
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
            StringBuilder sb = new StringBuilder();
            if (stringTokenizer.hasMoreElements()) {
                sb.append(stringTokenizer.nextToken());
                int i3 = 2;
                while (true) {
                    int i4 = i3 - 1;
                    if (i3 <= 0 || !stringTokenizer.hasMoreElements()) {
                        break;
                    }
                    sb.append(".");
                    sb.append(stringTokenizer.nextToken());
                    i3 = i4;
                }
                str = sb.toString();
            }
            if (str2 != null && !str2.contains(str)) {
                return str2;
            }
        }
        return null;
    }

    /* renamed from: k */
    public static final boolean m6117k() {
        return Build.DEVICE.startsWith("generic");
    }

    /* renamed from: n */
    public static final boolean m6114n() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: o */
    public static final int m6113o(DisplayMetrics displayMetrics, int i) {
        return Math.round(i / displayMetrics.density);
    }

    /* renamed from: q */
    public static final int m6111q(Context context, int i) {
        return m6119i(context.getResources().getDisplayMetrics(), i);
    }

    /* renamed from: c */
    public final void m6125c(ViewGroup viewGroup, C6478yt c6478yt, String str) {
        m6109s(viewGroup, c6478yt, "Ads by Google", -16777216, -1);
    }

    /* renamed from: e */
    public final void m6123e(Context context, String str, String str2, Bundle bundle, boolean z) {
        m6112p(context, str, "gmob-apps", bundle, true, new tl0(this));
    }

    /* renamed from: g */
    public static Throwable m6121g(Throwable th) {
        if (n10.f28079f.m6673e().booleanValue()) {
            return th;
        }
        LinkedList linkedList = new LinkedList();
        while (th != null) {
            linkedList.push(th);
            th = th.getCause();
        }
        Throwable th2 = null;
        while (!linkedList.isEmpty()) {
            Throwable th3 = (Throwable) linkedList.pop();
            StackTraceElement[] stackTrace = th3.getStackTrace();
            ArrayList arrayList = new ArrayList();
            arrayList.add(new StackTraceElement(th3.getClass().getName(), "<filtered>", "<filtered>", 1));
            boolean z = false;
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (m6120h(stackTraceElement.getClassName())) {
                    arrayList.add(stackTraceElement);
                    z = true;
                } else {
                    String className = stackTraceElement.getClassName();
                    if (TextUtils.isEmpty(className) || (!className.startsWith("android.") && !className.startsWith("java."))) {
                        arrayList.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
                    } else {
                        arrayList.add(stackTraceElement);
                    }
                }
            }
            if (z) {
                if (th2 == null) {
                    th2 = new Throwable(th3.getMessage());
                } else {
                    th2 = new Throwable(th3.getMessage(), th2);
                }
                th2.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
            }
        }
        return th2;
    }

    /* renamed from: a */
    public final int m6127a(Context context, int i) {
        if (this.f32755a < 0.0f) {
            synchronized (this) {
                if (this.f32755a < 0.0f) {
                    WindowManager windowManager = (WindowManager) context.getSystemService("window");
                    if (windowManager == null) {
                        return 0;
                    }
                    Display defaultDisplay = windowManager.getDefaultDisplay();
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    defaultDisplay.getMetrics(displayMetrics);
                    this.f32755a = displayMetrics.density;
                }
            }
        }
        return Math.round(i / this.f32755a);
    }

    /* renamed from: b */
    public final void m6126b(ViewGroup viewGroup, C6478yt c6478yt, String str, String str2) {
        if (str2 != null) {
            cm0.m12437f(str2);
        }
        m6109s(viewGroup, c6478yt, str, Opcodes.V_PREVIEW, -16777216);
    }

    /* renamed from: f */
    public static String m6122f() {
        UUID randomUUID = UUID.randomUUID();
        byte[] byteArray = BigInteger.valueOf(randomUUID.getLeastSignificantBits()).toByteArray();
        byte[] byteArray2 = BigInteger.valueOf(randomUUID.getMostSignificantBits()).toByteArray();
        String bigInteger = new BigInteger(1, byteArray).toString();
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(byteArray);
                messageDigest.update(byteArray2);
                byte[] bArr = new byte[8];
                System.arraycopy(messageDigest.digest(), 0, bArr, 0, 8);
                bigInteger = new BigInteger(1, bArr).toString();
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return bigInteger;
    }

    /* renamed from: h */
    public static boolean m6120h(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(n10.f28077d.m6673e());
    }

    /* renamed from: l */
    public static final boolean m6116l(Context context, int i) {
        if (C6746h.m3490f().mo3488h(context, i) == 0) {
            return true;
        }
        return false;
    }

    /* renamed from: m */
    public static final boolean m6115m(Context context) {
        int mo3488h = C6746h.m3490f().mo3488h(context, C6756m.f35427a);
        if (mo3488h != 0 && mo3488h != 2) {
            return false;
        }
        return true;
    }

    /* renamed from: p */
    public static final void m6112p(Context context, String str, String str2, Bundle bundle, boolean z, ul0 ul0Var) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        bundle.putString("os", Build.VERSION.RELEASE);
        bundle.putString("api", String.valueOf(Build.VERSION.SDK_INT));
        bundle.putString("appid", applicationContext.getPackageName());
        if (str == null) {
            int m3495a = C6746h.m3490f().m3495a(context);
            StringBuilder sb = new StringBuilder(23);
            sb.append(m3495a);
            sb.append(".213806000");
            str = sb.toString();
        }
        bundle.putString("js", str);
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", "gmob-apps");
        for (String str3 : bundle.keySet()) {
            appendQueryParameter.appendQueryParameter(str3, bundle.getString(str3));
        }
        ul0Var.mo6488q(appendQueryParameter.toString());
    }

    /* renamed from: r */
    public static final String m6110r(Context context) {
        String string;
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            string = null;
        } else {
            string = Settings.Secure.getString(contentResolver, "android_id");
        }
        return m6124d((string == null || m6117k()) ? "emulator" : "emulator");
    }

    /* renamed from: s */
    public static final void m6109s(ViewGroup viewGroup, C6478yt c6478yt, String str, int i, int i2) {
        if (viewGroup.getChildCount() != 0) {
            return;
        }
        Context context = viewGroup.getContext();
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setText(str);
        textView.setTextColor(i);
        textView.setBackgroundColor(i2);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(i);
        int m6111q = m6111q(context, 3);
        frameLayout.addView(textView, new FrameLayout.LayoutParams(c6478yt.f34202q - m6111q, c6478yt.f34199d - m6111q, 17));
        viewGroup.addView(frameLayout, c6478yt.f34202q, c6478yt.f34199d);
    }
}
