package p168r4;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p077h3.C4002i0;
import p077h3.InterfaceC4012q;
import p184t2.EnumC6703b;
/* renamed from: r4.lf2 */
/* loaded from: classes2.dex */
public final class lf2 implements eg2<mf2> {

    /* renamed from: a */
    public final String f27200a;

    /* renamed from: b */
    public final i83 f27201b;

    /* renamed from: c */
    public final ScheduledExecutorService f27202c;

    /* renamed from: d */
    public final Context f27203d;

    /* renamed from: e */
    public final hp2 f27204e;

    /* renamed from: f */
    public final bu0 f27205f;

    public lf2(i83 i83Var, ScheduledExecutorService scheduledExecutorService, String str, Context context, hp2 hp2Var, bu0 bu0Var) {
        this.f27201b = i83Var;
        this.f27202c = scheduledExecutorService;
        this.f27200a = str;
        this.f27203d = context;
        this.f27204e = hp2Var;
        this.f27205f = bu0Var;
    }

    /* renamed from: a */
    public final /* bridge */ /* synthetic */ h83 m9670a() {
        String str = this.f27200a;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31079n5)).booleanValue()) {
            str = EnumC6703b.UNKNOWN.name();
        }
        InterfaceC4012q mo8581x = this.f27205f.mo8581x();
        s61 s61Var = new s61();
        s61Var.m7197e(this.f27203d);
        fp2 fp2Var = new fp2();
        fp2Var.m11428L("adUnitId");
        fp2Var.m11433G(this.f27204e.f24779d);
        fp2Var.m11431I(new C6478yt());
        s61Var.m7196f(fp2Var.m11413l());
        mo8581x.mo9555b(s61Var.m7194h());
        C4002i0 c4002i0 = new C4002i0();
        c4002i0.m17567b(str);
        mo8581x.mo9554c(c4002i0.m17566c());
        new zc1();
        return y73.m4809f(y73.m4805j((o73) y73.m4807h(o73.m8869E(mo8581x.zza().mo9261a()), ((Long) C5592av.m12935c().m8098c(C6225rz.f31087o5)).longValue(), TimeUnit.MILLISECONDS, this.f27202c), jf2.f26016a, this.f27201b), Exception.class, kf2.f26390a, this.f27201b);
    }

    @Override // p168r4.eg2
    public final h83<mf2> zza() {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31071m5)).booleanValue() && !"adUnitId".equals(this.f27204e.f24781f)) {
            return y73.m4810e(new d73(this) { // from class: r4.if2

                /* renamed from: a */
                public final lf2 f25083a;

                {
                    this.f25083a = this;
                }

                @Override // p168r4.d73
                public final h83 zza() {
                    return this.f25083a.m9670a();
                }
            }, this.f27201b);
        }
        return this.f27201b.mo8015c(hf2.f24568a);
    }
}
