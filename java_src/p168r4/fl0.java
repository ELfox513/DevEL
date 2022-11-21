package p168r4;

import android.os.Bundle;
import p026c4.InterfaceC1045f;
/* renamed from: r4.fl0 */
/* loaded from: classes2.dex */
public final class fl0 {

    /* renamed from: a */
    public long f23543a = -1;

    /* renamed from: b */
    public long f23544b = -1;

    /* renamed from: c */
    public final /* synthetic */ gl0 f23545c;

    public fl0(gl0 gl0Var) {
        this.f23545c = gl0Var;
    }

    /* renamed from: a */
    public final long m11490a() {
        return this.f23544b;
    }

    /* renamed from: b */
    public final void m11489b() {
        InterfaceC1045f interfaceC1045f;
        interfaceC1045f = this.f23545c.f24125a;
        this.f23544b = interfaceC1045f.mo24762b();
    }

    /* renamed from: c */
    public final void m11488c() {
        InterfaceC1045f interfaceC1045f;
        interfaceC1045f = this.f23545c.f24125a;
        this.f23543a = interfaceC1045f.mo24762b();
    }

    /* renamed from: d */
    public final Bundle m11487d() {
        Bundle bundle = new Bundle();
        bundle.putLong("topen", this.f23543a);
        bundle.putLong("tclose", this.f23544b);
        return bundle;
    }
}
