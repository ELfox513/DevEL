package p220x3;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
/* renamed from: x3.r */
/* loaded from: classes.dex */
public final class C7300r {

    /* renamed from: b */
    public static C7300r f36783b;

    /* renamed from: c */
    public static final C7303s f36784c = new C7303s(0, false, false, 0, 0);

    /* renamed from: a */
    public C7303s f36785a;

    @RecentlyNonNull
    /* renamed from: b */
    public static synchronized C7300r m1877b() {
        C7300r c7300r;
        synchronized (C7300r.class) {
            if (f36783b == null) {
                f36783b = new C7300r();
            }
            c7300r = f36783b;
        }
        return c7300r;
    }

    @RecentlyNullable
    /* renamed from: a */
    public C7303s m1878a() {
        return this.f36785a;
    }

    /* renamed from: c */
    public final synchronized void m1876c(C7303s c7303s) {
        if (c7303s == null) {
            this.f36785a = f36784c;
            return;
        }
        C7303s c7303s2 = this.f36785a;
        if (c7303s2 == null || c7303s2.m1864b1() < c7303s.m1864b1()) {
            this.f36785a = c7303s;
        }
    }
}
