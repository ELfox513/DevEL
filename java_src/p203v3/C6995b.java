package p203v3;

import androidx.annotation.RecentlyNonNull;
import p194u3.C6883a;
import p194u3.C6883a.InterfaceC6887d;
import p220x3.C7289o;
/* renamed from: v3.b */
/* loaded from: classes.dex */
public final class C6995b<O extends C6883a.InterfaceC6887d> {

    /* renamed from: a */
    public final int f35901a;

    /* renamed from: b */
    public final C6883a<O> f35902b;

    /* renamed from: c */
    public final O f35903c;

    /* renamed from: d */
    public final String f35904d;

    public C6995b(C6883a<O> c6883a, O o, String str) {
        this.f35902b = c6883a;
        this.f35903c = o;
        this.f35904d = str;
        this.f35901a = C7289o.m1907b(c6883a, o, str);
    }

    @RecentlyNonNull
    /* renamed from: a */
    public static <O extends C6883a.InterfaceC6887d> C6995b<O> m2771a(@RecentlyNonNull C6883a<O> c6883a, O o, String str) {
        return new C6995b<>(c6883a, o, str);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public final String m2770b() {
        return this.f35902b.m3068c();
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof C6995b) {
            C6995b c6995b = (C6995b) obj;
            return C7289o.m1908a(this.f35902b, c6995b.f35902b) && C7289o.m1908a(this.f35903c, c6995b.f35903c) && C7289o.m1908a(this.f35904d, c6995b.f35904d);
        }
        return false;
    }

    public final int hashCode() {
        return this.f35901a;
    }
}
