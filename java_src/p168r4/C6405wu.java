package p168r4;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
/* renamed from: r4.wu */
/* loaded from: classes2.dex */
public final class C6405wu {

    /* renamed from: a */
    public final C6256st f33322a;

    /* renamed from: b */
    public final C6182qt f33323b;

    /* renamed from: c */
    public final C5780fy f33324c;

    /* renamed from: d */
    public final l40 f33325d;

    /* renamed from: e */
    public final li0 f33326e;

    /* renamed from: f */
    public final te0 f33327f;

    /* renamed from: g */
    public final m40 f33328g;

    /* renamed from: h */
    public xf0 f33329h;

    public C6405wu(C6256st c6256st, C6182qt c6182qt, C5780fy c5780fy, l40 l40Var, li0 li0Var, te0 te0Var, m40 m40Var) {
        this.f33322a = c6256st;
        this.f33323b = c6182qt;
        this.f33324c = c5780fy;
        this.f33325d = l40Var;
        this.f33326e = li0Var;
        this.f33327f = te0Var;
        this.f33328g = m40Var;
    }

    /* renamed from: g */
    public static /* synthetic */ void m5574g(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        C6479yu.m4568a().m6123e(context, C6479yu.m4565d().f25171a, "gmob-apps", bundle, true);
    }

    /* renamed from: h */
    public final InterfaceC6369vv m5573h(Context context, C6478yt c6478yt, String str, fb0 fb0Var) {
        return new C6183qu(this, context, c6478yt, str, fb0Var).m4974d(context, false);
    }

    /* renamed from: i */
    public final InterfaceC6221rv m5572i(Context context, String str, fb0 fb0Var) {
        return new C6257su(this, context, str, fb0Var).m4974d(context, false);
    }

    /* renamed from: j */
    public final yh0 m5571j(Context context, String str, fb0 fb0Var) {
        return new C6368vu(this, context, str, fb0Var).m4974d(context, false);
    }

    /* renamed from: k */
    public final we0 m5570k(Activity activity) {
        C5886iu c5886iu = new C5886iu(this, activity);
        Intent intent = activity.getIntent();
        boolean z = false;
        if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            cm0.m12440c("useClientJar flag not found in activity intent extras.");
        } else {
            z = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
        return c5886iu.m4974d(activity, z);
    }

    /* renamed from: l */
    public final vk0 m5569l(Context context, fb0 fb0Var) {
        return new C5960ku(this, context, fb0Var).m4974d(context, false);
    }

    /* renamed from: m */
    public final ke0 m5568m(Context context, fb0 fb0Var) {
        return new C6034mu(this, context, fb0Var).m4974d(context, false);
    }
}
