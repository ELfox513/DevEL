package p168r4;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* renamed from: r4.ur0 */
/* loaded from: classes2.dex */
public final class ur0 implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    public final /* synthetic */ JsResult f32355a;

    public ur0(JsResult jsResult) {
        this.f32355a = jsResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f32355a.cancel();
    }
}
