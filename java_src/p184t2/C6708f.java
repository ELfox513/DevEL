package p184t2;

import android.location.Location;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.Date;
import p168r4.C6223rx;
import p168r4.C6260sx;
/* renamed from: t2.f */
/* loaded from: classes.dex */
public class C6708f {

    /* renamed from: a */
    public final C6260sx f35332a;

    /* renamed from: t2.f$a */
    /* loaded from: classes.dex */
    public static class C6709a {

        /* renamed from: a */
        public final C6223rx f35333a;

        @RecentlyNonNull
        /* renamed from: a */
        public C6709a m3594a(@RecentlyNonNull String str) {
            this.f35333a.m7288w(str);
            return this;
        }

        @RecentlyNonNull
        /* renamed from: c */
        public C6708f m3592c() {
            return new C6708f(this);
        }

        @RecentlyNonNull
        /* renamed from: d */
        public C6709a m3591d(@RecentlyNonNull Location location) {
            this.f35333a.m7309b(location);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: e */
        public final C6709a m3590e(@RecentlyNonNull String str) {
            this.f35333a.m7286y(str);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: f */
        public final C6709a m3589f(@RecentlyNonNull Date date) {
            this.f35333a.m7311A(date);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: g */
        public final C6709a m3588g(int i) {
            this.f35333a.m7310a(i);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: h */
        public final C6709a m3587h(boolean z) {
            this.f35333a.m7308c(z);
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: i */
        public final C6709a m3586i(boolean z) {
            this.f35333a.m7307d(z);
            return this;
        }

        @RecentlyNonNull
        /* renamed from: b */
        public C6709a m3593b(@RecentlyNonNull Class<Object> cls, @RecentlyNonNull Bundle bundle) {
            this.f35333a.m7287x(cls, bundle);
            if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
                this.f35333a.m7285z("B3EEABB8EE11C2BE770B684D95219ECB");
            }
            return this;
        }

        public C6709a() {
            C6223rx c6223rx = new C6223rx();
            this.f35333a = c6223rx;
            c6223rx.m7286y("B3EEABB8EE11C2BE770B684D95219ECB");
        }
    }

    public C6708f(@RecentlyNonNull C6709a c6709a) {
        this.f35332a = new C6260sx(c6709a.f35333a, null);
    }

    /* renamed from: a */
    public C6260sx m3595a() {
        return this.f35332a;
    }
}
