package p091j;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.SeekBar;
import p021c.C1008a;
/* renamed from: j.t */
/* loaded from: classes.dex */
public class C4233t extends SeekBar {

    /* renamed from: a */
    public final C4236u f18016a;

    public C4233t(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1008a.f2500H);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f18016a.m16962g(canvas);
    }

    public C4233t(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C4220o1.m17033a(this, getContext());
        C4236u c4236u = new C4236u(this);
        this.f18016a = c4236u;
        c4236u.mo16964c(attributeSet, i);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        this.f18016a.m16961h();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.f18016a.m16960i();
    }
}
