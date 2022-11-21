package p139o2;

import android.content.Context;
import java.util.concurrent.Executor;
import p094j2.InterfaceC4314e;
import p103k2.InterfaceC4438b;
import p148p2.InterfaceC5321c;
import p157q2.InterfaceC5408b;
import p166r2.InterfaceC5525a;
import p171r7.InterfaceC6549a;
/* renamed from: o2.q */
/* loaded from: classes.dex */
public final class C5086q implements InterfaceC4438b<C5085p> {

    /* renamed from: a */
    public final InterfaceC6549a<Context> f19341a;

    /* renamed from: b */
    public final InterfaceC6549a<InterfaceC4314e> f19342b;

    /* renamed from: c */
    public final InterfaceC6549a<InterfaceC5321c> f19343c;

    /* renamed from: d */
    public final InterfaceC6549a<InterfaceC5091v> f19344d;

    /* renamed from: e */
    public final InterfaceC6549a<Executor> f19345e;

    /* renamed from: f */
    public final InterfaceC6549a<InterfaceC5408b> f19346f;

    /* renamed from: g */
    public final InterfaceC6549a<InterfaceC5525a> f19347g;

    /* renamed from: a */
    public static C5086q m14685a(InterfaceC6549a<Context> interfaceC6549a, InterfaceC6549a<InterfaceC4314e> interfaceC6549a2, InterfaceC6549a<InterfaceC5321c> interfaceC6549a3, InterfaceC6549a<InterfaceC5091v> interfaceC6549a4, InterfaceC6549a<Executor> interfaceC6549a5, InterfaceC6549a<InterfaceC5408b> interfaceC6549a6, InterfaceC6549a<InterfaceC5525a> interfaceC6549a7) {
        return new C5086q(interfaceC6549a, interfaceC6549a2, interfaceC6549a3, interfaceC6549a4, interfaceC6549a5, interfaceC6549a6, interfaceC6549a7);
    }

    /* renamed from: c */
    public static C5085p m14683c(Context context, InterfaceC4314e interfaceC4314e, InterfaceC5321c interfaceC5321c, InterfaceC5091v interfaceC5091v, Executor executor, InterfaceC5408b interfaceC5408b, InterfaceC5525a interfaceC5525a) {
        return new C5085p(context, interfaceC4314e, interfaceC5321c, interfaceC5091v, executor, interfaceC5408b, interfaceC5525a);
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: b */
    public C5085p get() {
        return m14683c(this.f19341a.get(), this.f19342b.get(), this.f19343c.get(), this.f19344d.get(), this.f19345e.get(), this.f19346f.get(), this.f19347g.get());
    }

    public C5086q(InterfaceC6549a<Context> interfaceC6549a, InterfaceC6549a<InterfaceC4314e> interfaceC6549a2, InterfaceC6549a<InterfaceC5321c> interfaceC6549a3, InterfaceC6549a<InterfaceC5091v> interfaceC6549a4, InterfaceC6549a<Executor> interfaceC6549a5, InterfaceC6549a<InterfaceC5408b> interfaceC6549a6, InterfaceC6549a<InterfaceC5525a> interfaceC6549a7) {
        this.f19341a = interfaceC6549a;
        this.f19342b = interfaceC6549a2;
        this.f19343c = interfaceC6549a3;
        this.f19344d = interfaceC6549a4;
        this.f19345e = interfaceC6549a5;
        this.f19346f = interfaceC6549a6;
        this.f19347g = interfaceC6549a7;
    }
}
