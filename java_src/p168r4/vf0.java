package p168r4;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.prineside.tdi2.Config;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import p042d4.C3325e;
import p185t3.C6746h;
/* renamed from: r4.vf0 */
/* loaded from: classes2.dex */
public final class vf0 implements xf0 {

    /* renamed from: f */
    public static final Object f32704f = new Object();

    /* renamed from: g */
    public static xf0 f32705g;

    /* renamed from: h */
    public static xf0 f32706h;

    /* renamed from: b */
    public final Context f32708b;

    /* renamed from: d */
    public final ExecutorService f32710d;

    /* renamed from: e */
    public final im0 f32711e;

    /* renamed from: a */
    public final Object f32707a = new Object();

    /* renamed from: c */
    public final WeakHashMap<Thread, Boolean> f32709c = new WeakHashMap<>();

    @Override // p168r4.xf0
    /* renamed from: b */
    public final void mo5332b(Throwable th, String str) {
        mo5333a(th, str, 1.0f);
    }

    /* renamed from: c */
    public static xf0 m6164c(Context context) {
        synchronized (f32704f) {
            if (f32705g == null) {
                if (n10.f28078e.m6673e().booleanValue()) {
                    if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31175z5)).booleanValue()) {
                        f32705g = new vf0(context, im0.m10595X0());
                    }
                }
                f32705g = new wf0();
            }
        }
        return f32705g;
    }

    /* renamed from: d */
    public static xf0 m6163d(Context context, im0 im0Var) {
        synchronized (f32704f) {
            if (f32706h == null) {
                if (n10.f28078e.m6673e().booleanValue()) {
                    if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31175z5)).booleanValue()) {
                        vf0 vf0Var = new vf0(context, im0Var);
                        Thread thread = Looper.getMainLooper().getThread();
                        if (thread != null) {
                            synchronized (vf0Var.f32707a) {
                                vf0Var.f32709c.put(thread, Boolean.TRUE);
                            }
                            thread.setUncaughtExceptionHandler(new uf0(vf0Var, thread.getUncaughtExceptionHandler()));
                        }
                        Thread.setDefaultUncaughtExceptionHandler(new tf0(vf0Var, Thread.getDefaultUncaughtExceptionHandler()));
                        f32706h = vf0Var;
                    }
                }
                f32706h = new wf0();
            }
        }
        return f32706h;
    }

    /* renamed from: e */
    public final void m6162e(Thread thread, Throwable th) {
        StackTraceElement[] stackTrace;
        if (th != null) {
            boolean z = false;
            boolean z2 = false;
            for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
                for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
                    z |= vl0.m6120h(stackTraceElement.getClassName());
                    z2 |= vf0.class.getName().equals(stackTraceElement.getClassName());
                }
            }
            if (z && !z2) {
                mo5333a(th, "", 1.0f);
            }
        }
    }

    public vf0(Context context, im0 im0Var) {
        a03.m13063a();
        this.f32710d = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());
        this.f32708b = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f32711e = im0Var;
    }

    @Override // p168r4.xf0
    /* renamed from: a */
    public final void mo5333a(Throwable th, String str, float f) {
        int i;
        boolean z;
        String str2;
        String str3;
        if (vl0.m6121g(th) == null) {
            return;
        }
        String name = th.getClass().getName();
        StringWriter stringWriter = new StringWriter();
        rk3.m7478c(th, new PrintWriter(stringWriter));
        String stringWriter2 = stringWriter.toString();
        double d = f;
        double random = Math.random();
        if (f > 0.0f) {
            i = (int) (1.0f / f);
        } else {
            i = 1;
        }
        if (random < d) {
            ArrayList<String> arrayList = new ArrayList();
            try {
                z = C3325e.m19140a(this.f32708b).m19142g();
            } catch (Throwable th2) {
                cm0.m12439d("Error fetching instant app info", th2);
                z = false;
            }
            try {
                str2 = this.f32708b.getPackageName();
            } catch (Throwable unused) {
                cm0.m12437f("Cannot obtain package name, proceeding.");
                str2 = "unknown";
            }
            Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(z)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
            String str4 = Build.MANUFACTURER;
            String str5 = Build.MODEL;
            if (!str5.startsWith(str4)) {
                StringBuilder sb = new StringBuilder(String.valueOf(str4).length() + 1 + str5.length());
                sb.append(str4);
                sb.append(" ");
                sb.append(str5);
                str5 = sb.toString();
            }
            Uri.Builder appendQueryParameter2 = appendQueryParameter.appendQueryParameter("device", str5).appendQueryParameter("js", this.f32711e.f25171a).appendQueryParameter("appid", str2).appendQueryParameter("exceptiontype", name).appendQueryParameter("stacktrace", stringWriter2).appendQueryParameter("eids", TextUtils.join(",", C6225rz.m7276c())).appendQueryParameter("exceptionkey", str).appendQueryParameter("cl", "407425155").appendQueryParameter("rc", "dev").appendQueryParameter("sampling_rate", Integer.toString(i)).appendQueryParameter("pb_tm", String.valueOf(n10.f28076c.m6673e())).appendQueryParameter("gmscv", String.valueOf(C6746h.m3490f().m3495a(this.f32708b)));
            if (true != this.f32711e.f25175p) {
                str3 = "0";
            } else {
                str3 = Config.SITE_API_VERSION;
            }
            arrayList.add(appendQueryParameter2.appendQueryParameter("lite", str3).toString());
            for (final String str6 : arrayList) {
                final hm0 hm0Var = new hm0(null);
                this.f32710d.execute(new Runnable(hm0Var, str6) { // from class: r4.sf0

                    /* renamed from: a */
                    public final hm0 f31320a;

                    /* renamed from: b */
                    public final String f31321b;

                    {
                        this.f31320a = hm0Var;
                        this.f31321b = str6;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f31320a.mo6488q(this.f31321b);
                    }
                });
            }
        }
    }
}
