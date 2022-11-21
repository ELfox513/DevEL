package p091j;

import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
/* renamed from: j.k */
/* loaded from: classes.dex */
public class C4202k {
    /* renamed from: a */
    public static InputConnection m17108a(InputConnection inputConnection, EditorInfo editorInfo, View view) {
        if (inputConnection != null && editorInfo.hintText == null) {
            ViewParent parent = view.getParent();
            while (true) {
                if (!(parent instanceof View)) {
                    break;
                } else if (parent instanceof InterfaceC4158a2) {
                    editorInfo.hintText = ((InterfaceC4158a2) parent).m17255a();
                    break;
                } else {
                    parent = parent.getParent();
                }
            }
        }
        return inputConnection;
    }
}
