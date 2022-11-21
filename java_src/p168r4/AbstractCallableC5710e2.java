package p168r4;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
/* renamed from: r4.e2 */
/* loaded from: classes2.dex */
public abstract class AbstractCallableC5710e2 implements Callable {

    /* renamed from: a */
    public final String f22743a = getClass().getSimpleName();

    /* renamed from: b */
    public final C6338v0 f22744b;

    /* renamed from: c */
    public final String f22745c;

    /* renamed from: d */
    public final String f22746d;

    /* renamed from: e */
    public final za4 f22747e;

    /* renamed from: f */
    public Method f22748f;

    /* renamed from: g */
    public final int f22749g;

    /* renamed from: h */
    public final int f22750h;

    public AbstractCallableC5710e2(C6338v0 c6338v0, String str, String str2, za4 za4Var, int i, int i2) {
        this.f22744b = c6338v0;
        this.f22745c = str;
        this.f22746d = str2;
        this.f22747e = za4Var;
        this.f22749g = i;
        this.f22750h = i2;
    }

    /* renamed from: a */
    public abstract void mo4485a();

    /* renamed from: b */
    public Void mo9815b() {
        long nanoTime;
        Method m6269q;
        int i;
        try {
            nanoTime = System.nanoTime();
            m6269q = this.f22744b.m6269q(this.f22745c, this.f22746d);
            this.f22748f = m6269q;
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
        if (m6269q == null) {
            return null;
        }
        mo4485a();
        C6115p m6276j = this.f22744b.m6276j();
        if (m6276j != null && (i = this.f22749g) != Integer.MIN_VALUE) {
            m6276j.m8546c(this.f22750h, i, (System.nanoTime() - nanoTime) / 1000, null, null);
        }
        return null;
    }

    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ Object call() {
        mo9815b();
        return null;
    }
}
