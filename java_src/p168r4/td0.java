package p168r4;

import com.google.android.gms.internal.ads.zzbye;
import p004a3.InterfaceC0076q;
import p041d3.InterfaceC3309n;
/* renamed from: r4.td0 */
/* loaded from: classes2.dex */
public final class td0 implements InterfaceC0076q {

    /* renamed from: a */
    public final /* synthetic */ zzbye f31766a;

    public td0(zzbye zzbyeVar) {
        this.f31766a = zzbyeVar;
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: A2 */
    public final void mo4171A2() {
        cm0.m12442a("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: c */
    public final void mo4168c() {
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: e */
    public final void mo4166e() {
        cm0.m12442a("Delay close AdMobCustomTabsAdapter overlay.");
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: e3 */
    public final void mo4165e3() {
        cm0.m12442a("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: C6 */
    public final void mo4170C6(int i) {
        InterfaceC3309n interfaceC3309n;
        cm0.m12442a("AdMobCustomTabsAdapter overlay is closed.");
        interfaceC3309n = this.f31766a.f7831b;
        interfaceC3309n.mo11229p(this.f31766a);
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: j0 */
    public final void mo4163j0() {
        InterfaceC3309n interfaceC3309n;
        cm0.m12442a("Opening AdMobCustomTabsAdapter overlay.");
        interfaceC3309n = this.f31766a.f7831b;
        interfaceC3309n.mo11226s(this.f31766a);
    }
}
