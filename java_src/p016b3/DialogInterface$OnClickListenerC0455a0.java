package p016b3;

import android.content.DialogInterface;
import android.net.Uri;
import p235z2.C7601t;
/* renamed from: b3.a0 */
/* loaded from: classes.dex */
public final class DialogInterface$OnClickListenerC0455a0 implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ RunnableC0459b0 f1545a;

    public DialogInterface$OnClickListenerC0455a0(RunnableC0459b0 runnableC0459b0) {
        this.f1545a = runnableC0459b0;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        C7601t.m939d();
        C0497k2.m26298x(this.f1545a.f1547a, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
