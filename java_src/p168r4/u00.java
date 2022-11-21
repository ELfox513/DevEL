package p168r4;
/* renamed from: r4.u00 */
/* loaded from: classes2.dex */
public class u00<T> {

    /* renamed from: a */
    public final String f32100a;

    /* renamed from: b */
    public final T f32101b;

    /* renamed from: c */
    public final int f32102c;

    public u00(String str, T t, int i) {
        this.f32100a = str;
        this.f32101b = t;
        this.f32102c = i;
    }

    /* renamed from: a */
    public static u00<Boolean> m6677a(String str, boolean z) {
        return new u00<>(str, Boolean.valueOf(z), 1);
    }

    /* renamed from: b */
    public static u00<Long> m6676b(String str, long j) {
        return new u00<>(str, Long.valueOf(j), 2);
    }

    /* renamed from: c */
    public static u00<Double> m6675c(String str, double d) {
        return new u00<>(str, Double.valueOf(d), 3);
    }

    /* renamed from: d */
    public static u00<String> m6674d(String str, String str2) {
        return new u00<>(str, str2, 4);
    }

    /* renamed from: e */
    public final T m6673e() {
        u10 m6253a = v10.m6253a();
        if (m6253a == null) {
            return this.f32101b;
        }
        int i = this.f32102c - 1;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return (T) m6253a.mo6654a(this.f32100a, (String) this.f32101b);
                }
                return (T) m6253a.mo6652c(this.f32100a, ((Double) this.f32101b).doubleValue());
            }
            return (T) m6253a.mo6653b(this.f32100a, ((Long) this.f32101b).longValue());
        }
        return (T) m6253a.mo6651d(this.f32100a, ((Boolean) this.f32101b).booleanValue());
    }
}
