package p099j7;

import java.util.concurrent.TimeUnit;
/* renamed from: j7.f */
/* loaded from: classes2.dex */
public class C4373f {

    /* renamed from: a */
    public long f18282a;

    /* renamed from: b */
    public long f18283b;

    /* renamed from: c */
    public TimeUnit f18284c;

    /* renamed from: j7.f$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C4374a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18285a;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            f18285a = iArr;
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18285a[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18285a[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: a */
    public double m16735a() {
        int i = C4374a.f18285a[this.f18284c.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    double d = this.f18282a;
                    double seconds = this.f18284c.toSeconds(this.f18283b);
                    Double.isNaN(d);
                    Double.isNaN(seconds);
                    return d / seconds;
                }
                double d2 = this.f18282a;
                double d3 = this.f18283b;
                Double.isNaN(d2);
                Double.isNaN(d3);
                double d4 = d2 / d3;
                double millis = TimeUnit.SECONDS.toMillis(1L);
                Double.isNaN(millis);
                return d4 * millis;
            }
            double d5 = this.f18282a;
            double d6 = this.f18283b;
            Double.isNaN(d5);
            Double.isNaN(d6);
            double d7 = d5 / d6;
            double micros = TimeUnit.SECONDS.toMicros(1L);
            Double.isNaN(micros);
            return d7 * micros;
        }
        double d8 = this.f18282a;
        double d9 = this.f18283b;
        Double.isNaN(d8);
        Double.isNaN(d9);
        double d10 = d8 / d9;
        double nanos = TimeUnit.SECONDS.toNanos(1L);
        Double.isNaN(nanos);
        return d10 * nanos;
    }

    public C4373f(long j, long j2, TimeUnit timeUnit) {
        this.f18282a = j;
        this.f18283b = j2;
        this.f18284c = timeUnit;
    }
}
