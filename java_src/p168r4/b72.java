package p168r4;

import android.view.View;
import java.util.concurrent.atomic.AtomicBoolean;
import p235z2.InterfaceC7587f;
/* renamed from: r4.b72 */
/* loaded from: classes2.dex */
public final class b72 implements InterfaceC7587f {

    /* renamed from: a */
    public final h71 f20886a;

    /* renamed from: b */
    public final b81 f20887b;

    /* renamed from: c */
    public final ef1 f20888c;

    /* renamed from: d */
    public final xe1 f20889d;

    /* renamed from: e */
    public final oz0 f20890e;

    /* renamed from: f */
    public final AtomicBoolean f20891f = new AtomicBoolean(false);

    public b72(h71 h71Var, b81 b81Var, ef1 ef1Var, xe1 xe1Var, oz0 oz0Var) {
        this.f20886a = h71Var;
        this.f20887b = b81Var;
        this.f20888c = ef1Var;
        this.f20889d = xe1Var;
        this.f20890e = oz0Var;
    }

    @Override // p235z2.InterfaceC7587f
    /* renamed from: c */
    public final synchronized void mo1023c(View view) {
        if (!this.f20891f.compareAndSet(false, true)) {
            return;
        }
        this.f20890e.mo5385g();
        this.f20889d.m5335T0(view);
    }

    @Override // p235z2.InterfaceC7587f
    /* renamed from: a */
    public final void mo1025a() {
        if (this.f20891f.get()) {
            this.f20886a.mo3609F0();
        }
    }

    @Override // p235z2.InterfaceC7587f
    /* renamed from: b */
    public final void mo1024b() {
        if (this.f20891f.get()) {
            this.f20887b.zza();
            this.f20888c.zza();
        }
    }
}
