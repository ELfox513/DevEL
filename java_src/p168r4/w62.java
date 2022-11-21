package p168r4;

import p168r4.u81;
/* renamed from: r4.w62 */
/* loaded from: classes2.dex */
public final class w62<AdT, AdapterT, ListenerT extends u81> implements vr3<v62<AdT, AdapterT, ListenerT>> {

    /* renamed from: a */
    public final is3<mt2> f33120a;

    /* renamed from: b */
    public final is3<i83> f33121b;

    /* renamed from: c */
    public final is3<s12<AdapterT, ListenerT>> f33122c;

    /* renamed from: d */
    public final is3<y12<AdT, AdapterT, ListenerT>> f33123d;

    public w62(is3<mt2> is3Var, is3<i83> is3Var2, is3<s12<AdapterT, ListenerT>> is3Var3, is3<y12<AdT, AdapterT, ListenerT>> is3Var4) {
        this.f33120a = is3Var;
        this.f33121b = is3Var2;
        this.f33122c = is3Var3;
        this.f33123d = is3Var4;
    }

    @Override // p168r4.is3
    /* renamed from: b */
    public final v62<AdT, AdapterT, ListenerT> mo4079a() {
        return new v62<>(this.f33120a.mo4079a(), this.f33121b.mo4079a(), this.f33122c.mo4079a(), this.f33123d.mo4079a());
    }
}
