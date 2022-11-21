package p026c4;

import androidx.annotation.RecentlyNonNull;
import java.lang.reflect.Array;
import java.util.Arrays;
import p220x3.C7289o;
/* renamed from: c4.b */
/* loaded from: classes.dex */
public final class C1041b {
    @RecentlyNonNull
    /* renamed from: a */
    public static <T> T[] m24779a(@RecentlyNonNull T[]... tArr) {
        if (tArr.length != 0) {
            int i = 0;
            for (T[] tArr2 : tArr) {
                i += tArr2.length;
            }
            T[] tArr3 = (T[]) Arrays.copyOf(tArr[0], i);
            int length = tArr[0].length;
            for (int i2 = 1; i2 < tArr.length; i2++) {
                T[] tArr4 = tArr[i2];
                int length2 = tArr4.length;
                System.arraycopy(tArr4, 0, tArr3, length, length2);
                length += length2;
            }
            return tArr3;
        }
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass(), 0));
    }

    /* renamed from: b */
    public static boolean m24778b(@RecentlyNonNull int[] iArr, int i) {
        if (iArr == null) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public static <T> boolean m24777c(@RecentlyNonNull T[] tArr, @RecentlyNonNull T t) {
        int length = tArr != null ? tArr.length : 0;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            } else if (!C7289o.m1908a(tArr[i], t)) {
                i++;
            } else if (i >= 0) {
                return true;
            }
        }
        return false;
    }
}
