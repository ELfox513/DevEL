package p139o2;

import java.util.concurrent.Executor;
import p085i2.AbstractC4113m;
import p148p2.InterfaceC5321c;
import p157q2.InterfaceC5408b;
/* renamed from: o2.t */
/* loaded from: classes.dex */
public class C5089t {

    /* renamed from: a */
    public final Executor f19350a;

    /* renamed from: b */
    public final InterfaceC5321c f19351b;

    /* renamed from: c */
    public final InterfaceC5091v f19352c;

    /* renamed from: d */
    public final InterfaceC5408b f19353d;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m14678e() {
        this.f19353d.mo13329c(new InterfaceC5408b.InterfaceC5409a() { // from class: o2.s
            @Override // p157q2.InterfaceC5408b.InterfaceC5409a
            /* renamed from: d */
            public final Object mo13328d() {
                Object m14679d;
                m14679d = C5089t.this.m14679d();
                return m14679d;
            }
        });
    }

    /* renamed from: c */
    public void m14680c() {
        this.f19350a.execute(new Runnable() { // from class: o2.r
            @Override // java.lang.Runnable
            public final void run() {
                C5089t.this.m14678e();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ Object m14679d() {
        for (AbstractC4113m abstractC4113m : this.f19351b.mo13473T()) {
            this.f19352c.mo14673b(abstractC4113m, 1);
        }
        return null;
    }

    public C5089t(Executor executor, InterfaceC5321c interfaceC5321c, InterfaceC5091v interfaceC5091v, InterfaceC5408b interfaceC5408b) {
        this.f19350a = executor;
        this.f19351b = interfaceC5321c;
        this.f19352c = interfaceC5091v;
        this.f19353d = interfaceC5408b;
    }
}
