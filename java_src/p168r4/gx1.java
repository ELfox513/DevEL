package p168r4;

import android.os.ParcelFileDescriptor;
import p016b3.C0475f0;
import p016b3.C0479g0;
/* renamed from: r4.gx1 */
/* loaded from: classes2.dex */
public final class gx1 extends jg0 {

    /* renamed from: a */
    public final /* synthetic */ jx1 f24368a;

    public gx1(jx1 jx1Var) {
        this.f24368a = jx1Var;
    }

    @Override // p168r4.kg0
    /* renamed from: E4 */
    public final void mo10041E4(ParcelFileDescriptor parcelFileDescriptor) {
        this.f24368a.f26168a.m6086e(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }

    @Override // p168r4.kg0
    /* renamed from: M4 */
    public final void mo10040M4(C0479g0 c0479g0) {
        this.f24368a.f26168a.m6085f(new C0475f0(c0479g0.f1607a, c0479g0.f1608b));
    }
}
