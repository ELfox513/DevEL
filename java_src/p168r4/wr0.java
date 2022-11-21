package p168r4;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* renamed from: r4.wr0 */
/* loaded from: classes2.dex */
public final class wr0 implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ JsResult f33301a;

    public wr0(JsResult jsResult) {
        this.f33301a = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f33301a.confirm();
    }
}
