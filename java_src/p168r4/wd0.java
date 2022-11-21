package p168r4;

import android.content.DialogInterface;
/* renamed from: r4.wd0 */
/* loaded from: classes2.dex */
public final class wd0 implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ xd0 f33177a;

    public wd0(xd0 xd0Var) {
        this.f33177a = xd0Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f33177a.m11557b("Operation denied by user.");
    }
}
