package p228y3;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import java.util.List;
import net.bytebuddy.jar.asm.Opcodes;
/* renamed from: y3.c */
/* loaded from: classes.dex */
public class C7411c {
    /* renamed from: a */
    public static int m1490a(@RecentlyNonNull Parcel parcel) {
        return m1467x(parcel, 20293);
    }

    /* renamed from: b */
    public static void m1489b(@RecentlyNonNull Parcel parcel, int i) {
        m1466y(parcel, i);
    }

    /* renamed from: c */
    public static void m1488c(@RecentlyNonNull Parcel parcel, int i, boolean z) {
        m1468w(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: i */
    public static void m1482i(@RecentlyNonNull Parcel parcel, int i, float f) {
        m1468w(parcel, i, 4);
        parcel.writeFloat(f);
    }

    /* renamed from: l */
    public static void m1479l(@RecentlyNonNull Parcel parcel, int i, int i2) {
        m1468w(parcel, i, 4);
        parcel.writeInt(i2);
    }

    /* renamed from: n */
    public static void m1477n(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull List<Integer> list, boolean z) {
        if (list == null) {
            if (z) {
                m1468w(parcel, i, 0);
                return;
            }
            return;
        }
        int m1467x = m1467x(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(list.get(i2).intValue());
        }
        m1466y(parcel, m1467x);
    }

    /* renamed from: u */
    public static <T extends Parcelable> void m1470u(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull T[] tArr, int i2, boolean z) {
        if (tArr == null) {
            if (z) {
                m1468w(parcel, i, 0);
                return;
            }
            return;
        }
        int m1467x = m1467x(parcel, i);
        parcel.writeInt(tArr.length);
        for (T t : tArr) {
            if (t == null) {
                parcel.writeInt(0);
            } else {
                m1465z(parcel, t, i2);
            }
        }
        m1466y(parcel, m1467x);
    }

    /* renamed from: v */
    public static <T extends Parcelable> void m1469v(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull List<T> list, boolean z) {
        if (list == null) {
            if (z) {
                m1468w(parcel, i, 0);
                return;
            }
            return;
        }
        int m1467x = m1467x(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            T t = list.get(i2);
            if (t == null) {
                parcel.writeInt(0);
            } else {
                m1465z(parcel, t, 0);
            }
        }
        m1466y(parcel, m1467x);
    }

    /* renamed from: w */
    public static void m1468w(Parcel parcel, int i, int i2) {
        parcel.writeInt(i | (i2 << 16));
    }

    /* renamed from: d */
    public static void m1487d(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull boolean[] zArr, boolean z) {
        if (zArr == null) {
            if (z) {
                m1468w(parcel, i, 0);
                return;
            }
            return;
        }
        int m1467x = m1467x(parcel, i);
        parcel.writeBooleanArray(zArr);
        m1466y(parcel, m1467x);
    }

    /* renamed from: e */
    public static void m1486e(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Boolean bool, boolean z) {
        if (bool == null) {
            if (z) {
                m1468w(parcel, i, 0);
                return;
            }
            return;
        }
        m1468w(parcel, i, 4);
        parcel.writeInt(bool.booleanValue() ? 1 : 0);
    }

    /* renamed from: f */
    public static void m1485f(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Bundle bundle, boolean z) {
        if (bundle == null) {
            if (z) {
                m1468w(parcel, i, 0);
                return;
            }
            return;
        }
        int m1467x = m1467x(parcel, i);
        parcel.writeBundle(bundle);
        m1466y(parcel, m1467x);
    }

    /* renamed from: g */
    public static void m1484g(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull byte[] bArr, boolean z) {
        if (bArr == null) {
            if (z) {
                m1468w(parcel, i, 0);
                return;
            }
            return;
        }
        int m1467x = m1467x(parcel, i);
        parcel.writeByteArray(bArr);
        m1466y(parcel, m1467x);
    }

    /* renamed from: h */
    public static void m1483h(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Double d, boolean z) {
        if (d == null) {
            if (z) {
                m1468w(parcel, i, 0);
                return;
            }
            return;
        }
        m1468w(parcel, i, 8);
        parcel.writeDouble(d.doubleValue());
    }

    /* renamed from: j */
    public static void m1481j(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Float f, boolean z) {
        if (f == null) {
            if (z) {
                m1468w(parcel, i, 0);
                return;
            }
            return;
        }
        m1468w(parcel, i, 4);
        parcel.writeFloat(f.floatValue());
    }

    /* renamed from: k */
    public static void m1480k(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull IBinder iBinder, boolean z) {
        if (iBinder == null) {
            if (z) {
                m1468w(parcel, i, 0);
                return;
            }
            return;
        }
        int m1467x = m1467x(parcel, i);
        parcel.writeStrongBinder(iBinder);
        m1466y(parcel, m1467x);
    }

    /* renamed from: m */
    public static void m1478m(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull int[] iArr, boolean z) {
        if (iArr == null) {
            if (z) {
                m1468w(parcel, i, 0);
                return;
            }
            return;
        }
        int m1467x = m1467x(parcel, i);
        parcel.writeIntArray(iArr);
        m1466y(parcel, m1467x);
    }

    /* renamed from: o */
    public static void m1476o(@RecentlyNonNull Parcel parcel, int i, long j) {
        m1468w(parcel, i, 8);
        parcel.writeLong(j);
    }

    /* renamed from: p */
    public static void m1475p(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Long l, boolean z) {
        if (l == null) {
            if (z) {
                m1468w(parcel, i, 0);
                return;
            }
            return;
        }
        m1468w(parcel, i, 8);
        parcel.writeLong(l.longValue());
    }

    /* renamed from: q */
    public static void m1474q(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Parcelable parcelable, int i2, boolean z) {
        if (parcelable == null) {
            if (z) {
                m1468w(parcel, i, 0);
                return;
            }
            return;
        }
        int m1467x = m1467x(parcel, i);
        parcelable.writeToParcel(parcel, i2);
        m1466y(parcel, m1467x);
    }

    /* renamed from: r */
    public static void m1473r(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull String str, boolean z) {
        if (str == null) {
            if (z) {
                m1468w(parcel, i, 0);
                return;
            }
            return;
        }
        int m1467x = m1467x(parcel, i);
        parcel.writeString(str);
        m1466y(parcel, m1467x);
    }

    /* renamed from: s */
    public static void m1472s(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull String[] strArr, boolean z) {
        if (strArr == null) {
            if (z) {
                m1468w(parcel, i, 0);
                return;
            }
            return;
        }
        int m1467x = m1467x(parcel, i);
        parcel.writeStringArray(strArr);
        m1466y(parcel, m1467x);
    }

    /* renamed from: t */
    public static void m1471t(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull List<String> list, boolean z) {
        if (list == null) {
            if (z) {
                m1468w(parcel, i, 0);
                return;
            }
            return;
        }
        int m1467x = m1467x(parcel, i);
        parcel.writeStringList(list);
        m1466y(parcel, m1467x);
    }

    /* renamed from: x */
    public static int m1467x(Parcel parcel, int i) {
        parcel.writeInt(i | Opcodes.V_PREVIEW);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    /* renamed from: y */
    public static void m1466y(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }

    /* renamed from: z */
    public static <T extends Parcelable> void m1465z(Parcel parcel, T t, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int dataPosition2 = parcel.dataPosition();
        t.writeToParcel(parcel, i);
        int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }
}
