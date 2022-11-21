package p228y3;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import java.util.ArrayList;
import net.bytebuddy.jar.asm.Opcodes;
/* renamed from: y3.b */
/* loaded from: classes.dex */
public class C7409b {

    /* renamed from: y3.b$a */
    /* loaded from: classes.dex */
    public static class C7410a extends RuntimeException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C7410a(@androidx.annotation.RecentlyNonNull java.lang.String r4, @androidx.annotation.RecentlyNonNull android.os.Parcel r5) {
            /*
                r3 = this;
                int r0 = r5.dataPosition()
                int r5 = r5.dataSize()
                java.lang.String r1 = java.lang.String.valueOf(r4)
                int r1 = r1.length()
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                int r1 = r1 + 41
                r2.<init>(r1)
                r2.append(r4)
                java.lang.String r4 = " Parcel: pos="
                r2.append(r4)
                r2.append(r0)
                java.lang.String r4 = " size="
                r2.append(r4)
                r2.append(r5)
                java.lang.String r4 = r2.toString()
                r3.<init>(r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p228y3.C7409b.C7410a.<init>(java.lang.String, android.os.Parcel):void");
        }
    }

    /* renamed from: B */
    public static void m1517B(Parcel parcel, int i, int i2, int i3) {
        if (i2 == i3) {
            return;
        }
        String hexString = Integer.toHexString(i2);
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
        sb.append("Expected size ");
        sb.append(i3);
        sb.append(" got ");
        sb.append(i2);
        sb.append(" (0x");
        sb.append(hexString);
        sb.append(")");
        throw new C7410a(sb.toString(), parcel);
    }

    /* renamed from: m */
    public static int m1504m(int i) {
        return (char) i;
    }

    /* renamed from: n */
    public static boolean m1503n(@RecentlyNonNull Parcel parcel, int i) {
        m1518A(parcel, i, 4);
        if (parcel.readInt() != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: q */
    public static float m1500q(@RecentlyNonNull Parcel parcel, int i) {
        m1518A(parcel, i, 4);
        return parcel.readFloat();
    }

    /* renamed from: s */
    public static int m1498s(@RecentlyNonNull Parcel parcel) {
        return parcel.readInt();
    }

    /* renamed from: u */
    public static int m1496u(@RecentlyNonNull Parcel parcel, int i) {
        m1518A(parcel, i, 4);
        return parcel.readInt();
    }

    /* renamed from: x */
    public static int m1493x(@RecentlyNonNull Parcel parcel, int i) {
        return (i & Opcodes.V_PREVIEW) != -65536 ? (char) (i >> 16) : parcel.readInt();
    }

    /* renamed from: v */
    public static long m1495v(@RecentlyNonNull Parcel parcel, int i) {
        m1518A(parcel, i, 8);
        return parcel.readLong();
    }

    /* renamed from: A */
    public static void m1518A(Parcel parcel, int i, int i2) {
        int m1493x = m1493x(parcel, i);
        if (m1493x == i2) {
            return;
        }
        String hexString = Integer.toHexString(m1493x);
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
        sb.append("Expected size ");
        sb.append(i2);
        sb.append(" got ");
        sb.append(m1493x);
        sb.append(" (0x");
        sb.append(hexString);
        sb.append(")");
        throw new C7410a(sb.toString(), parcel);
    }

    @RecentlyNonNull
    /* renamed from: a */
    public static boolean[] m1516a(@RecentlyNonNull Parcel parcel, int i) {
        int m1493x = m1493x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m1493x == 0) {
            return null;
        }
        boolean[] createBooleanArray = parcel.createBooleanArray();
        parcel.setDataPosition(dataPosition + m1493x);
        return createBooleanArray;
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static Bundle m1515b(@RecentlyNonNull Parcel parcel, int i) {
        int m1493x = m1493x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m1493x == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + m1493x);
        return readBundle;
    }

    @RecentlyNonNull
    /* renamed from: c */
    public static byte[] m1514c(@RecentlyNonNull Parcel parcel, int i) {
        int m1493x = m1493x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m1493x == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + m1493x);
        return createByteArray;
    }

    @RecentlyNonNull
    /* renamed from: d */
    public static int[] m1513d(@RecentlyNonNull Parcel parcel, int i) {
        int m1493x = m1493x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m1493x == 0) {
            return null;
        }
        int[] createIntArray = parcel.createIntArray();
        parcel.setDataPosition(dataPosition + m1493x);
        return createIntArray;
    }

    @RecentlyNonNull
    /* renamed from: e */
    public static ArrayList<Integer> m1512e(@RecentlyNonNull Parcel parcel, int i) {
        int m1493x = m1493x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m1493x == 0) {
            return null;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(Integer.valueOf(parcel.readInt()));
        }
        parcel.setDataPosition(dataPosition + m1493x);
        return arrayList;
    }

    @RecentlyNonNull
    /* renamed from: f */
    public static <T extends Parcelable> T m1511f(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Parcelable.Creator<T> creator) {
        int m1493x = m1493x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m1493x == 0) {
            return null;
        }
        T createFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + m1493x);
        return createFromParcel;
    }

    @RecentlyNonNull
    /* renamed from: g */
    public static String m1510g(@RecentlyNonNull Parcel parcel, int i) {
        int m1493x = m1493x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m1493x == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + m1493x);
        return readString;
    }

    @RecentlyNonNull
    /* renamed from: h */
    public static String[] m1509h(@RecentlyNonNull Parcel parcel, int i) {
        int m1493x = m1493x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m1493x == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(dataPosition + m1493x);
        return createStringArray;
    }

    @RecentlyNonNull
    /* renamed from: i */
    public static ArrayList<String> m1508i(@RecentlyNonNull Parcel parcel, int i) {
        int m1493x = m1493x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m1493x == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(dataPosition + m1493x);
        return createStringArrayList;
    }

    @RecentlyNonNull
    /* renamed from: j */
    public static <T> T[] m1507j(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Parcelable.Creator<T> creator) {
        int m1493x = m1493x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m1493x == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + m1493x);
        return tArr;
    }

    @RecentlyNonNull
    /* renamed from: k */
    public static <T> ArrayList<T> m1506k(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Parcelable.Creator<T> creator) {
        int m1493x = m1493x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m1493x == 0) {
            return null;
        }
        ArrayList<T> createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(dataPosition + m1493x);
        return createTypedArrayList;
    }

    /* renamed from: l */
    public static void m1505l(@RecentlyNonNull Parcel parcel, int i) {
        if (parcel.dataPosition() == i) {
            return;
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(i);
        throw new C7410a(sb.toString(), parcel);
    }

    @RecentlyNonNull
    /* renamed from: o */
    public static Boolean m1502o(@RecentlyNonNull Parcel parcel, int i) {
        boolean z;
        int m1493x = m1493x(parcel, i);
        if (m1493x == 0) {
            return null;
        }
        m1517B(parcel, i, m1493x, 4);
        if (parcel.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    @RecentlyNonNull
    /* renamed from: p */
    public static Double m1501p(@RecentlyNonNull Parcel parcel, int i) {
        int m1493x = m1493x(parcel, i);
        if (m1493x == 0) {
            return null;
        }
        m1517B(parcel, i, m1493x, 8);
        return Double.valueOf(parcel.readDouble());
    }

    @RecentlyNonNull
    /* renamed from: r */
    public static Float m1499r(@RecentlyNonNull Parcel parcel, int i) {
        int m1493x = m1493x(parcel, i);
        if (m1493x == 0) {
            return null;
        }
        m1517B(parcel, i, m1493x, 4);
        return Float.valueOf(parcel.readFloat());
    }

    @RecentlyNonNull
    /* renamed from: t */
    public static IBinder m1497t(@RecentlyNonNull Parcel parcel, int i) {
        int m1493x = m1493x(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m1493x == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + m1493x);
        return readStrongBinder;
    }

    @RecentlyNonNull
    /* renamed from: w */
    public static Long m1494w(@RecentlyNonNull Parcel parcel, int i) {
        int m1493x = m1493x(parcel, i);
        if (m1493x == 0) {
            return null;
        }
        m1517B(parcel, i, m1493x, 8);
        return Long.valueOf(parcel.readLong());
    }

    /* renamed from: y */
    public static void m1492y(@RecentlyNonNull Parcel parcel, int i) {
        parcel.setDataPosition(parcel.dataPosition() + m1493x(parcel, i));
    }

    /* renamed from: z */
    public static int m1491z(@RecentlyNonNull Parcel parcel) {
        String str;
        int m1498s = m1498s(parcel);
        int m1493x = m1493x(parcel, m1498s);
        int dataPosition = parcel.dataPosition();
        if (m1504m(m1498s) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(m1498s));
            if (valueOf.length() != 0) {
                str = "Expected object header. Got 0x".concat(valueOf);
            } else {
                str = new String("Expected object header. Got 0x");
            }
            throw new C7410a(str, parcel);
        }
        int i = m1493x + dataPosition;
        if (i >= dataPosition && i <= parcel.dataSize()) {
            return i;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append("Size read is invalid start=");
        sb.append(dataPosition);
        sb.append(" end=");
        sb.append(i);
        throw new C7410a(sb.toString(), parcel);
    }
}
