package p203v3;

import android.app.Dialog;
/* renamed from: v3.e1 */
/* loaded from: classes.dex */
public final class C7007e1 extends AbstractC7015h0 {

    /* renamed from: a */
    public final /* synthetic */ Dialog f35936a;

    /* renamed from: b */
    public final /* synthetic */ RunnableC7010f1 f35937b;

    public C7007e1(RunnableC7010f1 runnableC7010f1, Dialog dialog) {
        this.f35937b = runnableC7010f1;
        this.f35936a = dialog;
    }

    @Override // p203v3.AbstractC7015h0
    /* renamed from: a */
    public final void mo2668a() {
        this.f35937b.f35966b.m2664l();
        if (this.f35936a.isShowing()) {
            this.f35936a.dismiss();
        }
    }
}
