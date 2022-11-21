package p168r4;

import java.util.concurrent.atomic.AtomicBoolean;
import p004a3.InterfaceC0076q;
/* renamed from: r4.d41 */
/* loaded from: classes2.dex */
public final class d41 implements InterfaceC0076q {

    /* renamed from: a */
    public final r81 f22071a;

    /* renamed from: b */
    public final AtomicBoolean f22072b = new AtomicBoolean(false);

    /* renamed from: d */
    public final AtomicBoolean f22073d = new AtomicBoolean(false);

    @Override // p004a3.InterfaceC0076q
    /* renamed from: A2 */
    public final void mo4171A2() {
    }

    /* renamed from: a */
    public final boolean m12225a() {
        return this.f22072b.get();
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: c */
    public final void mo4168c() {
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: e */
    public final void mo4166e() {
        m12224b();
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: e3 */
    public final void mo4165e3() {
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: j0 */
    public final void mo4163j0() {
        this.f22071a.m7576b();
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: C6 */
    public final void mo4170C6(int i) {
        this.f22072b.set(true);
        m12224b();
    }

    /* renamed from: b */
    public final void m12224b() {
        if (!this.f22073d.get()) {
            this.f22073d.set(true);
            this.f22071a.zza();
        }
    }

    public d41(r81 r81Var) {
        this.f22071a = r81Var;
    }
}
