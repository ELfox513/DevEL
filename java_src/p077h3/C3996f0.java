package p077h3;

import p168r4.cm0;
import p168r4.t73;
import p235z2.C7601t;
/* renamed from: h3.f0 */
/* loaded from: classes.dex */
public final class C3996f0 implements t73<C4003j> {

    /* renamed from: a */
    public final /* synthetic */ BinderC3998g0 f17435a;

    public C3996f0(BinderC3998g0 binderC3998g0) {
        this.f17435a = binderC3998g0;
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo4626b(C4003j c4003j) {
        cm0.m12442a("Initialized webview successfully for SDKCore.");
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        C7601t.m935h().m9056k(th, "SignalGeneratorImpl.initializeWebViewForSignalCollection");
        BinderC3998g0.m17591I7(this.f17435a, "sgf", "sgf_reason", th.getMessage());
        cm0.m12439d("Failed to initialize webview for loading SDKCore. ", th);
    }
}
