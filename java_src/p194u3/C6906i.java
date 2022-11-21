package p194u3;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.Status;
import p203v3.C7026l;
import p203v3.C7038p;
import p220x3.C7297q;
/* renamed from: u3.i */
/* loaded from: classes.dex */
public final class C6906i {
    @RecentlyNonNull
    /* renamed from: a */
    public static <R extends InterfaceC6909l> AbstractC6904h<R> m3037a(@RecentlyNonNull R r, @RecentlyNonNull AbstractC6900f abstractC6900f) {
        C7297q.m1882k(r, "Result must not be null");
        C7297q.m1891b(!r.getStatus().m23033c1(), "Status code must not be SUCCESS");
        C6914q c6914q = new C6914q(abstractC6900f, r);
        c6914q.m23029h(r);
        return c6914q;
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static <R extends InterfaceC6909l> AbstractC6903g<R> m3036b(@RecentlyNonNull R r, @RecentlyNonNull AbstractC6900f abstractC6900f) {
        C7297q.m1882k(r, "Result must not be null");
        C6915r c6915r = new C6915r(abstractC6900f);
        c6915r.m23029h(r);
        return new C7026l(c6915r);
    }

    @RecentlyNonNull
    /* renamed from: c */
    public static AbstractC6904h<Status> m3035c(@RecentlyNonNull Status status, @RecentlyNonNull AbstractC6900f abstractC6900f) {
        C7297q.m1882k(status, "Result must not be null");
        C7038p c7038p = new C7038p(abstractC6900f);
        c7038p.m23029h(status);
        return c7038p;
    }
}
