package p168r4;
/* renamed from: r4.f02 */
/* loaded from: classes2.dex */
public final class f02 {

    /* renamed from: a */
    public int f23227a = 0;

    /* renamed from: b */
    public long f23228b = 0;

    /* renamed from: c */
    public long f23229c = 0;

    /* renamed from: d */
    public long f23230d = 0;

    /* renamed from: e */
    public final Object f23231e = new Object();

    /* renamed from: f */
    public final Object f23232f = new Object();

    /* renamed from: g */
    public final Object f23233g = new Object();

    /* renamed from: h */
    public final Object f23234h = new Object();

    /* renamed from: a */
    public final void m11658a(int i) {
        synchronized (this.f23231e) {
            this.f23227a = i;
        }
    }

    /* renamed from: c */
    public final void m11656c(long j) {
        synchronized (this.f23232f) {
            this.f23228b = j;
        }
    }

    /* renamed from: e */
    public final synchronized void m11654e(long j) {
        synchronized (this.f23233g) {
            this.f23229c = j;
        }
    }

    /* renamed from: f */
    public final synchronized long m11653f() {
        long j;
        synchronized (this.f23233g) {
            j = this.f23229c;
        }
        return j;
    }

    /* renamed from: g */
    public final synchronized void m11652g(long j) {
        synchronized (this.f23234h) {
            this.f23230d = j;
        }
    }

    /* renamed from: h */
    public final synchronized long m11651h() {
        long j;
        synchronized (this.f23234h) {
            j = this.f23230d;
        }
        return j;
    }

    /* renamed from: b */
    public final int m11657b() {
        int i;
        synchronized (this.f23231e) {
            i = this.f23227a;
        }
        return i;
    }

    /* renamed from: d */
    public final long m11655d() {
        long j;
        synchronized (this.f23232f) {
            j = this.f23228b;
        }
        return j;
    }
}
