package p168r4;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;
/* renamed from: r4.zr0 */
/* loaded from: classes2.dex */
public final class zr0 implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ JsPromptResult f34710a;

    /* renamed from: b */
    public final /* synthetic */ EditText f34711b;

    public zr0(JsPromptResult jsPromptResult, EditText editText) {
        this.f34710a = jsPromptResult;
        this.f34711b = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f34710a.confirm(this.f34711b.getText().toString());
    }
}
