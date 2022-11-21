package p168r4;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* renamed from: r4.yr0 */
/* loaded from: classes2.dex */
public final class yr0 implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ JsPromptResult f34187a;

    public yr0(JsPromptResult jsPromptResult) {
        this.f34187a = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f34187a.cancel();
    }
}
