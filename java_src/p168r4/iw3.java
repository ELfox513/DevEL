package p168r4;

import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: r4.iw3 */
/* loaded from: classes2.dex */
public final class iw3 {

    /* renamed from: a */
    public final CopyOnWriteArrayList<hw3> f25598a = new CopyOnWriteArrayList<>();

    /* renamed from: b */
    public final void m10481b(jw3 jw3Var) {
        jw3 jw3Var2;
        Iterator<hw3> it = this.f25598a.iterator();
        while (it.hasNext()) {
            hw3 next = it.next();
            jw3Var2 = next.f24896b;
            if (jw3Var2 == jw3Var) {
                next.m10773d();
                this.f25598a.remove(next);
            }
        }
    }

    /* renamed from: c */
    public final void m10480c(final int i, final long j, final long j2) {
        boolean z;
        Handler handler;
        Iterator<hw3> it = this.f25598a.iterator();
        while (it.hasNext()) {
            final hw3 next = it.next();
            z = next.f24897c;
            if (!z) {
                handler = next.f24895a;
                handler.post(new Runnable(next, i, j, j2) { // from class: r4.gw3

                    /* renamed from: a */
                    public final hw3 f24362a;

                    /* renamed from: b */
                    public final int f24363b;

                    /* renamed from: d */
                    public final long f24364d;

                    /* renamed from: k */
                    public final long f24365k;

                    {
                        this.f24362a = next;
                        this.f24363b = i;
                        this.f24364d = j;
                        this.f24365k = j2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        jw3 jw3Var;
                        hw3 hw3Var = this.f24362a;
                        int i2 = this.f24363b;
                        long j3 = this.f24364d;
                        long j4 = this.f24365k;
                        jw3Var = hw3Var.f24896b;
                        jw3Var.mo10161D(i2, j3, j4);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public final void m10482a(Handler handler, jw3 jw3Var) {
        m10481b(jw3Var);
        this.f25598a.add(new hw3(handler, jw3Var));
    }
}
