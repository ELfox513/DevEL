package p056f0;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
/* renamed from: f0.m */
/* loaded from: classes.dex */
public class C3445m {
    /* renamed from: a */
    public static ColorStateList m18829a(ImageView imageView) {
        ColorStateList imageTintList;
        if (Build.VERSION.SDK_INT >= 21) {
            imageTintList = imageView.getImageTintList();
            return imageTintList;
        } else if (imageView instanceof InterfaceC3442j0) {
            return ((InterfaceC3442j0) imageView).getSupportImageTintList();
        } else {
            return null;
        }
    }

    /* renamed from: b */
    public static PorterDuff.Mode m18828b(ImageView imageView) {
        PorterDuff.Mode imageTintMode;
        if (Build.VERSION.SDK_INT >= 21) {
            imageTintMode = imageView.getImageTintMode();
            return imageTintMode;
        } else if (imageView instanceof InterfaceC3442j0) {
            return ((InterfaceC3442j0) imageView).getSupportImageTintMode();
        } else {
            return null;
        }
    }

    /* renamed from: c */
    public static void m18827c(ImageView imageView, ColorStateList colorStateList) {
        Drawable drawable;
        ColorStateList imageTintList;
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            imageView.setImageTintList(colorStateList);
            if (i == 21 && (drawable = imageView.getDrawable()) != null) {
                imageTintList = imageView.getImageTintList();
                if (imageTintList != null) {
                    if (drawable.isStateful()) {
                        drawable.setState(imageView.getDrawableState());
                    }
                    imageView.setImageDrawable(drawable);
                }
            }
        } else if (imageView instanceof InterfaceC3442j0) {
            ((InterfaceC3442j0) imageView).setSupportImageTintList(colorStateList);
        }
    }

    /* renamed from: d */
    public static void m18826d(ImageView imageView, PorterDuff.Mode mode) {
        Drawable drawable;
        ColorStateList imageTintList;
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            imageView.setImageTintMode(mode);
            if (i == 21 && (drawable = imageView.getDrawable()) != null) {
                imageTintList = imageView.getImageTintList();
                if (imageTintList != null) {
                    if (drawable.isStateful()) {
                        drawable.setState(imageView.getDrawableState());
                    }
                    imageView.setImageDrawable(drawable);
                }
            }
        } else if (imageView instanceof InterfaceC3442j0) {
            ((InterfaceC3442j0) imageView).setSupportImageTintMode(mode);
        }
    }
}
