package p168r4;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import p016b3.C0497k2;
import p235z2.C7601t;
/* renamed from: r4.vd0 */
/* loaded from: classes2.dex */
public final class vd0 implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ xd0 f32695a;

    public vd0(xd0 xd0Var) {
        this.f32695a = xd0Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        Intent m5366j = this.f32695a.m5366j();
        C7601t.m939d();
        context = this.f32695a.f33559d;
        C0497k2.m26306p(context, m5366j);
    }
}
