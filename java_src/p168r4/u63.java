package p168r4;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
/* renamed from: r4.u63 */
/* loaded from: classes2.dex */
public abstract class u63<I, O, F, T> extends n73<O> implements Runnable {

    /* renamed from: u */
    public static final /* synthetic */ int f32209u = 0;

    /* renamed from: s */
    public h83<? extends I> f32210s;

    /* renamed from: t */
    public F f32211t;

    /* renamed from: F */
    public abstract void mo6605F(T t);

    /* renamed from: G */
    public abstract T mo6604G(F f, I i);

    @Override // p168r4.p63
    /* renamed from: j */
    public final void mo5447j() {
        m8455z(this.f32210s);
        this.f32210s = null;
        this.f32211t = null;
    }

    @Override // p168r4.p63
    /* renamed from: i */
    public final String mo5448i() {
        String str;
        h83<? extends I> h83Var = this.f32210s;
        F f = this.f32211t;
        String mo5448i = super.mo5448i();
        if (h83Var != null) {
            String obj = h83Var.toString();
            StringBuilder sb = new StringBuilder(obj.length() + 16);
            sb.append("inputFuture=[");
            sb.append(obj);
            sb.append("], ");
            str = sb.toString();
        } else {
            str = "";
        }
        if (f != null) {
            String obj2 = f.toString();
            StringBuilder sb2 = new StringBuilder(str.length() + 11 + obj2.length());
            sb2.append(str);
            sb2.append("function=[");
            sb2.append(obj2);
            sb2.append("]");
            return sb2.toString();
        } else if (mo5448i != null) {
            if (mo5448i.length() != 0) {
                return str.concat(mo5448i);
            }
            return new String(str);
        } else {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        h83<? extends I> h83Var = this.f32210s;
        F f = this.f32211t;
        boolean isCancelled = isCancelled();
        boolean z2 = true;
        if (h83Var == null) {
            z = true;
        } else {
            z = false;
        }
        boolean z3 = isCancelled | z;
        if (f != null) {
            z2 = false;
        }
        if (z3 | z2) {
            return;
        }
        this.f32210s = null;
        if (h83Var.isCancelled()) {
            m8458w(h83Var);
            return;
        }
        try {
            try {
                Object mo6604G = mo6604G(f, y73.m4798q(h83Var));
                this.f32211t = null;
                mo6605F(mo6604G);
            } catch (Throwable th) {
                try {
                    mo8449v(th);
                } finally {
                    this.f32211t = null;
                }
            }
        } catch (Error e) {
            mo8449v(e);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (RuntimeException e2) {
            mo8449v(e2);
        } catch (ExecutionException e3) {
            mo8449v(e3.getCause());
        }
    }

    public u63(h83<? extends I> h83Var, F f) {
        h83Var.getClass();
        this.f32210s = h83Var;
        f.getClass();
        this.f32211t = f;
    }
}
