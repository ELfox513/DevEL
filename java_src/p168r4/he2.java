package p168r4;

import android.content.pm.PackageInfo;
import p016b3.InterfaceC0549y1;
/* renamed from: r4.he2 */
/* loaded from: classes2.dex */
public final class he2 implements vr3<fe2> {

    /* renamed from: a */
    public final is3<i83> f24558a;

    /* renamed from: b */
    public final is3<hp2> f24559b;

    /* renamed from: c */
    public final is3<PackageInfo> f24560c;

    /* renamed from: d */
    public final is3<InterfaceC0549y1> f24561d;

    public he2(is3<i83> is3Var, is3<hp2> is3Var2, is3<PackageInfo> is3Var3, is3<InterfaceC0549y1> is3Var4) {
        this.f24558a = is3Var;
        this.f24559b = is3Var2;
        this.f24560c = is3Var3;
        this.f24561d = is3Var4;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new fe2(i83Var, ((z61) this.f24559b).m4418b(), this.f24560c.mo4079a(), ((lq2) this.f24561d).mo4079a());
    }
}
