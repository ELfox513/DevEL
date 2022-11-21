package p091j;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import p021c.C1008a;
/* renamed from: j.s */
/* loaded from: classes.dex */
public class C4230s extends RatingBar {

    /* renamed from: a */
    public final C4224q f18014a;

    public C4230s(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1008a.f2498F);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        Bitmap m17023b = this.f18014a.m17023b();
        if (m17023b != null) {
            setMeasuredDimension(View.resolveSizeAndState(m17023b.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
        }
    }

    public C4230s(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C4220o1.m17033a(this, getContext());
        C4224q c4224q = new C4224q(this);
        this.f18014a = c4224q;
        c4224q.mo16964c(attributeSet, i);
    }
}
