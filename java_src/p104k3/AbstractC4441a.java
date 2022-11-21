package p104k3;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import p168r4.si0;
import p184t2.AbstractC6715l;
import p184t2.C6708f;
import p184t2.InterfaceC6721r;
import p220x3.C7297q;
/* renamed from: k3.a */
/* loaded from: classes.dex */
public abstract class AbstractC4441a {
    /* renamed from: b */
    public abstract void mo7156b(AbstractC6715l abstractC6715l);

    /* renamed from: c */
    public abstract void mo7155c(@RecentlyNonNull Activity activity, @RecentlyNonNull InterfaceC6721r interfaceC6721r);

    /* renamed from: a */
    public static void m16479a(@RecentlyNonNull Context context, @RecentlyNonNull String str, @RecentlyNonNull C6708f c6708f, @RecentlyNonNull AbstractC4442b abstractC4442b) {
        C7297q.m1882k(context, "Context cannot be null.");
        C7297q.m1882k(str, "AdUnitId cannot be null.");
        C7297q.m1882k(c6708f, "AdRequest cannot be null.");
        C7297q.m1882k(abstractC4442b, "LoadCallback cannot be null.");
        new si0(context, str).m7154d(c6708f.m3595a(), abstractC4442b);
    }
}
