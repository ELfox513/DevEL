package p091j;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import p208w.InterfaceC7097r;
/* renamed from: j.q */
/* loaded from: classes.dex */
public class C4224q {

    /* renamed from: c */
    public static final int[] f17999c = {16843067, 16843068};

    /* renamed from: a */
    public final ProgressBar f18000a;

    /* renamed from: b */
    public Bitmap f18001b;

    /* renamed from: b */
    public Bitmap m17023b() {
        return this.f18001b;
    }

    /* renamed from: a */
    public final Shape m17024a() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }

    /* renamed from: c */
    public void mo16964c(AttributeSet attributeSet, int i) {
        C4235t1 m16966u = C4235t1.m16966u(this.f18000a.getContext(), attributeSet, f17999c, i, 0);
        Drawable m16980g = m16966u.m16980g(0);
        if (m16980g != null) {
            this.f18000a.setIndeterminateDrawable(m17021e(m16980g));
        }
        Drawable m16980g2 = m16966u.m16980g(1);
        if (m16980g2 != null) {
            this.f18000a.setProgressDrawable(m17022d(m16980g2, false));
        }
        m16966u.m16965v();
    }

    /* renamed from: d */
    public final Drawable m17022d(Drawable drawable, boolean z) {
        boolean z2;
        if (drawable instanceof InterfaceC7097r) {
            InterfaceC7097r interfaceC7097r = (InterfaceC7097r) drawable;
            Drawable mo2533b = interfaceC7097r.mo2533b();
            if (mo2533b != null) {
                interfaceC7097r.mo2534a(m17022d(mo2533b, z));
            }
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i = 0; i < numberOfLayers; i++) {
                int id = layerDrawable.getId(i);
                Drawable drawable2 = layerDrawable.getDrawable(i);
                if (id != 16908301 && id != 16908303) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                drawableArr[i] = m17022d(drawable2, z2);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                layerDrawable2.setId(i2, layerDrawable.getId(i2));
            }
            return layerDrawable2;
        } else if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (this.f18001b == null) {
                this.f18001b = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(m17024a());
            shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
            shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
            if (z) {
                return new ClipDrawable(shapeDrawable, 3, 1);
            }
            return shapeDrawable;
        }
        return drawable;
    }

    /* renamed from: e */
    public final Drawable m17021e(Drawable drawable) {
        if (drawable instanceof AnimationDrawable) {
            AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            AnimationDrawable animationDrawable2 = new AnimationDrawable();
            animationDrawable2.setOneShot(animationDrawable.isOneShot());
            for (int i = 0; i < numberOfFrames; i++) {
                Drawable m17022d = m17022d(animationDrawable.getFrame(i), true);
                m17022d.setLevel(10000);
                animationDrawable2.addFrame(m17022d, animationDrawable.getDuration(i));
            }
            animationDrawable2.setLevel(10000);
            return animationDrawable2;
        }
        return drawable;
    }

    public C4224q(ProgressBar progressBar) {
        this.f18000a = progressBar;
    }
}
