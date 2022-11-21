package p203v3;

import android.app.Activity;
import androidx.annotation.RecentlyNonNull;
import androidx.fragment.app.ActivityC0256d;
import p220x3.C7297q;
/* renamed from: v3.g */
/* loaded from: classes.dex */
public class C7011g {

    /* renamed from: a */
    public final Object f35967a;

    public C7011g(@RecentlyNonNull Activity activity) {
        C7297q.m1882k(activity, "Activity must not be null");
        this.f35967a = activity;
    }

    /* renamed from: a */
    public Activity m2676a() {
        return (Activity) this.f35967a;
    }

    /* renamed from: b */
    public ActivityC0256d m2675b() {
        return (ActivityC0256d) this.f35967a;
    }

    /* renamed from: c */
    public boolean m2674c() {
        return this.f35967a instanceof ActivityC0256d;
    }

    /* renamed from: d */
    public final boolean m2673d() {
        return this.f35967a instanceof Activity;
    }
}
