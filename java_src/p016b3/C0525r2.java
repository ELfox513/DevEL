package p016b3;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;
@TargetApi(19)
/* renamed from: b3.r2 */
/* loaded from: classes.dex */
public class C0525r2 extends C0521q2 {
    @Override // p016b3.C0521q2, p016b3.C0478g
    /* renamed from: g */
    public final boolean mo26273g(View view) {
        boolean isAttachedToWindow;
        isAttachedToWindow = view.isAttachedToWindow();
        return isAttachedToWindow;
    }

    @Override // p016b3.C0478g
    /* renamed from: j */
    public final ViewGroup.LayoutParams mo26272j() {
        return new ViewGroup.LayoutParams(-1, -1);
    }
}
