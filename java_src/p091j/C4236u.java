package p091j;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import p021c.C1017j;
import p038d0.C3218s0;
import p208w.C7089j;
/* renamed from: j.u */
/* loaded from: classes.dex */
public class C4236u extends C4224q {

    /* renamed from: d */
    public final SeekBar f18020d;

    /* renamed from: e */
    public Drawable f18021e;

    /* renamed from: f */
    public ColorStateList f18022f;

    /* renamed from: g */
    public PorterDuff.Mode f18023g;

    /* renamed from: h */
    public boolean f18024h;

    /* renamed from: i */
    public boolean f18025i;

    /* renamed from: f */
    public final void m16963f() {
        Drawable drawable = this.f18021e;
        if (drawable != null) {
            if (this.f18024h || this.f18025i) {
                Drawable m2541p = C7089j.m2541p(drawable.mutate());
                this.f18021e = m2541p;
                if (this.f18024h) {
                    C7089j.m2543n(m2541p, this.f18022f);
                }
                if (this.f18025i) {
                    C7089j.m2542o(this.f18021e, this.f18023g);
                }
                if (this.f18021e.isStateful()) {
                    this.f18021e.setState(this.f18020d.getDrawableState());
                }
            }
        }
    }

    /* renamed from: g */
    public void m16962g(Canvas canvas) {
        int i;
        if (this.f18021e != null) {
            int max = this.f18020d.getMax();
            int i2 = 1;
            if (max > 1) {
                int intrinsicWidth = this.f18021e.getIntrinsicWidth();
                int intrinsicHeight = this.f18021e.getIntrinsicHeight();
                if (intrinsicWidth >= 0) {
                    i = intrinsicWidth / 2;
                } else {
                    i = 1;
                }
                if (intrinsicHeight >= 0) {
                    i2 = intrinsicHeight / 2;
                }
                this.f18021e.setBounds(-i, -i2, i, i2);
                float width = ((this.f18020d.getWidth() - this.f18020d.getPaddingLeft()) - this.f18020d.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(this.f18020d.getPaddingLeft(), this.f18020d.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.f18021e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }

    /* renamed from: h */
    public void m16961h() {
        Drawable drawable = this.f18021e;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f18020d.getDrawableState())) {
            this.f18020d.invalidateDrawable(drawable);
        }
    }

    /* renamed from: i */
    public void m16960i() {
        Drawable drawable = this.f18021e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    /* renamed from: j */
    public void m16959j(Drawable drawable) {
        Drawable drawable2 = this.f18021e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f18021e = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f18020d);
            C7089j.m2545l(drawable, C3218s0.m19338n(this.f18020d));
            if (drawable.isStateful()) {
                drawable.setState(this.f18020d.getDrawableState());
            }
            m16963f();
        }
        this.f18020d.invalidate();
    }

    public C4236u(SeekBar seekBar) {
        super(seekBar);
        this.f18022f = null;
        this.f18023g = null;
        this.f18024h = false;
        this.f18025i = false;
        this.f18020d = seekBar;
    }

    @Override // p091j.C4224q
    /* renamed from: c */
    public void mo16964c(AttributeSet attributeSet, int i) {
        super.mo16964c(attributeSet, i);
        Context context = this.f18020d.getContext();
        int[] iArr = C1017j.f2771V;
        C4235t1 m16966u = C4235t1.m16966u(context, attributeSet, iArr, i, 0);
        SeekBar seekBar = this.f18020d;
        C3218s0.m19365F(seekBar, seekBar.getContext(), iArr, attributeSet, m16966u.m16970q(), i, 0);
        Drawable m16980g = m16966u.m16980g(C1017j.f2775W);
        if (m16980g != null) {
            this.f18020d.setThumb(m16980g);
        }
        m16959j(m16966u.m16981f(C1017j.f2779X));
        int i2 = C1017j.f2787Z;
        if (m16966u.m16969r(i2)) {
            this.f18023g = C4237u0.m16955d(m16966u.m16977j(i2, -1), this.f18023g);
            this.f18025i = true;
        }
        int i3 = C1017j.f2783Y;
        if (m16966u.m16969r(i3)) {
            this.f18022f = m16966u.m16984c(i3);
            this.f18024h = true;
        }
        m16966u.m16965v();
        m16963f();
    }
}
