package p168r4;

import android.view.View;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p235z2.InterfaceC7587f;
/* renamed from: r4.i00 */
/* loaded from: classes2.dex */
public final class i00 extends j00 {

    /* renamed from: a */
    public final InterfaceC7587f f24919a;

    /* renamed from: b */
    public final String f24920b;

    /* renamed from: d */
    public final String f24921d;

    public i00(InterfaceC7587f interfaceC7587f, String str, String str2) {
        this.f24919a = interfaceC7587f;
        this.f24920b = str;
        this.f24921d = str2;
    }

    @Override // p168r4.k00
    /* renamed from: a */
    public final String mo10125a() {
        return this.f24920b;
    }

    @Override // p168r4.k00
    /* renamed from: b */
    public final String mo10124b() {
        return this.f24921d;
    }

    @Override // p168r4.k00
    /* renamed from: c */
    public final void mo10123c() {
        this.f24919a.mo1025a();
    }

    @Override // p168r4.k00
    /* renamed from: d */
    public final void mo10121d() {
        this.f24919a.mo1024b();
    }

    @Override // p168r4.k00
    /* renamed from: c0 */
    public final void mo10122c0(InterfaceC3512a interfaceC3512a) {
        if (interfaceC3512a == null) {
            return;
        }
        this.f24919a.mo1023c((View) BinderC3514b.m18740t0(interfaceC3512a));
    }
}
