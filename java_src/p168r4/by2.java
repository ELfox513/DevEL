package p168r4;

import android.content.Context;
import android.util.Base64;
import java.nio.ByteBuffer;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import p097j5.AbstractC4346i;
import p097j5.C4352l;
import p097j5.InterfaceC4338e;
import p211w2.C7171a;
/* renamed from: r4.by2 */
/* loaded from: classes2.dex */
public final class by2 {

    /* renamed from: a */
    public final Context f21264a;

    /* renamed from: b */
    public final Executor f21265b;

    /* renamed from: c */
    public final hx2 f21266c;

    /* renamed from: d */
    public final jx2 f21267d;

    /* renamed from: e */
    public final ay2 f21268e;

    /* renamed from: f */
    public final ay2 f21269f;

    /* renamed from: g */
    public AbstractC4346i<pb4> f21270g;

    /* renamed from: h */
    public AbstractC4346i<pb4> f21271h;

    public by2(Context context, Executor executor, hx2 hx2Var, jx2 jx2Var, xx2 xx2Var, yx2 yx2Var) {
        this.f21264a = context;
        this.f21265b = executor;
        this.f21266c = hx2Var;
        this.f21267d = jx2Var;
        this.f21268e = xx2Var;
        this.f21269f = yx2Var;
    }

    /* renamed from: b */
    public final pb4 m12681b() {
        return m12675h(this.f21270g, this.f21268e.zza());
    }

    /* renamed from: c */
    public final pb4 m12680c() {
        return m12675h(this.f21271h, this.f21269f.zza());
    }

    /* renamed from: a */
    public static by2 m12682a(Context context, Executor executor, hx2 hx2Var, jx2 jx2Var) {
        final by2 by2Var = new by2(context, executor, hx2Var, jx2Var, new xx2(), new yx2());
        if (by2Var.f21267d.mo8978b()) {
            by2Var.f21270g = by2Var.m12676g(new Callable(by2Var) { // from class: r4.ux2

                /* renamed from: a */
                public final by2 f32483a;

                {
                    this.f32483a = by2Var;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f32483a.m12677f();
                }
            });
        } else {
            by2Var.f21270g = C4352l.m16767d(by2Var.f21268e.zza());
        }
        by2Var.f21271h = by2Var.m12676g(new Callable(by2Var) { // from class: r4.vx2

            /* renamed from: a */
            public final by2 f32971a;

            {
                this.f32971a = by2Var;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f32971a.m12678e();
            }
        });
        return by2Var;
    }

    /* renamed from: d */
    public final /* synthetic */ void m12679d(Exception exc) {
        if (exc instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
        this.f21266c.m10766c(2025, -1L, exc);
    }

    /* renamed from: e */
    public final /* synthetic */ pb4 m12678e() {
        Context context = this.f21264a;
        return px2.m8102a(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
    }

    /* renamed from: f */
    public final /* synthetic */ pb4 m12677f() {
        Context context = this.f21264a;
        za4 m8365z0 = pb4.m8365z0();
        C7171a.C7172a m2243b = C7171a.m2243b(context);
        String m2232a = m2243b.m2232a();
        if (m2232a != null && m2232a.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
            UUID fromString = UUID.fromString(m2232a);
            byte[] bArr = new byte[16];
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            wrap.putLong(fromString.getMostSignificantBits());
            wrap.putLong(fromString.getLeastSignificantBits());
            m2232a = Base64.encodeToString(bArr, 11);
        }
        if (m2232a != null) {
            m8365z0.m4379W(m2232a);
            m8365z0.m4378X(m2243b.m2231b());
            m8365z0.m4370f0(6);
        }
        return m8365z0.m9614o();
    }

    /* renamed from: g */
    public final AbstractC4346i<pb4> m12676g(Callable<pb4> callable) {
        return C4352l.m16769b(this.f21265b, callable).mo16797e(this.f21265b, new InterfaceC4338e(this) { // from class: r4.wx2

            /* renamed from: a */
            public final by2 f33356a;

            {
                this.f33356a = this;
            }

            @Override // p097j5.InterfaceC4338e
            /* renamed from: e */
            public final void mo0e(Exception exc) {
                this.f33356a.m12679d(exc);
            }
        });
    }

    /* renamed from: h */
    public static pb4 m12675h(AbstractC4346i<pb4> abstractC4346i, pb4 pb4Var) {
        if (!abstractC4346i.mo16786p()) {
            return pb4Var;
        }
        return abstractC4346i.mo16790l();
    }
}
