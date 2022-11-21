package p168r4;

import android.content.ComponentName;
import java.lang.ref.WeakReference;
import p136o.AbstractServiceConnectionC5059d;
import p136o.C5055b;
/* renamed from: r4.ks3 */
/* loaded from: classes2.dex */
public final class ks3 extends AbstractServiceConnectionC5059d {

    /* renamed from: a */
    public final WeakReference<q00> f26544a;

    @Override // p136o.AbstractServiceConnectionC5059d
    /* renamed from: a */
    public final void mo9949a(ComponentName componentName, C5055b c5055b) {
        q00 q00Var = this.f26544a.get();
        if (q00Var != null) {
            q00Var.m8081f(c5055b);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        q00 q00Var = this.f26544a.get();
        if (q00Var != null) {
            q00Var.m8080g();
        }
    }

    public ks3(q00 q00Var, byte[] bArr) {
        this.f26544a = new WeakReference<>(q00Var);
    }
}
