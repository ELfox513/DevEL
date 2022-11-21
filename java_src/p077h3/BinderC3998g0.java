package p077h3;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
import p016b3.C0476f1;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p168r4.C5592av;
import p168r4.C6225rz;
import p168r4.C6293tt;
import p168r4.C6300u;
import p168r4.C6330ut;
import p168r4.C6337v;
import p168r4.C6478yt;
import p168r4.aq2;
import p168r4.bu0;
import p168r4.cm0;
import p168r4.e73;
import p168r4.fo1;
import p168r4.fp2;
import p168r4.h83;
import p168r4.i83;
import p168r4.im0;
import p168r4.ks1;
import p168r4.ls1;
import p168r4.nf0;
import p168r4.o73;
import p168r4.p03;
import p168r4.pu2;
import p168r4.qf0;
import p168r4.s61;
import p168r4.sk0;
import p168r4.uk0;
import p168r4.wt2;
import p168r4.xt2;
import p168r4.y73;
import p168r4.zc1;
import p168r4.zk0;
import p184t2.EnumC6703b;
/* renamed from: h3.g0 */
/* loaded from: classes.dex */
public final class BinderC3998g0 extends uk0 {

    /* renamed from: J */
    public static final List<String> f17437J = new ArrayList(Arrays.asList("/aclk", "/pcs/click"));

    /* renamed from: K */
    public static final List<String> f17438K = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));

    /* renamed from: L */
    public static final List<String> f17439L = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion"));

    /* renamed from: M */
    public static final List<String> f17440M = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));

    /* renamed from: G */
    public final im0 f17447G;

    /* renamed from: H */
    public String f17448H;

    /* renamed from: a */
    public final bu0 f17450a;

    /* renamed from: b */
    public Context f17451b;

    /* renamed from: d */
    public final C6300u f17452d;

    /* renamed from: k */
    public final aq2<fo1> f17453k;

    /* renamed from: p */
    public final i83 f17454p;

    /* renamed from: q */
    public final ScheduledExecutorService f17455q;

    /* renamed from: r */
    public qf0 f17456r;

    /* renamed from: v */
    public final C4008m f17460v;

    /* renamed from: w */
    public final ls1 f17461w;

    /* renamed from: x */
    public final xt2 f17462x;

    /* renamed from: y */
    public final pu2 f17463y;

    /* renamed from: s */
    public Point f17457s = new Point();

    /* renamed from: t */
    public Point f17458t = new Point();

    /* renamed from: u */
    public final Set<WebView> f17459u = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: F */
    public final AtomicInteger f17446F = new AtomicInteger(0);

    /* renamed from: z */
    public final boolean f17464z = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31111r5)).booleanValue();

    /* renamed from: A */
    public final boolean f17441A = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31103q5)).booleanValue();

    /* renamed from: B */
    public final boolean f17442B = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31119s5)).booleanValue();

    /* renamed from: C */
    public final boolean f17443C = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31135u5)).booleanValue();

    /* renamed from: D */
    public final String f17444D = (String) C5592av.m12935c().m8098c(C6225rz.f31127t5);

    /* renamed from: E */
    public final String f17445E = (String) C5592av.m12935c().m8098c(C6225rz.f31143v5);

    /* renamed from: I */
    public final String f17449I = (String) C5592av.m12935c().m8098c(C6225rz.f31151w5);

    public BinderC3998g0(bu0 bu0Var, Context context, C6300u c6300u, aq2<fo1> aq2Var, i83 i83Var, ScheduledExecutorService scheduledExecutorService, ls1 ls1Var, xt2 xt2Var, pu2 pu2Var, im0 im0Var) {
        this.f17450a = bu0Var;
        this.f17451b = context;
        this.f17452d = c6300u;
        this.f17453k = aq2Var;
        this.f17454p = i83Var;
        this.f17455q = scheduledExecutorService;
        this.f17460v = bu0Var.mo8577z();
        this.f17461w = ls1Var;
        this.f17462x = xt2Var;
        this.f17463y = pu2Var;
        this.f17447G = im0Var;
    }

    /* renamed from: G7 */
    public static boolean m17593G7(Uri uri) {
        return m17582n7(uri, f17439L, f17440M);
    }

    /* renamed from: J7 */
    public final /* synthetic */ void m17590J7(fo1[] fo1VarArr) {
        fo1 fo1Var = fo1VarArr[0];
        if (fo1Var != null) {
            this.f17453k.m12969c(y73.m4814a(fo1Var));
        }
    }

    @Override // p168r4.vk0
    /* renamed from: V6 */
    public final void mo6134V6(qf0 qf0Var) {
        this.f17456r = qf0Var;
        this.f17453k.m12971a(1);
    }

    /* renamed from: g7 */
    public final /* synthetic */ h83 m17589g7(fo1[] fo1VarArr, String str, fo1 fo1Var) {
        fo1VarArr[0] = fo1Var;
        Context context = this.f17451b;
        qf0 qf0Var = this.f17456r;
        Map<String, WeakReference<View>> map = qf0Var.f30100b;
        JSONObject m26383e = C0476f1.m26383e(context, map, map, qf0Var.f30099a);
        JSONObject m26386b = C0476f1.m26386b(this.f17451b, this.f17456r.f30099a);
        JSONObject m26385c = C0476f1.m26385c(this.f17456r.f30099a);
        JSONObject m26384d = C0476f1.m26384d(this.f17451b, this.f17456r.f30099a);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("asset_view_signal", m26383e);
        jSONObject.put("ad_view_signal", m26386b);
        jSONObject.put("scroll_view_signal", m26385c);
        jSONObject.put("lock_screen_signal", m26384d);
        if (str == "google.afma.nativeAds.getPublisherCustomRenderedClickSignals") {
            jSONObject.put("click_signal", C0476f1.m26382f(null, this.f17451b, this.f17458t, this.f17457s));
        }
        return fo1Var.m11453d(str, jSONObject);
    }

    /* renamed from: p7 */
    public final h83<String> m17580p7(final String str) {
        final fo1[] fo1VarArr = new fo1[1];
        h83 m4806i = y73.m4806i(this.f17453k.m12970b(), new e73(this, fo1VarArr, str) { // from class: h3.a0

            /* renamed from: a */
            public final BinderC3998g0 f17417a;

            /* renamed from: b */
            public final fo1[] f17418b;

            /* renamed from: c */
            public final String f17419c;

            {
                this.f17417a = this;
                this.f17418b = fo1VarArr;
                this.f17419c = str;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f17417a.m17589g7(this.f17418b, this.f17419c, (fo1) obj);
            }
        }, this.f17454p);
        m4806i.mo6087c(new Runnable(this, fo1VarArr) { // from class: h3.b0

            /* renamed from: a */
            public final BinderC3998g0 f17421a;

            /* renamed from: b */
            public final fo1[] f17422b;

            {
                this.f17421a = this;
                this.f17422b = fo1VarArr;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f17421a.m17590J7(this.f17422b);
            }
        }, this.f17454p);
        return y73.m4809f(y73.m4805j((o73) y73.m4807h(o73.m8869E(m4806i), ((Integer) C5592av.m12935c().m8098c(C6225rz.f31167y5)).intValue(), TimeUnit.MILLISECONDS, this.f17455q), C4020y.f17502a, this.f17454p), Exception.class, C4021z.f17503a, this.f17454p);
    }

    /* renamed from: q7 */
    public final boolean m17579q7() {
        Map<String, WeakReference<View>> map;
        qf0 qf0Var = this.f17456r;
        return (qf0Var == null || (map = qf0Var.f30100b) == null || map.isEmpty()) ? false : true;
    }

    /* renamed from: I7 */
    public static /* synthetic */ void m17591I7(BinderC3998g0 binderC3998g0, String str, String str2, String str3) {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31063l5)).booleanValue()) {
            return;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31040i6)).booleanValue()) {
            xt2 xt2Var = binderC3998g0.f17462x;
            wt2 m5590a = wt2.m5590a(str);
            m5590a.m5588c(str2, str3);
            xt2Var.mo4985a(m5590a);
            return;
        }
        ks1 m9572d = binderC3998g0.f17461w.m9572d();
        m9572d.m9954d("action", str);
        m9572d.m9954d(str2, str3);
        m9572d.m9953e();
    }

    /* renamed from: m7 */
    public static final /* synthetic */ ArrayList m17583m7(List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (m17593G7(uri) && !TextUtils.isEmpty(str)) {
                arrayList.add(m17578r7(uri, "nas", str));
            } else {
                arrayList.add(uri);
            }
        }
        return arrayList;
    }

    @Override // p168r4.vk0
    /* renamed from: X3 */
    public final void mo6133X3(final List<Uri> list, final InterfaceC3512a interfaceC3512a, nf0 nf0Var) {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31159x5)).booleanValue()) {
            try {
                nf0Var.mo9109s("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e) {
                cm0.m12439d("", e);
                return;
            }
        }
        h83 mo8015c = this.f17454p.mo8015c(new Callable(this, list, interfaceC3512a) { // from class: h3.s

            /* renamed from: a */
            public final BinderC3998g0 f17490a;

            /* renamed from: b */
            public final List f17491b;

            /* renamed from: c */
            public final InterfaceC3512a f17492c;

            {
                this.f17490a = this;
                this.f17491b = list;
                this.f17492c = interfaceC3512a;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f17490a.m17585k7(this.f17491b, this.f17492c);
            }
        });
        if (m17579q7()) {
            mo8015c = y73.m4806i(mo8015c, new e73(this) { // from class: h3.t

                /* renamed from: a */
                public final BinderC3998g0 f17493a;

                {
                    this.f17493a = this;
                }

                @Override // p168r4.e73
                /* renamed from: a */
                public final h83 mo1029a(Object obj) {
                    return this.f17493a.m17586j7((ArrayList) obj);
                }
            }, this.f17454p);
        } else {
            cm0.m12438e("Asset view map is empty.");
        }
        y73.m4799p(mo8015c, new C3992d0(this, nf0Var), this.f17450a.mo8613h());
    }

    @Override // p168r4.vk0
    @SuppressLint({"AddJavascriptInterface"})
    /* renamed from: a0 */
    public final void mo6132a0(InterfaceC3512a interfaceC3512a) {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30821H6)).booleanValue()) {
            return;
        }
        if (Build.VERSION.SDK_INT < 21) {
            cm0.m12437f("Not registering the webview because the Android API level is lower than Lollopop which has security risks on webviews.");
            return;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30829I6)).booleanValue()) {
            y73.m4799p(m17581o7(this.f17451b, null, EnumC6703b.BANNER.name(), null, null).mo9261a(), new C3996f0(this), this.f17450a.mo8613h());
        }
        WebView webView = (WebView) BinderC3514b.m18740t0(interfaceC3512a);
        if (webView == null) {
            cm0.m12440c("The webView cannot be null.");
        } else if (this.f17459u.contains(webView)) {
            cm0.m12438e("This webview has already been registered.");
        } else {
            this.f17459u.add(webView);
            webView.addJavascriptInterface(new C3985a(webView, this.f17452d), "gmaSdk");
        }
    }

    /* renamed from: h7 */
    public final /* synthetic */ h83 m17588h7(final Uri uri) {
        return y73.m4805j(m17580p7("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new p03(this, uri) { // from class: h3.x

            /* renamed from: a */
            public final BinderC3998g0 f17500a;

            /* renamed from: b */
            public final Uri f17501b;

            {
                this.f17500a = this;
                this.f17501b = uri;
            }

            @Override // p168r4.p03
            public final Object apply(Object obj) {
                return BinderC3998g0.m17584l7(this.f17501b, (String) obj);
            }
        }, this.f17454p);
    }

    @Override // p168r4.vk0
    /* renamed from: i3 */
    public final void mo6131i3(List<Uri> list, final InterfaceC3512a interfaceC3512a, nf0 nf0Var) {
        try {
            if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31159x5)).booleanValue()) {
                nf0Var.mo9109s("The updating URL feature is not enabled.");
            } else if (list.size() != 1) {
                nf0Var.mo9109s("There should be only 1 click URL.");
            } else {
                final Uri uri = list.get(0);
                if (!m17582n7(uri, f17437J, f17438K)) {
                    String valueOf = String.valueOf(uri);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 18);
                    sb.append("Not a Google URL: ");
                    sb.append(valueOf);
                    cm0.m12437f(sb.toString());
                    nf0Var.mo9110c6(list);
                    return;
                }
                h83 mo8015c = this.f17454p.mo8015c(new Callable(this, uri, interfaceC3512a) { // from class: h3.u

                    /* renamed from: a */
                    public final BinderC3998g0 f17494a;

                    /* renamed from: b */
                    public final Uri f17495b;

                    /* renamed from: c */
                    public final InterfaceC3512a f17496c;

                    {
                        this.f17494a = this;
                        this.f17495b = uri;
                        this.f17496c = interfaceC3512a;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f17494a.m17587i7(this.f17495b, this.f17496c);
                    }
                });
                if (m17579q7()) {
                    mo8015c = y73.m4806i(mo8015c, new e73(this) { // from class: h3.v

                        /* renamed from: a */
                        public final BinderC3998g0 f17497a;

                        {
                            this.f17497a = this;
                        }

                        @Override // p168r4.e73
                        /* renamed from: a */
                        public final h83 mo1029a(Object obj) {
                            return this.f17497a.m17588h7((Uri) obj);
                        }
                    }, this.f17454p);
                } else {
                    cm0.m12438e("Asset view map is empty.");
                }
                y73.m4799p(mo8015c, new C3994e0(this, nf0Var), this.f17450a.mo8613h());
            }
        } catch (RemoteException e) {
            cm0.m12439d("", e);
        }
    }

    /* renamed from: i7 */
    public final /* synthetic */ Uri m17587i7(Uri uri, InterfaceC3512a interfaceC3512a) {
        try {
            uri = this.f17452d.m6680e(uri, this.f17451b, (View) BinderC3514b.m18740t0(interfaceC3512a), null);
        } catch (C6337v e) {
            cm0.m12436g("", e);
        }
        if (uri.getQueryParameter("ms") != null) {
            return uri;
        }
        throw new Exception("Failed to append spam signals to click url.");
    }

    /* renamed from: j7 */
    public final /* synthetic */ h83 m17586j7(final ArrayList arrayList) {
        return y73.m4805j(m17580p7("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new p03(this, arrayList) { // from class: h3.w

            /* renamed from: a */
            public final BinderC3998g0 f17498a;

            /* renamed from: b */
            public final List f17499b;

            {
                this.f17498a = this;
                this.f17499b = arrayList;
            }

            @Override // p168r4.p03
            public final Object apply(Object obj) {
                return BinderC3998g0.m17583m7(this.f17499b, (String) obj);
            }
        }, this.f17454p);
    }

    /* renamed from: k7 */
    public final /* synthetic */ ArrayList m17585k7(List list, InterfaceC3512a interfaceC3512a) {
        String str;
        if (this.f17452d.m6683b() != null) {
            str = this.f17452d.m6683b().mo1017d(this.f17451b, (View) BinderC3514b.m18740t0(interfaceC3512a), null);
        } else {
            str = "";
        }
        if (!TextUtils.isEmpty(str)) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Uri uri = (Uri) it.next();
                if (!m17593G7(uri)) {
                    cm0.m12437f("Not a Google URL: ".concat(String.valueOf(uri)));
                    arrayList.add(uri);
                } else {
                    arrayList.add(m17578r7(uri, "ms", str));
                }
            }
            if (!arrayList.isEmpty()) {
                return arrayList;
            }
            throw new Exception("Empty impression URLs result.");
        }
        throw new Exception("Failed to get view signals.");
    }

    /* renamed from: o7 */
    public final AbstractC4013r m17581o7(Context context, String str, String str2, C6478yt c6478yt, C6293tt c6293tt) {
        InterfaceC4012q mo8581x = this.f17450a.mo8581x();
        s61 s61Var = new s61();
        s61Var.m7197e(context);
        fp2 fp2Var = new fp2();
        if (str == null) {
            str = "adUnitId";
        }
        fp2Var.m11428L(str);
        if (c6293tt == null) {
            c6293tt = new C6330ut().m6381a();
        }
        fp2Var.m11433G(c6293tt);
        if (c6478yt == null) {
            c6478yt = new C6478yt();
        }
        fp2Var.m11431I(c6478yt);
        s61Var.m7196f(fp2Var.m11413l());
        mo8581x.mo9555b(s61Var.m7194h());
        C4002i0 c4002i0 = new C4002i0();
        c4002i0.m17567b(str2);
        mo8581x.mo9554c(new C4006k0(c4002i0, null));
        new zc1();
        return mo8581x.zza();
    }

    @Override // p168r4.vk0
    public final void zzf(InterfaceC3512a interfaceC3512a) {
        View view;
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31159x5)).booleanValue()) {
            return;
        }
        MotionEvent motionEvent = (MotionEvent) BinderC3514b.m18740t0(interfaceC3512a);
        qf0 qf0Var = this.f17456r;
        if (qf0Var == null) {
            view = null;
        } else {
            view = qf0Var.f30099a;
        }
        this.f17457s = C0476f1.m26380h(motionEvent, view);
        if (motionEvent.getAction() == 0) {
            this.f17458t = this.f17457s;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        Point point = this.f17457s;
        obtain.setLocation(point.x, point.y);
        this.f17452d.m6681d(obtain);
        obtain.recycle();
    }

    /* renamed from: l7 */
    public static final /* synthetic */ Uri m17584l7(Uri uri, String str) {
        if (!TextUtils.isEmpty(str)) {
            return m17578r7(uri, "nas", str);
        }
        return uri;
    }

    /* renamed from: n7 */
    public static boolean m17582n7(Uri uri, List<String> list, List<String> list2) {
        String host = uri.getHost();
        String path = uri.getPath();
        if (host != null && path != null) {
            for (String str : list) {
                if (path.contains(str)) {
                    for (String str2 : list2) {
                        if (host.endsWith(str2)) {
                            return true;
                        }
                    }
                    continue;
                }
            }
        }
        return false;
    }

    /* renamed from: r7 */
    public static final Uri m17578r7(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("&adurl=");
        if (indexOf == -1) {
            indexOf = uri2.indexOf("?adurl=");
        }
        if (indexOf != -1) {
            int i = indexOf + 1;
            return Uri.parse(uri2.substring(0, i) + str + "=" + str2 + "&" + uri2.substring(i));
        }
        return uri.buildUpon().appendQueryParameter(str, str2).build();
    }

    @Override // p168r4.vk0
    /* renamed from: k5 */
    public final void mo6130k5(InterfaceC3512a interfaceC3512a, zk0 zk0Var, sk0 sk0Var) {
        Context context = (Context) BinderC3514b.m18740t0(interfaceC3512a);
        this.f17451b = context;
        y73.m4799p(m17581o7(context, zk0Var.f34655a, zk0Var.f34656b, zk0Var.f34657d, zk0Var.f34658k).mo9261a(), new C3990c0(this, sk0Var), this.f17450a.mo8613h());
    }
}
