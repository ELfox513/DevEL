package p095j3;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import p168r4.ii0;
import p184t2.AbstractC6715l;
import p184t2.C6708f;
import p184t2.InterfaceC6721r;
import p220x3.C7297q;
/* renamed from: j3.b */
/* loaded from: classes.dex */
public abstract class AbstractC4327b {
    /* renamed from: b */
    public abstract void mo10653b(AbstractC6715l abstractC6715l);

    /* renamed from: c */
    public abstract void mo10652c(@RecentlyNonNull Activity activity, @RecentlyNonNull InterfaceC6721r interfaceC6721r);

    /* renamed from: a */
    public static void m16811a(@RecentlyNonNull Context context, @RecentlyNonNull String str, @RecentlyNonNull C6708f c6708f, @RecentlyNonNull AbstractC4328c abstractC4328c) {
        C7297q.m1882k(context, "Context cannot be null.");
        C7297q.m1882k(str, "AdUnitId cannot be null.");
        C7297q.m1882k(c6708f, "AdRequest cannot be null.");
        C7297q.m1882k(abstractC4328c, "LoadCallback cannot be null.");
        new ii0(context, str).m10651d(c6708f.m3595a(), abstractC4328c);
    }
}
