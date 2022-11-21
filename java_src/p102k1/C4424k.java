package p102k1;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import p111l1.InterfaceC4555b;
import p111l1.InterfaceC4556c;
/* renamed from: k1.k */
/* loaded from: classes.dex */
public final class C4424k {
    /* renamed from: a */
    public static int m16559a(InterfaceC4555b interfaceC4555b, int i) {
        int i2 = 0;
        for (int i3 = i; i3 >= 0; i3--) {
            i2 = (i2 >>> 8) | ((interfaceC4555b.readByte() & DefaultClassResolver.NAME) << 24);
        }
        return i2 >> ((3 - i) * 8);
    }

    /* renamed from: b */
    public static long m16558b(InterfaceC4555b interfaceC4555b, int i) {
        long j = 0;
        for (int i2 = i; i2 >= 0; i2--) {
            j = (j >>> 8) | ((interfaceC4555b.readByte() & 255) << 56);
        }
        return j >> ((7 - i) * 8);
    }

    /* renamed from: c */
    public static int m16557c(InterfaceC4555b interfaceC4555b, int i, boolean z) {
        int i2 = 0;
        if (!z) {
            for (int i3 = i; i3 >= 0; i3--) {
                i2 = (i2 >>> 8) | ((interfaceC4555b.readByte() & DefaultClassResolver.NAME) << 24);
            }
            return i2 >>> ((3 - i) * 8);
        }
        while (i >= 0) {
            i2 = ((interfaceC4555b.readByte() & DefaultClassResolver.NAME) << 24) | (i2 >>> 8);
            i--;
        }
        return i2;
    }

    /* renamed from: d */
    public static long m16556d(InterfaceC4555b interfaceC4555b, int i, boolean z) {
        long j = 0;
        if (!z) {
            for (int i2 = i; i2 >= 0; i2--) {
                j = (j >>> 8) | ((interfaceC4555b.readByte() & 255) << 56);
            }
            return j >>> ((7 - i) * 8);
        }
        while (i >= 0) {
            j = (j >>> 8) | ((interfaceC4555b.readByte() & 255) << 56);
            i--;
        }
        return j;
    }

    /* renamed from: f */
    public static void m16554f(InterfaceC4556c interfaceC4556c, int i, long j) {
        int numberOfLeadingZeros = ((65 - Long.numberOfLeadingZeros((j >> 63) ^ j)) + 7) >> 3;
        interfaceC4556c.writeByte(i | ((numberOfLeadingZeros - 1) << 5));
        while (numberOfLeadingZeros > 0) {
            interfaceC4556c.writeByte((byte) j);
            j >>= 8;
            numberOfLeadingZeros--;
        }
    }

    /* renamed from: e */
    public static void m16555e(InterfaceC4556c interfaceC4556c, int i, long j) {
        int numberOfTrailingZeros = 64 - Long.numberOfTrailingZeros(j);
        if (numberOfTrailingZeros == 0) {
            numberOfTrailingZeros = 1;
        }
        int i2 = (numberOfTrailingZeros + 7) >> 3;
        long j2 = j >> (64 - (i2 * 8));
        interfaceC4556c.writeByte(i | ((i2 - 1) << 5));
        while (i2 > 0) {
            interfaceC4556c.writeByte((byte) j2);
            j2 >>= 8;
            i2--;
        }
    }

    /* renamed from: g */
    public static void m16553g(InterfaceC4556c interfaceC4556c, int i, long j) {
        int numberOfLeadingZeros = 64 - Long.numberOfLeadingZeros(j);
        if (numberOfLeadingZeros == 0) {
            numberOfLeadingZeros = 1;
        }
        int i2 = (numberOfLeadingZeros + 7) >> 3;
        interfaceC4556c.writeByte(i | ((i2 - 1) << 5));
        while (i2 > 0) {
            interfaceC4556c.writeByte((byte) j);
            j >>= 8;
            i2--;
        }
    }
}
