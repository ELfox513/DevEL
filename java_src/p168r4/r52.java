package p168r4;

import android.os.SystemClock;
import java.lang.Exception;
/* renamed from: r4.r52 */
/* loaded from: classes2.dex */
public final class r52<T extends Exception> {

    /* renamed from: a */
    public T f30456a;

    /* renamed from: b */
    public long f30457b;

    public r52(long j) {
    }

    /* renamed from: b */
    public final void m7608b() {
        this.f30456a = null;
    }

    /* renamed from: a */
    public final void m7609a(T t) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.f30456a == null) {
            this.f30456a = t;
            this.f30457b = 100 + elapsedRealtime;
        }
        if (elapsedRealtime >= this.f30457b) {
            T t2 = this.f30456a;
            if (t2 != t) {
                rk3.m7480a(t2, t);
            }
            T t3 = this.f30456a;
            this.f30456a = null;
            throw t3;
        }
    }
}
