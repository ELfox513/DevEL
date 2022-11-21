package p168r4;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import org.json.JSONException;
import org.json.JSONObject;
import p026c4.C1054o;
import p235z2.C7601t;
@TargetApi(14)
/* renamed from: r4.nn */
/* loaded from: classes2.dex */
public final class C6065nn extends Thread {

    /* renamed from: A */
    public final boolean f28349A;

    /* renamed from: a */
    public boolean f28350a;

    /* renamed from: b */
    public boolean f28351b;

    /* renamed from: d */
    public final Object f28352d;

    /* renamed from: k */
    public final C5694dn f28353k;

    /* renamed from: p */
    public final int f28354p;

    /* renamed from: q */
    public final int f28355q;

    /* renamed from: r */
    public final int f28356r;

    /* renamed from: s */
    public final int f28357s;

    /* renamed from: t */
    public final int f28358t;

    /* renamed from: u */
    public final int f28359u;

    /* renamed from: v */
    public final int f28360v;

    /* renamed from: w */
    public final int f28361w;

    /* renamed from: x */
    public final String f28362x;

    /* renamed from: y */
    public final boolean f28363y;

    /* renamed from: z */
    public final boolean f28364z;

    /* renamed from: c */
    public final C6027mn m9031c(View view, C5657cn c5657cn) {
        if (view == null) {
            return new C6027mn(this, 0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (!TextUtils.isEmpty(text)) {
                c5657cn.m12421i(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
                return new C6027mn(this, 1, 0);
            }
            return new C6027mn(this, 0, 0);
        } else if ((view instanceof WebView) && !(view instanceof cs0)) {
            WebView webView = (WebView) view;
            if (!C1054o.m24735f()) {
                return new C6027mn(this, 0, 0);
            }
            c5657cn.m12423g();
            webView.post(new RunnableC5990ln(this, c5657cn, webView, globalVisibleRect));
            return new C6027mn(this, 0, 1);
        } else if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                C6027mn m9031c = m9031c(viewGroup.getChildAt(i3), c5657cn);
                i += m9031c.f27789a;
                i2 += m9031c.f27790b;
            }
            return new C6027mn(this, i, i2);
        } else {
            return new C6027mn(this, 0, 0);
        }
    }

    /* renamed from: e */
    public final C5657cn m9029e() {
        return this.f28353k.m12087a(this.f28349A);
    }

    /* renamed from: h */
    public final boolean m9026h() {
        return this.f28351b;
    }

    public C6065nn() {
        C5694dn c5694dn = new C5694dn();
        this.f28350a = false;
        this.f28351b = false;
        this.f28353k = c5694dn;
        this.f28352d = new Object();
        this.f28355q = z00.f34272d.m6673e().intValue();
        this.f28356r = z00.f34269a.m6673e().intValue();
        this.f28357s = z00.f34273e.m6673e().intValue();
        this.f28358t = z00.f34271c.m6673e().intValue();
        this.f28359u = ((Integer) C5592av.m12935c().m8098c(C6225rz.f30862N)).intValue();
        this.f28360v = ((Integer) C5592av.m12935c().m8098c(C6225rz.f30870O)).intValue();
        this.f28361w = ((Integer) C5592av.m12935c().m8098c(C6225rz.f30878P)).intValue();
        this.f28354p = z00.f34274f.m6673e().intValue();
        this.f28362x = (String) C5592av.m12935c().m8098c(C6225rz.f30894R);
        this.f28363y = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f30902S)).booleanValue();
        this.f28364z = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f30910T)).booleanValue();
        this.f28349A = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f30918U)).booleanValue();
        setName("ContentFetchTask");
    }

    /* renamed from: a */
    public final void m9033a() {
        synchronized (this.f28352d) {
            if (this.f28350a) {
                cm0.m12442a("Content hash thread already started, quiting...");
                return;
            }
            this.f28350a = true;
            start();
        }
    }

    /* renamed from: b */
    public final void m9032b(View view) {
        try {
            C5657cn c5657cn = new C5657cn(this.f28355q, this.f28356r, this.f28357s, this.f28358t, this.f28359u, this.f28360v, this.f28361w, this.f28364z);
            Context m10856e = C7601t.m936g().m10856e();
            if (m10856e != null && !TextUtils.isEmpty(this.f28362x)) {
                String str = (String) view.getTag(m10856e.getResources().getIdentifier((String) C5592av.m12935c().m8098c(C6225rz.f30886Q), "id", m10856e.getPackageName()));
                if (str != null && str.equals(this.f28362x)) {
                    return;
                }
            }
            C6027mn m9031c = m9031c(view, c5657cn);
            c5657cn.m12419k();
            if (m9031c.f27789a == 0 && m9031c.f27790b == 0) {
                return;
            }
            if (m9031c.f27790b == 0 && c5657cn.m12415o() == 0) {
                return;
            }
            if (m9031c.f27790b == 0 && this.f28353k.m12086b(c5657cn)) {
                return;
            }
            this.f28353k.m12084d(c5657cn);
        } catch (Exception e) {
            cm0.m12439d("Exception in fetchContentOnUIThread", e);
            C7601t.m935h().m9056k(e, "ContentFetchTask.fetchContent");
        }
    }

    /* renamed from: f */
    public final void m9028f() {
        synchronized (this.f28352d) {
            this.f28351b = false;
            this.f28352d.notifyAll();
            cm0.m12442a("ContentFetchThread: wakeup");
        }
    }

    /* renamed from: g */
    public final void m9027g() {
        synchronized (this.f28352d) {
            this.f28351b = true;
            StringBuilder sb = new StringBuilder(42);
            sb.append("ContentFetchThread: paused, mPause = ");
            sb.append(true);
            cm0.m12442a(sb.toString());
        }
    }

    /* renamed from: d */
    public final void m9030d(C5657cn c5657cn, WebView webView, String str, boolean z) {
        c5657cn.m12424f();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (!this.f28363y && !TextUtils.isEmpty(webView.getTitle())) {
                    String title = webView.getTitle();
                    StringBuilder sb = new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(optString).length());
                    sb.append(title);
                    sb.append("\n");
                    sb.append(optString);
                    c5657cn.m12422h(sb.toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    c5657cn.m12422h(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (c5657cn.m12429a()) {
                this.f28353k.m12085c(c5657cn);
            }
        } catch (JSONException unused) {
            cm0.m12442a("Json string may be malformed.");
        } catch (Throwable th) {
            cm0.m12441b("Failed to get webview content.", th);
            C7601t.m935h().m9056k(th, "ContentFetchTask.processWebViewContent");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0042, code lost:
        if (r3.importance != 100) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0048, code lost:
        if (r2.inKeyguardRestrictedInputMode() != false) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004a, code lost:
        r0 = (android.os.PowerManager) r0.getSystemService("power");
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0052, code lost:
        if (r0 == null) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0058, code lost:
        if (r0.isScreenOn() == false) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005a, code lost:
        r0 = p235z2.C7601t.m936g().m10857d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0062, code lost:
        if (r0 != null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0064, code lost:
        p168r4.cm0.m12442a("ContentFetchThread: no activity. Sleeping.");
        m9027g();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006d, code lost:
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0072, code lost:
        if (r0.getWindow() == null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007c, code lost:
        if (r0.getWindow().getDecorView() == null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007e, code lost:
        r1 = r0.getWindow().getDecorView().findViewById(16908290);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008e, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008f, code lost:
        p235z2.C7601t.m935h().m9056k(r0, "ContentFetchTask.extractContent");
        p168r4.cm0.m12442a("Failed getting root view of activity. Content not extracted.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c3, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c4, code lost:
        p168r4.cm0.m12439d("Error in ContentFetchTask", r0);
        p235z2.C7601t.m935h().m9056k(r0, "ContentFetchTask.run");
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d3, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d4, code lost:
        p168r4.cm0.m12439d("Error in ContentFetchTask", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00dc A[EXC_TOP_SPLITTER, LOOP:1: B:67:0x00dc->B:72:0x00dc, LOOP_START, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r6 = this;
        L0:
            r4.hn r0 = p235z2.C7601t.m936g()     // Catch: java.lang.Throwable -> La8
            android.content.Context r0 = r0.m10856e()     // Catch: java.lang.Throwable -> La8
            if (r0 != 0) goto Lc
            goto Lb2
        Lc:
            java.lang.String r1 = "activity"
            java.lang.Object r1 = r0.getSystemService(r1)     // Catch: java.lang.Throwable -> La8
            android.app.ActivityManager r1 = (android.app.ActivityManager) r1     // Catch: java.lang.Throwable -> La8
            java.lang.String r2 = "keyguard"
            java.lang.Object r2 = r0.getSystemService(r2)     // Catch: java.lang.Throwable -> La8
            android.app.KeyguardManager r2 = (android.app.KeyguardManager) r2     // Catch: java.lang.Throwable -> La8
            if (r1 == 0) goto Lb2
            if (r2 == 0) goto Lb2
            java.util.List r1 = r1.getRunningAppProcesses()     // Catch: java.lang.Throwable -> La8
            if (r1 == 0) goto Lb2
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> La8
        L2a:
            boolean r3 = r1.hasNext()     // Catch: java.lang.Throwable -> La8
            if (r3 == 0) goto Lb2
            java.lang.Object r3 = r1.next()     // Catch: java.lang.Throwable -> La8
            android.app.ActivityManager$RunningAppProcessInfo r3 = (android.app.ActivityManager.RunningAppProcessInfo) r3     // Catch: java.lang.Throwable -> La8
            int r4 = android.os.Process.myPid()     // Catch: java.lang.Throwable -> La8
            int r5 = r3.pid     // Catch: java.lang.Throwable -> La8
            if (r4 != r5) goto L2a
            int r1 = r3.importance     // Catch: java.lang.Throwable -> La8
            r3 = 100
            if (r1 != r3) goto Lb2
            boolean r1 = r2.inKeyguardRestrictedInputMode()     // Catch: java.lang.Throwable -> La8
            if (r1 != 0) goto Lb2
            java.lang.String r1 = "power"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: java.lang.Throwable -> La8
            android.os.PowerManager r0 = (android.os.PowerManager) r0     // Catch: java.lang.Throwable -> La8
            if (r0 == 0) goto Lb2
            boolean r0 = r0.isScreenOn()     // Catch: java.lang.Throwable -> La8
            if (r0 == 0) goto Lb2
            r4.hn r0 = p235z2.C7601t.m936g()     // Catch: java.lang.Exception -> Lc3 java.lang.InterruptedException -> Ld3
            android.app.Activity r0 = r0.m10857d()     // Catch: java.lang.Exception -> Lc3 java.lang.InterruptedException -> Ld3
            if (r0 != 0) goto L6d
            java.lang.String r0 = "ContentFetchThread: no activity. Sleeping."
            p168r4.cm0.m12442a(r0)     // Catch: java.lang.Exception -> Lc3 java.lang.InterruptedException -> Ld3
            r6.m9027g()     // Catch: java.lang.Exception -> Lc3 java.lang.InterruptedException -> Ld3
            goto Lba
        L6d:
            r1 = 0
            android.view.Window r2 = r0.getWindow()     // Catch: java.lang.Exception -> L8e
            if (r2 == 0) goto L9d
            android.view.Window r2 = r0.getWindow()     // Catch: java.lang.Exception -> L8e
            android.view.View r2 = r2.getDecorView()     // Catch: java.lang.Exception -> L8e
            if (r2 == 0) goto L9d
            android.view.Window r0 = r0.getWindow()     // Catch: java.lang.Exception -> L8e
            android.view.View r0 = r0.getDecorView()     // Catch: java.lang.Exception -> L8e
            r2 = 16908290(0x1020002, float:2.3877235E-38)
            android.view.View r1 = r0.findViewById(r2)     // Catch: java.lang.Exception -> L8e
            goto L9d
        L8e:
            r0 = move-exception
            r4.nl0 r2 = p235z2.C7601t.m935h()     // Catch: java.lang.Exception -> Lc3 java.lang.InterruptedException -> Ld3
            java.lang.String r3 = "ContentFetchTask.extractContent"
            r2.m9056k(r0, r3)     // Catch: java.lang.Exception -> Lc3 java.lang.InterruptedException -> Ld3
            java.lang.String r0 = "Failed getting root view of activity. Content not extracted."
            p168r4.cm0.m12442a(r0)     // Catch: java.lang.Exception -> Lc3 java.lang.InterruptedException -> Ld3
        L9d:
            if (r1 == 0) goto Lba
            r4.in r0 = new r4.in     // Catch: java.lang.Exception -> Lc3 java.lang.InterruptedException -> Ld3
            r0.<init>(r6, r1)     // Catch: java.lang.Exception -> Lc3 java.lang.InterruptedException -> Ld3
            r1.post(r0)     // Catch: java.lang.Exception -> Lc3 java.lang.InterruptedException -> Ld3
            goto Lba
        La8:
            r0 = move-exception
            r4.nl0 r1 = p235z2.C7601t.m935h()     // Catch: java.lang.Exception -> Lc3 java.lang.InterruptedException -> Ld3
            java.lang.String r2 = "ContentFetchTask.isInForeground"
            r1.m9056k(r0, r2)     // Catch: java.lang.Exception -> Lc3 java.lang.InterruptedException -> Ld3
        Lb2:
            java.lang.String r0 = "ContentFetchTask: sleeping"
            p168r4.cm0.m12442a(r0)     // Catch: java.lang.Exception -> Lc3 java.lang.InterruptedException -> Ld3
            r6.m9027g()     // Catch: java.lang.Exception -> Lc3 java.lang.InterruptedException -> Ld3
        Lba:
            int r0 = r6.f28354p     // Catch: java.lang.Exception -> Lc3 java.lang.InterruptedException -> Ld3
            int r0 = r0 * 1000
            long r0 = (long) r0     // Catch: java.lang.Exception -> Lc3 java.lang.InterruptedException -> Ld3
            java.lang.Thread.sleep(r0)     // Catch: java.lang.Exception -> Lc3 java.lang.InterruptedException -> Ld3
            goto Ld9
        Lc3:
            r0 = move-exception
            java.lang.String r1 = "Error in ContentFetchTask"
            p168r4.cm0.m12439d(r1, r0)
            r4.nl0 r1 = p235z2.C7601t.m935h()
            java.lang.String r2 = "ContentFetchTask.run"
            r1.m9056k(r0, r2)
            goto Ld9
        Ld3:
            r0 = move-exception
            java.lang.String r1 = "Error in ContentFetchTask"
            p168r4.cm0.m12439d(r1, r0)
        Ld9:
            java.lang.Object r0 = r6.f28352d
            monitor-enter(r0)
        Ldc:
            boolean r1 = r6.f28351b     // Catch: java.lang.Throwable -> Lee
            if (r1 == 0) goto Leb
            java.lang.String r1 = "ContentFetchTask: waiting"
            p168r4.cm0.m12442a(r1)     // Catch: java.lang.InterruptedException -> Ldc java.lang.Throwable -> Lee
            java.lang.Object r1 = r6.f28352d     // Catch: java.lang.InterruptedException -> Ldc java.lang.Throwable -> Lee
            r1.wait()     // Catch: java.lang.InterruptedException -> Ldc java.lang.Throwable -> Lee
            goto Ldc
        Leb:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lee
            goto L0
        Lee:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lee
            goto Lf2
        Lf1:
            throw r1
        Lf2:
            goto Lf1
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6065nn.run():void");
    }
}
