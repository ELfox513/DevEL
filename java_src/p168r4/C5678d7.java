package p168r4;

import android.os.Looper;
import android.os.SystemClock;
import java.util.concurrent.TimeoutException;
/* renamed from: r4.d7 */
/* loaded from: classes2.dex */
public final class C5678d7 {

    /* renamed from: a */
    public final InterfaceC5641c7 f22128a;

    /* renamed from: b */
    public final InterfaceC5605b7 f22129b;

    /* renamed from: c */
    public final InterfaceC5940ka f22130c;

    /* renamed from: d */
    public final AbstractC5717e8 f22131d;

    /* renamed from: e */
    public int f22132e;

    /* renamed from: f */
    public Object f22133f;

    /* renamed from: g */
    public final Looper f22134g;

    /* renamed from: h */
    public final int f22135h;

    /* renamed from: i */
    public boolean f22136i;

    /* renamed from: j */
    public boolean f22137j;

    /* renamed from: k */
    public boolean f22138k;

    public C5678d7(InterfaceC5605b7 interfaceC5605b7, InterfaceC5641c7 interfaceC5641c7, AbstractC5717e8 abstractC5717e8, int i, InterfaceC5940ka interfaceC5940ka, Looper looper) {
        this.f22129b = interfaceC5605b7;
        this.f22128a = interfaceC5641c7;
        this.f22131d = abstractC5717e8;
        this.f22134g = looper;
        this.f22130c = interfaceC5940ka;
        this.f22135h = i;
    }

    /* renamed from: a */
    public final InterfaceC5641c7 m12219a() {
        return this.f22128a;
    }

    /* renamed from: b */
    public final C5678d7 m12218b(int i) {
        C5903ja.m10371d(!this.f22136i);
        this.f22132e = i;
        return this;
    }

    /* renamed from: c */
    public final int m12217c() {
        return this.f22132e;
    }

    /* renamed from: d */
    public final C5678d7 m12216d(Object obj) {
        C5903ja.m10371d(!this.f22136i);
        this.f22133f = obj;
        return this;
    }

    /* renamed from: e */
    public final Object m12215e() {
        return this.f22133f;
    }

    /* renamed from: f */
    public final Looper m12214f() {
        return this.f22134g;
    }

    /* renamed from: h */
    public final synchronized boolean m12212h() {
        return false;
    }

    /* renamed from: i */
    public final synchronized void m12211i(boolean z) {
        this.f22137j = z | this.f22137j;
        this.f22138k = true;
        notifyAll();
    }

    /* renamed from: j */
    public final synchronized boolean m12210j(long j) {
        boolean z;
        C5903ja.m10371d(this.f22136i);
        if (this.f22134g.getThread() != Thread.currentThread()) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10371d(z);
        long j2 = 2000;
        long elapsedRealtime = SystemClock.elapsedRealtime() + 2000;
        while (!this.f22138k) {
            if (j2 > 0) {
                wait(j2);
                j2 = elapsedRealtime - SystemClock.elapsedRealtime();
            } else {
                throw new TimeoutException("Message delivery timed out.");
            }
        }
        return this.f22137j;
    }

    /* renamed from: g */
    public final C5678d7 m12213g() {
        C5903ja.m10371d(!this.f22136i);
        this.f22136i = true;
        this.f22129b.mo4876a(this);
        return this;
    }
}
