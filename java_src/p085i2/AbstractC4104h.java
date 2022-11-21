package p085i2;

import com.google.auto.value.AutoValue;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p085i2.C4089a;
@AutoValue
/* renamed from: i2.h */
/* loaded from: classes.dex */
public abstract class AbstractC4104h {

    @AutoValue.Builder
    /* renamed from: i2.h$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC4105a {
        /* renamed from: a */
        public final AbstractC4105a m17386a(String str, int i) {
            mo17382e().put(str, String.valueOf(i));
            return this;
        }

        /* renamed from: b */
        public final AbstractC4105a m17385b(String str, long j) {
            mo17382e().put(str, String.valueOf(j));
            return this;
        }

        /* renamed from: c */
        public final AbstractC4105a m17384c(String str, String str2) {
            mo17382e().put(str, str2);
            return this;
        }

        /* renamed from: d */
        public abstract AbstractC4104h mo17383d();

        /* renamed from: e */
        public abstract Map<String, String> mo17382e();

        /* renamed from: f */
        public abstract AbstractC4105a mo17381f(Map<String, String> map);

        /* renamed from: g */
        public abstract AbstractC4105a mo17380g(Integer num);

        /* renamed from: h */
        public abstract AbstractC4105a mo17379h(C4103g c4103g);

        /* renamed from: i */
        public abstract AbstractC4105a mo17378i(long j);

        /* renamed from: j */
        public abstract AbstractC4105a mo17377j(String str);

        /* renamed from: k */
        public abstract AbstractC4105a mo17376k(long j);
    }

    /* renamed from: a */
    public static AbstractC4105a m17398a() {
        return new C4089a.C4091b().mo17381f(new HashMap());
    }

    /* renamed from: b */
    public final String m17397b(String str) {
        String str2 = mo17396c().get(str);
        return str2 == null ? "" : str2;
    }

    /* renamed from: c */
    public abstract Map<String, String> mo17396c();

    /* renamed from: d */
    public abstract Integer mo17395d();

    /* renamed from: e */
    public abstract C4103g mo17394e();

    /* renamed from: f */
    public abstract long mo17393f();

    /* renamed from: i */
    public final Map<String, String> m17390i() {
        return Collections.unmodifiableMap(mo17396c());
    }

    /* renamed from: j */
    public abstract String mo17389j();

    /* renamed from: k */
    public abstract long mo17388k();

    /* renamed from: l */
    public AbstractC4105a m17387l() {
        return new C4089a.C4091b().mo17377j(mo17389j()).mo17380g(mo17395d()).mo17379h(mo17394e()).mo17378i(mo17393f()).mo17376k(mo17388k()).mo17381f(new HashMap(mo17396c()));
    }

    /* renamed from: g */
    public final int m17392g(String str) {
        String str2 = mo17396c().get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    /* renamed from: h */
    public final long m17391h(String str) {
        String str2 = mo17396c().get(str);
        if (str2 == null) {
            return 0L;
        }
        return Long.valueOf(str2).longValue();
    }
}
