package p168r4;

import android.os.Bundle;
/* renamed from: r4.kb2 */
/* loaded from: classes2.dex */
public final class kb2 implements dg2<Bundle> {

    /* renamed from: a */
    public final C5739eu f26363a;

    /* renamed from: b */
    public final im0 f26364b;

    /* renamed from: c */
    public final boolean f26365c;

    public kb2(C5739eu c5739eu, im0 im0Var, boolean z) {
        this.f26363a = c5739eu;
        this.f26364b = im0Var;
        this.f26365c = z;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (this.f26364b.f25173d >= ((Integer) C5592av.m12935c().m8098c(C6225rz.f30778C3)).intValue()) {
            bundle2.putString("app_open_version", "2");
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30786D3)).booleanValue()) {
            bundle2.putBoolean("app_switched", this.f26365c);
        }
        C5739eu c5739eu = this.f26363a;
        if (c5739eu != null) {
            int i = c5739eu.f23140a;
            if (i == 1) {
                bundle2.putString("avo", "p");
            } else if (i == 2) {
                bundle2.putString("avo", "l");
            }
        }
    }
}
