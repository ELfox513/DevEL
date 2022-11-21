package p168r4;

import android.content.Context;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import p097j5.AbstractC4346i;
import p097j5.C4352l;
import p097j5.InterfaceC4330a;
/* renamed from: r4.hx2 */
/* loaded from: classes2.dex */
public final class hx2 {

    /* renamed from: e */
    public static volatile int f24900e = 1;

    /* renamed from: a */
    public final Context f24901a;

    /* renamed from: b */
    public final Executor f24902b;

    /* renamed from: c */
    public final AbstractC4346i<lz2> f24903c;

    /* renamed from: d */
    public final boolean f24904d;

    public hx2(Context context, Executor executor, AbstractC4346i<lz2> abstractC4346i, boolean z) {
        this.f24901a = context;
        this.f24902b = executor;
        this.f24903c = abstractC4346i;
        this.f24904d = z;
    }

    /* renamed from: g */
    public static void m10762g(int i) {
        f24900e = i;
    }

    /* renamed from: b */
    public final AbstractC4346i<Boolean> m10767b(int i, long j) {
        return m10761h(i, j, null, null, null, null);
    }

    /* renamed from: c */
    public final AbstractC4346i<Boolean> m10766c(int i, long j, Exception exc) {
        return m10761h(i, j, exc, null, null, null);
    }

    /* renamed from: d */
    public final AbstractC4346i<Boolean> m10765d(int i, long j, String str, Map<String, String> map) {
        return m10761h(i, j, null, str, null, null);
    }

    /* renamed from: e */
    public final AbstractC4346i<Boolean> m10764e(int i, String str) {
        return m10761h(i, 0L, null, null, null, str);
    }

    /* renamed from: f */
    public final AbstractC4346i<Boolean> m10763f(int i, long j, String str) {
        return m10761h(i, j, null, null, null, str);
    }

    /* renamed from: a */
    public static hx2 m10768a(final Context context, Executor executor, final boolean z) {
        return new hx2(context, executor, C4352l.m16769b(executor, new Callable(context, z) { // from class: r4.ex2

            /* renamed from: a */
            public final Context f23198a;

            /* renamed from: b */
            public final boolean f23199b;

            {
                this.f23198a = context;
                this.f23199b = z;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                String str;
                Context context2 = this.f23198a;
                if (true != this.f23199b) {
                    str = "";
                } else {
                    str = "GLAS";
                }
                return new lz2(context2, str, null);
            }
        }), z);
    }

    /* renamed from: h */
    public final AbstractC4346i<Boolean> m10761h(final int i, long j, Exception exc, String str, Map<String, String> map, String str2) {
        if (!this.f24904d) {
            return this.f24903c.mo16794h(this.f24902b, fx2.f23795a);
        }
        final ka4 m8852C = oa4.m8852C();
        m8852C.m10074v(this.f24901a.getPackageName());
        m8852C.m10073x(j);
        m8852C.m10075D(f24900e);
        if (exc != null) {
            m8852C.m10072z(n13.m9208b(exc));
            m8852C.m10078A(exc.getClass().getName());
        }
        if (str2 != null) {
            m8852C.m10077B(str2);
        }
        if (str != null) {
            m8852C.m10076C(str);
        }
        return this.f24903c.mo16794h(this.f24902b, new InterfaceC4330a(m8852C, i) { // from class: r4.gx2

            /* renamed from: a */
            public final ka4 f24369a;

            /* renamed from: b */
            public final int f24370b;

            {
                this.f24369a = m8852C;
                this.f24370b = i;
            }

            @Override // p097j5.InterfaceC4330a
            /* renamed from: a */
            public final Object mo1688a(AbstractC4346i abstractC4346i) {
                ka4 ka4Var = this.f24369a;
                int i2 = this.f24370b;
                int i3 = hx2.f24900e;
                if (abstractC4346i.mo16786p()) {
                    jz2 m9532a = ((lz2) abstractC4346i.mo16790l()).m9532a(ka4Var.m9614o().mo6490t());
                    m9532a.m10129c(i2);
                    m9532a.m10131a();
                    return Boolean.TRUE;
                }
                return Boolean.FALSE;
            }
        });
    }
}
