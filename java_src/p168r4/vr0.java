package p168r4;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* renamed from: r4.vr0 */
/* loaded from: classes2.dex */
public final class vr0 implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ JsResult f32784a;

    public vr0(JsResult jsResult) {
        this.f32784a = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f32784a.cancel();
    }
}
