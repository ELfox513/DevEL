package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.appcompat.widget.InterfaceC0225b;
/* loaded from: classes.dex */
public class FitWindowsFrameLayout extends FrameLayout implements InterfaceC0225b {

    /* renamed from: a */
    public InterfaceC0225b.InterfaceC0226a f615a;

    public FitWindowsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.appcompat.widget.InterfaceC0225b
    public void setOnFitSystemWindowsListener(InterfaceC0225b.InterfaceC0226a interfaceC0226a) {
        this.f615a = interfaceC0226a;
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        InterfaceC0225b.InterfaceC0226a interfaceC0226a = this.f615a;
        if (interfaceC0226a != null) {
            interfaceC0226a.mo19592a(rect);
        }
        return super.fitSystemWindows(rect);
    }
}
