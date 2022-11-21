package p197u6;

import java.util.concurrent.TimeUnit;
import p170r6.C6548o;
/* renamed from: u6.e */
/* loaded from: classes2.dex */
public class C6942e {

    /* renamed from: d */
    public static final long f35811d = TimeUnit.HOURS.toMillis(24);

    /* renamed from: e */
    public static final long f35812e = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: a */
    public final C6548o f35813a = C6548o.m3945c();

    /* renamed from: b */
    public long f35814b;

    /* renamed from: c */
    public int f35815c;

    /* renamed from: c */
    public static boolean m2970c(int i) {
        return i == 429 || (i >= 500 && i < 600);
    }

    /* renamed from: d */
    public static boolean m2969d(int i) {
        return (i >= 200 && i < 300) || i == 401 || i == 404;
    }

    /* renamed from: a */
    public final synchronized long m2972a(int i) {
        if (!m2970c(i)) {
            return f35811d;
        }
        double pow = Math.pow(2.0d, this.f35815c);
        double m3943e = this.f35813a.m3943e();
        Double.isNaN(m3943e);
        return (long) Math.min(pow + m3943e, f35812e);
    }

    /* renamed from: b */
    public synchronized boolean m2971b() {
        boolean z;
        if (this.f35815c != 0) {
            z = this.f35813a.m3947a() > this.f35814b;
        }
        return z;
    }

    /* renamed from: e */
    public final synchronized void m2968e() {
        this.f35815c = 0;
    }

    /* renamed from: f */
    public synchronized void m2967f(int i) {
        if (m2969d(i)) {
            m2968e();
            return;
        }
        this.f35815c++;
        this.f35814b = this.f35813a.m3947a() + m2972a(i);
    }
}
