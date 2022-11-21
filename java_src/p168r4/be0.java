package p168r4;

import android.content.DialogInterface;
/* renamed from: r4.be0 */
/* loaded from: classes2.dex */
public final class be0 implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ ce0 f21021a;

    public be0(ce0 ce0Var) {
        this.f21021a = ce0Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f21021a.m11557b("User canceled the download.");
    }
}
