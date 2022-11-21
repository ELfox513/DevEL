package p220x3;

import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import p194u3.C6883a;
/* renamed from: x3.x */
/* loaded from: classes.dex */
public class C7318x implements C6883a.InterfaceC6887d {
    @RecentlyNonNull

    /* renamed from: b */
    public static final C7318x f36805b = m1844a().m1842a();

    /* renamed from: a */
    public final String f36806a;

    /* renamed from: x3.x$a */
    /* loaded from: classes.dex */
    public static class C7319a {

        /* renamed from: a */
        public String f36807a;

        public /* synthetic */ C7319a(C7323z c7323z) {
        }

        @RecentlyNonNull
        /* renamed from: a */
        public C7318x m1842a() {
            return new C7318x(this.f36807a, null);
        }
    }

    public /* synthetic */ C7318x(String str, C7323z c7323z) {
        this.f36806a = str;
    }

    @RecentlyNonNull
    /* renamed from: a */
    public static C7319a m1844a() {
        return new C7319a(null);
    }

    public final int hashCode() {
        return C7289o.m1907b(this.f36806a);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public final Bundle m1843b() {
        Bundle bundle = new Bundle();
        String str = this.f36806a;
        if (str != null) {
            bundle.putString("api", str);
        }
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7318x)) {
            return false;
        }
        return C7289o.m1908a(this.f36806a, ((C7318x) obj).f36806a);
    }
}
