package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import p200v0.AbstractC6966a;
/* loaded from: classes.dex */
public class IconCompatParcelizer {
    public static void write(IconCompat iconCompat, AbstractC6966a abstractC6966a) {
        abstractC6966a.m2853x(true, true);
        iconCompat.m27210m(abstractC6966a.m2863f());
        int i = iconCompat.f845a;
        if (-1 != i) {
            abstractC6966a.m2873F(i, 1);
        }
        byte[] bArr = iconCompat.f847c;
        if (bArr != null) {
            abstractC6966a.m2875B(bArr, 2);
        }
        Parcelable parcelable = iconCompat.f848d;
        if (parcelable != null) {
            abstractC6966a.m2872H(parcelable, 3);
        }
        int i2 = iconCompat.f849e;
        if (i2 != 0) {
            abstractC6966a.m2873F(i2, 4);
        }
        int i3 = iconCompat.f850f;
        if (i3 != 0) {
            abstractC6966a.m2873F(i3, 5);
        }
        ColorStateList colorStateList = iconCompat.f851g;
        if (colorStateList != null) {
            abstractC6966a.m2872H(colorStateList, 6);
        }
        String str = iconCompat.f853i;
        if (str != null) {
            abstractC6966a.m2871J(str, 7);
        }
        String str2 = iconCompat.f854j;
        if (str2 != null) {
            abstractC6966a.m2871J(str2, 8);
        }
    }

    public static IconCompat read(AbstractC6966a abstractC6966a) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f845a = abstractC6966a.m2858p(iconCompat.f845a, 1);
        iconCompat.f847c = abstractC6966a.m2861j(iconCompat.f847c, 2);
        iconCompat.f848d = abstractC6966a.m2857r(iconCompat.f848d, 3);
        iconCompat.f849e = abstractC6966a.m2858p(iconCompat.f849e, 4);
        iconCompat.f850f = abstractC6966a.m2858p(iconCompat.f850f, 5);
        iconCompat.f851g = (ColorStateList) abstractC6966a.m2857r(iconCompat.f851g, 6);
        iconCompat.f853i = abstractC6966a.m2856t(iconCompat.f853i, 7);
        iconCompat.f854j = abstractC6966a.m2856t(iconCompat.f854j, 8);
        iconCompat.m27211l();
        return iconCompat;
    }
}
