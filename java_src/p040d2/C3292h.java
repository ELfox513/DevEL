package p040d2;

import com.google.ads.mediation.AbstractAdViewAdapter;
import p041d3.InterfaceC3304i;
import p168r4.InterfaceC5812gt;
import p184t2.AbstractC6704c;
import p184t2.C6716m;
import p193u2.InterfaceC6882c;
/* renamed from: d2.h */
/* loaded from: classes.dex */
public final class C3292h extends AbstractC6704c implements InterfaceC6882c, InterfaceC5812gt {

    /* renamed from: a */
    public final AbstractAdViewAdapter f15604a;

    /* renamed from: b */
    public final InterfaceC3304i f15605b;

    public C3292h(AbstractAdViewAdapter abstractAdViewAdapter, InterfaceC3304i interfaceC3304i) {
        this.f15604a = abstractAdViewAdapter;
        this.f15605b = interfaceC3304i;
    }

    @Override // p184t2.AbstractC6704c, p168r4.InterfaceC5812gt
    /* renamed from: F0 */
    public final void mo3609F0() {
        this.f15605b.mo11240e(this.f15604a);
    }

    @Override // p193u2.InterfaceC6882c
    /* renamed from: d */
    public final void mo3071d(String str, String str2) {
        this.f15605b.mo11234k(this.f15604a, str, str2);
    }

    @Override // p184t2.AbstractC6704c
    /* renamed from: j */
    public final void mo3608j() {
        this.f15605b.mo11244a(this.f15604a);
    }

    @Override // p184t2.AbstractC6704c
    /* renamed from: o */
    public final void mo3607o(C6716m c6716m) {
        this.f15605b.mo11236i(this.f15604a, c6716m);
    }

    @Override // p184t2.AbstractC6704c
    /* renamed from: q */
    public final void mo3605q() {
        this.f15605b.mo11237h(this.f15604a);
    }

    @Override // p184t2.AbstractC6704c
    /* renamed from: s */
    public final void mo3604s() {
        this.f15605b.mo11230o(this.f15604a);
    }
}
