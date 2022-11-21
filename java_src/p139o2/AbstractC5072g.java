package p139o2;

import android.app.job.JobInfo;
import com.google.auto.value.AutoValue;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p058f2.EnumC3505d;
import p139o2.C5067d;
import p166r2.InterfaceC5525a;
@AutoValue
/* renamed from: o2.g */
/* loaded from: classes.dex */
public abstract class AbstractC5072g {

    /* renamed from: o2.g$a */
    /* loaded from: classes.dex */
    public static class C5073a {

        /* renamed from: a */
        public InterfaceC5525a f19307a;

        /* renamed from: b */
        public Map<EnumC3505d, AbstractC5074b> f19308b = new HashMap();

        /* renamed from: a */
        public C5073a m14713a(EnumC3505d enumC3505d, AbstractC5074b abstractC5074b) {
            this.f19308b.put(enumC3505d, abstractC5074b);
            return this;
        }

        /* renamed from: c */
        public C5073a m14711c(InterfaceC5525a interfaceC5525a) {
            this.f19307a = interfaceC5525a;
            return this;
        }

        /* renamed from: b */
        public AbstractC5072g m14712b() {
            if (this.f19307a != null) {
                if (this.f19308b.keySet().size() >= EnumC3505d.values().length) {
                    Map<EnumC3505d, AbstractC5074b> map = this.f19308b;
                    this.f19308b = new HashMap();
                    return AbstractC5072g.m14720d(this.f19307a, map);
                }
                throw new IllegalStateException("Not all priorities have been configured");
            }
            throw new NullPointerException("missing required property: clock");
        }
    }

    @AutoValue
    /* renamed from: o2.g$b */
    /* loaded from: classes.dex */
    public static abstract class AbstractC5074b {

        @AutoValue.Builder
        /* renamed from: o2.g$b$a */
        /* loaded from: classes.dex */
        public static abstract class AbstractC5075a {
            /* renamed from: a */
            public abstract AbstractC5074b mo14706a();

            /* renamed from: b */
            public abstract AbstractC5075a mo14705b(long j);

            /* renamed from: c */
            public abstract AbstractC5075a mo14704c(Set<EnumC5076c> set);

            /* renamed from: d */
            public abstract AbstractC5075a mo14703d(long j);
        }

        /* renamed from: a */
        public static AbstractC5075a m14710a() {
            return new C5067d.C5069b().mo14704c(Collections.emptySet());
        }

        /* renamed from: b */
        public abstract long mo14709b();

        /* renamed from: c */
        public abstract Set<EnumC5076c> mo14708c();

        /* renamed from: d */
        public abstract long mo14707d();
    }

    /* renamed from: o2.g$c */
    /* loaded from: classes.dex */
    public enum EnumC5076c {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    /* renamed from: b */
    public static C5073a m14722b() {
        return new C5073a();
    }

    /* renamed from: d */
    public static AbstractC5072g m14720d(InterfaceC5525a interfaceC5525a, Map<EnumC3505d, AbstractC5074b> map) {
        return new C5066c(interfaceC5525a, map);
    }

    /* renamed from: i */
    public static <T> Set<T> m14715i(T... tArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(tArr)));
    }

    /* renamed from: e */
    public abstract InterfaceC5525a mo14719e();

    /* renamed from: h */
    public abstract Map<EnumC3505d, AbstractC5074b> mo14716h();

    /* renamed from: a */
    public final long m14723a(int i, long j) {
        long j2;
        int i2 = i - 1;
        if (j > 1) {
            j2 = j;
        } else {
            j2 = 2;
        }
        double max = Math.max(1.0d, Math.log(10000.0d) / Math.log(j2 * i2));
        double pow = Math.pow(3.0d, i2);
        double d = j;
        Double.isNaN(d);
        return (long) (pow * d * max);
    }

    /* renamed from: j */
    public final void m14714j(JobInfo.Builder builder, Set<EnumC5076c> set) {
        if (set.contains(EnumC5076c.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(EnumC5076c.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(EnumC5076c.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }

    /* renamed from: f */
    public static AbstractC5072g m14718f(InterfaceC5525a interfaceC5525a) {
        return m14722b().m14713a(EnumC3505d.DEFAULT, AbstractC5074b.m14710a().mo14705b(30000L).mo14703d(86400000L).mo14706a()).m14713a(EnumC3505d.HIGHEST, AbstractC5074b.m14710a().mo14705b(1000L).mo14703d(86400000L).mo14706a()).m14713a(EnumC3505d.VERY_LOW, AbstractC5074b.m14710a().mo14705b(86400000L).mo14703d(86400000L).mo14704c(m14715i(EnumC5076c.NETWORK_UNMETERED, EnumC5076c.DEVICE_IDLE)).mo14706a()).m14711c(interfaceC5525a).m14712b();
    }

    /* renamed from: c */
    public JobInfo.Builder m14721c(JobInfo.Builder builder, EnumC3505d enumC3505d, long j, int i) {
        builder.setMinimumLatency(m14717g(enumC3505d, j, i));
        m14714j(builder, mo14716h().get(enumC3505d).mo14708c());
        return builder;
    }

    /* renamed from: g */
    public long m14717g(EnumC3505d enumC3505d, long j, int i) {
        long time = j - mo14719e().getTime();
        AbstractC5074b abstractC5074b = mo14716h().get(enumC3505d);
        return Math.min(Math.max(m14723a(i, abstractC5074b.mo14709b()), time), abstractC5074b.mo14707d());
    }
}
