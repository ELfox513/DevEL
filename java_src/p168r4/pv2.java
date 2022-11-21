package p168r4;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
/* renamed from: r4.pv2 */
/* loaded from: classes2.dex */
public final class pv2 {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: f */
    public static final pv2 f29822f = new pv2();

    /* renamed from: a */
    public Context f29823a;

    /* renamed from: b */
    public BroadcastReceiver f29824b;

    /* renamed from: c */
    public boolean f29825c;

    /* renamed from: d */
    public boolean f29826d;

    /* renamed from: e */
    public uv2 f29827e;

    /* renamed from: a */
    public static pv2 m8123a() {
        return f29822f;
    }

    /* renamed from: b */
    public final void m8122b(Context context) {
        this.f29823a = context.getApplicationContext();
    }

    /* renamed from: d */
    public final void m8120d() {
        BroadcastReceiver broadcastReceiver;
        Context context = this.f29823a;
        if (context != null && (broadcastReceiver = this.f29824b) != null) {
            context.unregisterReceiver(broadcastReceiver);
            this.f29824b = null;
        }
        this.f29825c = false;
        this.f29826d = false;
        this.f29827e = null;
    }

    /* renamed from: e */
    public final boolean m8119e() {
        return !this.f29826d;
    }

    /* renamed from: g */
    public final void m8117g(uv2 uv2Var) {
        this.f29827e = uv2Var;
    }

    /* renamed from: f */
    public static /* synthetic */ void m8118f(pv2 pv2Var, boolean z) {
        if (pv2Var.f29826d != z) {
            pv2Var.f29826d = z;
            if (pv2Var.f29825c) {
                pv2Var.m8116h();
                if (pv2Var.f29827e != null) {
                    if (pv2Var.m8119e()) {
                        sw2.m6982f().m6981g();
                    } else {
                        sw2.m6982f().m6979i();
                    }
                }
            }
        }
    }

    /* renamed from: c */
    public final void m8121c() {
        this.f29824b = new ov2(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.f29823a.registerReceiver(this.f29824b, intentFilter);
        this.f29825c = true;
        m8116h();
    }

    /* renamed from: h */
    public final void m8116h() {
        String str;
        boolean z = this.f29826d;
        for (cv2 cv2Var : nv2.m8988a().m8984e()) {
            cw2 m12342g = cv2Var.m12342g();
            if (m12342g.m12294e()) {
                if (true != z) {
                    str = "foregrounded";
                } else {
                    str = "backgrounded";
                }
                tv2.m6708a().m6702g(m12342g.m12295d(), "setState", str);
            }
        }
    }
}
