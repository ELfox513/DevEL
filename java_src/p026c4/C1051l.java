package p026c4;

import androidx.annotation.RecentlyNonNull;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import net.bytebuddy.asm.Advice;
/* renamed from: c4.l */
/* loaded from: classes.dex */
public class C1051l {

    /* renamed from: a */
    public static final char[] f2957a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b */
    public static final char[] f2958b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', Advice.OffsetMapping.ForOrigin.Renderer.ForDescriptor.SYMBOL, 'e', 'f'};

    @RecentlyNonNull
    /* renamed from: a */
    public static String m24748a(@RecentlyNonNull byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length + length];
        int i = 0;
        for (byte b : bArr) {
            int i2 = b & DefaultClassResolver.NAME;
            int i3 = i + 1;
            char[] cArr2 = f2958b;
            cArr[i] = cArr2[i2 >>> 4];
            i = i3 + 1;
            cArr[i3] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static String m24747b(@RecentlyNonNull byte[] bArr, boolean z) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (int i = 0; i < length && (!z || i != length - 1 || (bArr[i] & DefaultClassResolver.NAME) != 0); i++) {
            char[] cArr = f2957a;
            sb.append(cArr[(bArr[i] & 240) >>> 4]);
            sb.append(cArr[bArr[i] & 15]);
        }
        return sb.toString();
    }

    @RecentlyNonNull
    /* renamed from: c */
    public static byte[] m24746c(@RecentlyNonNull String str) {
        int length = str.length();
        if (length % 2 == 0) {
            byte[] bArr = new byte[length / 2];
            int i = 0;
            while (i < length) {
                int i2 = i + 2;
                bArr[i / 2] = (byte) Integer.parseInt(str.substring(i, i2), 16);
                i = i2;
            }
            return bArr;
        }
        throw new IllegalArgumentException("Hex string has odd number of characters");
    }
}
