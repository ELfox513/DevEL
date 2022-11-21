package p203v3;

import android.app.Dialog;
import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiActivity;
import p185t3.C6734b;
import p220x3.C7297q;
/* renamed from: v3.f1 */
/* loaded from: classes.dex */
public final class RunnableC7010f1 implements Runnable {

    /* renamed from: a */
    public final C7004d1 f35965a;

    /* renamed from: b */
    public final /* synthetic */ AbstractDialogInterface$OnCancelListenerC7016h1 f35966b;

    public RunnableC7010f1(AbstractDialogInterface$OnCancelListenerC7016h1 abstractDialogInterface$OnCancelListenerC7016h1, C7004d1 c7004d1) {
        this.f35966b = abstractDialogInterface$OnCancelListenerC7016h1;
        this.f35965a = c7004d1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f35966b.f35969b) {
            return;
        }
        C6734b m2716b = this.f35965a.m2716b();
        if (m2716b.m3525a1()) {
            AbstractDialogInterface$OnCancelListenerC7016h1 abstractDialogInterface$OnCancelListenerC7016h1 = this.f35966b;
            abstractDialogInterface$OnCancelListenerC7016h1.f7736a.startActivityForResult(GoogleApiActivity.m23041a(abstractDialogInterface$OnCancelListenerC7016h1.m23021b(), (PendingIntent) C7297q.m1883j(m2716b.m3526Z0()), this.f35965a.m2717a(), false), 1);
            return;
        }
        AbstractDialogInterface$OnCancelListenerC7016h1 abstractDialogInterface$OnCancelListenerC7016h12 = this.f35966b;
        if (abstractDialogInterface$OnCancelListenerC7016h12.f35972p.mo3494b(abstractDialogInterface$OnCancelListenerC7016h12.m23021b(), m2716b.m3528X0(), null) != null) {
            AbstractDialogInterface$OnCancelListenerC7016h1 abstractDialogInterface$OnCancelListenerC7016h13 = this.f35966b;
            abstractDialogInterface$OnCancelListenerC7016h13.f35972p.m3505p(abstractDialogInterface$OnCancelListenerC7016h13.m23021b(), this.f35966b.f7736a, m2716b.m3528X0(), 2, this.f35966b);
        } else if (m2716b.m3528X0() == 18) {
            AbstractDialogInterface$OnCancelListenerC7016h1 abstractDialogInterface$OnCancelListenerC7016h14 = this.f35966b;
            Dialog m3502s = abstractDialogInterface$OnCancelListenerC7016h14.f35972p.m3502s(abstractDialogInterface$OnCancelListenerC7016h14.m23021b(), this.f35966b);
            AbstractDialogInterface$OnCancelListenerC7016h1 abstractDialogInterface$OnCancelListenerC7016h15 = this.f35966b;
            abstractDialogInterface$OnCancelListenerC7016h15.f35972p.m3501t(abstractDialogInterface$OnCancelListenerC7016h15.m23021b().getApplicationContext(), new C7007e1(this, m3502s));
        } else {
            this.f35966b.m2663m(m2716b, this.f35965a.m2717a());
        }
    }
}
