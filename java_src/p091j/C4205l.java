package p091j;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;
import p021c.C1008a;
import p038d0.InterfaceC3265z;
import p056f0.InterfaceC3442j0;
/* renamed from: j.l */
/* loaded from: classes.dex */
public class C4205l extends ImageButton implements InterfaceC3265z, InterfaceC3442j0 {

    /* renamed from: a */
    public final C4172d f17934a;

    /* renamed from: b */
    public final C4208m f17935b;

    public C4205l(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1008a.f2494B);
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.f17935b.m17100e() && super.hasOverlappingRendering();
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.f17935b.m17098g(i);
    }

    public C4205l(Context context, AttributeSet attributeSet, int i) {
        super(C4226q1.m17018b(context), attributeSet, i);
        C4220o1.m17033a(this, getContext());
        C4172d c4172d = new C4172d(this);
        this.f17934a = c4172d;
        c4172d.m17218e(attributeSet, i);
        C4208m c4208m = new C4208m(this);
        this.f17935b = c4208m;
        c4208m.m17099f(attributeSet, i);
    }

    @Override // p038d0.InterfaceC3265z
    public ColorStateList getSupportBackgroundTintList() {
        C4172d c4172d = this.f17934a;
        if (c4172d != null) {
            return c4172d.m17220c();
        }
        return null;
    }

    @Override // p038d0.InterfaceC3265z
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C4172d c4172d = this.f17934a;
        if (c4172d != null) {
            return c4172d.m17219d();
        }
        return null;
    }

    @Override // p056f0.InterfaceC3442j0
    public ColorStateList getSupportImageTintList() {
        C4208m c4208m = this.f17935b;
        if (c4208m != null) {
            return c4208m.m17102c();
        }
        return null;
    }

    @Override // p056f0.InterfaceC3442j0
    public PorterDuff.Mode getSupportImageTintMode() {
        C4208m c4208m = this.f17935b;
        if (c4208m != null) {
            return c4208m.m17101d();
        }
        return null;
    }

    @Override // p038d0.InterfaceC3265z
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C4172d c4172d = this.f17934a;
        if (c4172d != null) {
            c4172d.m17214i(colorStateList);
        }
    }

    @Override // p038d0.InterfaceC3265z
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C4172d c4172d = this.f17934a;
        if (c4172d != null) {
            c4172d.m17213j(mode);
        }
    }

    @Override // p056f0.InterfaceC3442j0
    public void setSupportImageTintList(ColorStateList colorStateList) {
        C4208m c4208m = this.f17935b;
        if (c4208m != null) {
            c4208m.m17097h(colorStateList);
        }
    }

    @Override // p056f0.InterfaceC3442j0
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        C4208m c4208m = this.f17935b;
        if (c4208m != null) {
            c4208m.m17096i(mode);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C4172d c4172d = this.f17934a;
        if (c4172d != null) {
            c4172d.m17221b();
        }
        C4208m c4208m = this.f17935b;
        if (c4208m != null) {
            c4208m.m17103b();
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C4172d c4172d = this.f17934a;
        if (c4172d != null) {
            c4172d.m17217f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C4172d c4172d = this.f17934a;
        if (c4172d != null) {
            c4172d.m17216g(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        C4208m c4208m = this.f17935b;
        if (c4208m != null) {
            c4208m.m17103b();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        C4208m c4208m = this.f17935b;
        if (c4208m != null) {
            c4208m.m17103b();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        C4208m c4208m = this.f17935b;
        if (c4208m != null) {
            c4208m.m17103b();
        }
    }
}
