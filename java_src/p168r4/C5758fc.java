package p168r4;
/* renamed from: r4.fc */
/* loaded from: classes2.dex */
public final class C5758fc {

    /* renamed from: a */
    public long f23442a;

    /* renamed from: b */
    public long f23443b;

    /* renamed from: c */
    public long f23444c;

    /* renamed from: d */
    public final ThreadLocal<Long> f23445d = new ThreadLocal<>();

    /* renamed from: a */
    public final synchronized long m11584a() {
        long j = this.f23442a;
        if (j == Long.MAX_VALUE || j == 9223372036854775806L) {
            return -9223372036854775807L;
        }
        return j;
    }

    /* renamed from: b */
    public final synchronized long m11583b() {
        long j;
        j = this.f23444c;
        return j != -9223372036854775807L ? j + this.f23443b : m11584a();
    }

    /* renamed from: c */
    public final synchronized long m11582c() {
        return this.f23443b;
    }

    /* renamed from: d */
    public final synchronized void m11581d(long j) {
        this.f23442a = j;
        this.f23443b = j == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.f23444c = -9223372036854775807L;
    }

    /* renamed from: e */
    public final synchronized long m11580e(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j2 = this.f23444c;
        if (j2 != -9223372036854775807L) {
            long j3 = (j2 * 90000) / 1000000;
            long j4 = (4294967296L + j3) / 8589934592L;
            long j5 = (((-1) + j4) * 8589934592L) + j;
            j += j4 * 8589934592L;
            if (Math.abs(j5 - j3) < Math.abs(j - j3)) {
                j = j5;
            }
        }
        return m11579f((j * 1000000) / 90000);
    }

    /* renamed from: f */
    public final synchronized long m11579f(long j) {
        if (this.f23443b == -9223372036854775807L) {
            long j2 = this.f23442a;
            if (j2 == 9223372036854775806L) {
                Long l = this.f23445d.get();
                l.getClass();
                j2 = l.longValue();
            }
            this.f23443b = j2 - j;
            notifyAll();
        }
        this.f23444c = j;
        return j + this.f23443b;
    }

    public C5758fc(long j) {
        m11581d(0L);
    }
}
