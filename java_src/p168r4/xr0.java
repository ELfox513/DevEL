package p168r4;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* renamed from: r4.xr0 */
/* loaded from: classes2.dex */
public final class xr0 implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    public final /* synthetic */ JsPromptResult f33701a;

    public xr0(JsPromptResult jsPromptResult) {
        this.f33701a = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f33701a.cancel();
    }
}
