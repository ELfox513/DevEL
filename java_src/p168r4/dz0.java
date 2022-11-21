package p168r4;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: r4.dz0 */
/* loaded from: classes2.dex */
public final class dz0 implements vr3<cz0> {

    /* renamed from: a */
    public final is3<Context> f22693a;

    /* renamed from: b */
    public final is3<Executor> f22694b;

    /* renamed from: c */
    public final is3<Executor> f22695c;

    /* renamed from: d */
    public final is3<ScheduledExecutorService> f22696d;

    /* renamed from: e */
    public final is3<bp2> f22697e;

    /* renamed from: f */
    public final is3<no2> f22698f;

    /* renamed from: g */
    public final is3<mu2> f22699g;

    /* renamed from: h */
    public final is3<sp2> f22700h;

    /* renamed from: i */
    public final is3<View> f22701i;

    /* renamed from: j */
    public final is3<C6300u> f22702j;

    /* renamed from: k */
    public final is3<r00> f22703k;

    /* renamed from: l */
    public final is3<t00> f22704l;

    public dz0(is3<Context> is3Var, is3<Executor> is3Var2, is3<Executor> is3Var3, is3<ScheduledExecutorService> is3Var4, is3<bp2> is3Var5, is3<no2> is3Var6, is3<mu2> is3Var7, is3<sp2> is3Var8, is3<View> is3Var9, is3<C6300u> is3Var10, is3<r00> is3Var11, is3<t00> is3Var12) {
        this.f22693a = is3Var;
        this.f22694b = is3Var2;
        this.f22695c = is3Var3;
        this.f22696d = is3Var4;
        this.f22697e = is3Var5;
        this.f22698f = is3Var6;
        this.f22699g = is3Var7;
        this.f22700h = is3Var8;
        this.f22701i = is3Var9;
        this.f22702j = is3Var10;
        this.f22703k = is3Var11;
        this.f22704l = is3Var12;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        Context m9281b = ((mq2) this.f22693a).m9281b();
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new cz0(m9281b, i83Var, this.f22695c.mo4079a(), this.f22696d.mo4079a(), ((b41) this.f22697e).m12869b(), ((y31) this.f22698f).m4921b(), this.f22699g.mo4079a(), this.f22700h.mo4079a(), this.f22701i.mo4079a(), this.f22702j.mo4079a(), this.f22703k.mo4079a(), new t00(), null);
    }
}
