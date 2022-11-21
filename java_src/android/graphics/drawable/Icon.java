package android.graphics.drawable;

import android.annotation.NonNull;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final /* synthetic */ class Icon implements Parcelable {
    static {
        throw new NoClassDefFoundError();
    }

    public static native /* synthetic */ Icon createWithBitmap(Bitmap bitmap);

    public static native /* synthetic */ Icon createWithContentUri(String str);

    public static native /* synthetic */ Icon createWithData(byte[] bArr, int i, int i2);

    public static native /* synthetic */ Icon createWithResource(String str, int i);

    public native /* synthetic */ Icon setTintList(ColorStateList colorStateList);

    @NonNull
    public native /* synthetic */ Icon setTintMode(@NonNull PorterDuff.Mode mode);
}
