package p024c2;

import androidx.annotation.RecentlyNonNull;
import p184t2.C6710g;
@Deprecated
/* renamed from: c2.c */
/* loaded from: classes.dex */
public final class C1037c {
    @RecentlyNonNull

    /* renamed from: b */
    public static final C1037c f2943b = new C1037c(-1, -2, "mb");
    @RecentlyNonNull

    /* renamed from: c */
    public static final C1037c f2944c = new C1037c(320, 50, "mb");
    @RecentlyNonNull

    /* renamed from: d */
    public static final C1037c f2945d = new C1037c(300, 250, "as");
    @RecentlyNonNull

    /* renamed from: e */
    public static final C1037c f2946e = new C1037c(468, 60, "as");
    @RecentlyNonNull

    /* renamed from: f */
    public static final C1037c f2947f = new C1037c(728, 90, "as");
    @RecentlyNonNull

    /* renamed from: g */
    public static final C1037c f2948g = new C1037c(160, 600, "as");

    /* renamed from: a */
    public final C6710g f2949a;

    public C1037c(int i, int i2, String str) {
        this(new C6710g(i, i2));
    }

    public C1037c(@RecentlyNonNull C6710g c6710g) {
        this.f2949a = c6710g;
    }

    /* renamed from: a */
    public int m24784a() {
        return this.f2949a.m3585a();
    }

    /* renamed from: b */
    public int m24783b() {
        return this.f2949a.m3583c();
    }

    public int hashCode() {
        return this.f2949a.hashCode();
    }

    @RecentlyNonNull
    public String toString() {
        return this.f2949a.toString();
    }

    public boolean equals(@RecentlyNonNull Object obj) {
        if (!(obj instanceof C1037c)) {
            return false;
        }
        return this.f2949a.equals(((C1037c) obj).f2949a);
    }
}
