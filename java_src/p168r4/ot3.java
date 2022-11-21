package p168r4;

import android.os.Handler;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: r4.ot3 */
/* loaded from: classes2.dex */
public final class ot3 {

    /* renamed from: a */
    public final int f29131a;

    /* renamed from: b */
    public final ft3 f29132b;

    /* renamed from: c */
    public final CopyOnWriteArrayList<nt3> f29133c;

    public ot3() {
        this(new CopyOnWriteArrayList(), 0, null, 0L);
    }

    public ot3(CopyOnWriteArrayList<nt3> copyOnWriteArrayList, int i, ft3 ft3Var, long j) {
        this.f29133c = copyOnWriteArrayList;
        this.f29131a = i;
        this.f29132b = ft3Var;
    }

    /* renamed from: n */
    public static final long m8685n(long j) {
        long m11872a = C5711e3.m11872a(j);
        if (m11872a == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return m11872a;
    }

    /* renamed from: a */
    public final ot3 m8698a(int i, ft3 ft3Var, long j) {
        return new ot3(this.f29133c, i, ft3Var, 0L);
    }

    /* renamed from: b */
    public final void m8697b(Handler handler, pt3 pt3Var) {
        this.f29133c.add(new nt3(handler, pt3Var));
    }

    /* renamed from: c */
    public final void m8696c(pt3 pt3Var) {
        Iterator<nt3> it = this.f29133c.iterator();
        while (it.hasNext()) {
            nt3 next = it.next();
            if (next.f28479b == pt3Var) {
                this.f29133c.remove(next);
            }
        }
    }

    /* renamed from: d */
    public final void m8695d(ws3 ws3Var, int i, int i2, C5713e5 c5713e5, int i3, Object obj, long j, long j2) {
        m8694e(ws3Var, new ct3(1, -1, null, 0, null, m8685n(j), m8685n(j2)));
    }

    /* renamed from: e */
    public final void m8694e(final ws3 ws3Var, final ct3 ct3Var) {
        Iterator<nt3> it = this.f29133c.iterator();
        while (it.hasNext()) {
            nt3 next = it.next();
            final pt3 pt3Var = next.f28479b;
            C5979lc.m9722O(next.f28478a, new Runnable(this, pt3Var, ws3Var, ct3Var) { // from class: r4.it3

                /* renamed from: a */
                public final ot3 f25269a;

                /* renamed from: b */
                public final pt3 f25270b;

                /* renamed from: d */
                public final ws3 f25271d;

                /* renamed from: k */
                public final ct3 f25272k;

                {
                    this.f25269a = this;
                    this.f25270b = pt3Var;
                    this.f25271d = ws3Var;
                    this.f25272k = ct3Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    ot3 ot3Var = this.f25269a;
                    this.f25270b.mo8211g(ot3Var.f29131a, ot3Var.f29132b, this.f25271d, this.f25272k);
                }
            });
        }
    }

    /* renamed from: f */
    public final void m8693f(ws3 ws3Var, int i, int i2, C5713e5 c5713e5, int i3, Object obj, long j, long j2) {
        m8692g(ws3Var, new ct3(1, -1, null, 0, null, m8685n(j), m8685n(j2)));
    }

    /* renamed from: g */
    public final void m8692g(final ws3 ws3Var, final ct3 ct3Var) {
        Iterator<nt3> it = this.f29133c.iterator();
        while (it.hasNext()) {
            nt3 next = it.next();
            final pt3 pt3Var = next.f28479b;
            C5979lc.m9722O(next.f28478a, new Runnable(this, pt3Var, ws3Var, ct3Var) { // from class: r4.jt3

                /* renamed from: a */
                public final ot3 f26146a;

                /* renamed from: b */
                public final pt3 f26147b;

                /* renamed from: d */
                public final ws3 f26148d;

                /* renamed from: k */
                public final ct3 f26149k;

                {
                    this.f26146a = this;
                    this.f26147b = pt3Var;
                    this.f26148d = ws3Var;
                    this.f26149k = ct3Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    ot3 ot3Var = this.f26146a;
                    this.f26147b.mo8210h(ot3Var.f29131a, ot3Var.f29132b, this.f26148d, this.f26149k);
                }
            });
        }
    }

    /* renamed from: h */
    public final void m8691h(ws3 ws3Var, int i, int i2, C5713e5 c5713e5, int i3, Object obj, long j, long j2) {
        m8690i(ws3Var, new ct3(1, -1, null, 0, null, m8685n(j), m8685n(j2)));
    }

    /* renamed from: i */
    public final void m8690i(final ws3 ws3Var, final ct3 ct3Var) {
        Iterator<nt3> it = this.f29133c.iterator();
        while (it.hasNext()) {
            nt3 next = it.next();
            final pt3 pt3Var = next.f28479b;
            C5979lc.m9722O(next.f28478a, new Runnable(this, pt3Var, ws3Var, ct3Var) { // from class: r4.kt3

                /* renamed from: a */
                public final ot3 f26548a;

                /* renamed from: b */
                public final pt3 f26549b;

                /* renamed from: d */
                public final ws3 f26550d;

                /* renamed from: k */
                public final ct3 f26551k;

                {
                    this.f26548a = this;
                    this.f26549b = pt3Var;
                    this.f26550d = ws3Var;
                    this.f26551k = ct3Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    ot3 ot3Var = this.f26548a;
                    this.f26549b.mo8209k(ot3Var.f29131a, ot3Var.f29132b, this.f26550d, this.f26551k);
                }
            });
        }
    }

    /* renamed from: j */
    public final void m8689j(ws3 ws3Var, int i, int i2, C5713e5 c5713e5, int i3, Object obj, long j, long j2, IOException iOException, boolean z) {
        m8688k(ws3Var, new ct3(1, -1, null, 0, null, m8685n(j), m8685n(j2)), iOException, z);
    }

    /* renamed from: k */
    public final void m8688k(final ws3 ws3Var, final ct3 ct3Var, final IOException iOException, final boolean z) {
        Iterator<nt3> it = this.f29133c.iterator();
        while (it.hasNext()) {
            nt3 next = it.next();
            final pt3 pt3Var = next.f28479b;
            C5979lc.m9722O(next.f28478a, new Runnable(this, pt3Var, ws3Var, ct3Var, iOException, z) { // from class: r4.lt3

                /* renamed from: a */
                public final ot3 f27368a;

                /* renamed from: b */
                public final pt3 f27369b;

                /* renamed from: d */
                public final ws3 f27370d;

                /* renamed from: k */
                public final ct3 f27371k;

                /* renamed from: p */
                public final IOException f27372p;

                /* renamed from: q */
                public final boolean f27373q;

                {
                    this.f27368a = this;
                    this.f27369b = pt3Var;
                    this.f27370d = ws3Var;
                    this.f27371k = ct3Var;
                    this.f27372p = iOException;
                    this.f27373q = z;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    ot3 ot3Var = this.f27368a;
                    this.f27369b.mo8208y(ot3Var.f29131a, ot3Var.f29132b, this.f27370d, this.f27371k, this.f27372p, this.f27373q);
                }
            });
        }
    }

    /* renamed from: l */
    public final void m8687l(int i, C5713e5 c5713e5, int i2, Object obj, long j) {
        m8686m(new ct3(1, i, c5713e5, 0, null, m8685n(j), -9223372036854775807L));
    }

    /* renamed from: m */
    public final void m8686m(final ct3 ct3Var) {
        Iterator<nt3> it = this.f29133c.iterator();
        while (it.hasNext()) {
            nt3 next = it.next();
            final pt3 pt3Var = next.f28479b;
            C5979lc.m9722O(next.f28478a, new Runnable(this, pt3Var, ct3Var) { // from class: r4.mt3

                /* renamed from: a */
                public final ot3 f27871a;

                /* renamed from: b */
                public final pt3 f27872b;

                /* renamed from: d */
                public final ct3 f27873d;

                {
                    this.f27871a = this;
                    this.f27872b = pt3Var;
                    this.f27873d = ct3Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    ot3 ot3Var = this.f27871a;
                    this.f27872b.mo8212a(ot3Var.f29131a, ot3Var.f29132b, this.f27873d);
                }
            });
        }
    }
}
