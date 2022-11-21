package p168r4;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import java.util.ArrayList;
import p016b3.C0547y;
/* renamed from: r4.up1 */
/* loaded from: classes2.dex */
public final class up1 extends FrameLayout {

    /* renamed from: a */
    public final C0547y f32351a;

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f32351a.m26248a(motionEvent);
        return false;
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt != null && (childAt instanceof cs0)) {
                arrayList.add((cs0) childAt);
            }
        }
        super.removeAllViews();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((cs0) arrayList.get(i2)).destroy();
        }
    }

    public up1(Context context, View view, C0547y c0547y) {
        super(context);
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(view);
        this.f32351a = c0547y;
    }
}
