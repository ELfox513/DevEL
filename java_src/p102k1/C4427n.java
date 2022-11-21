package p102k1;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import p111l1.InterfaceC4555b;
import p111l1.InterfaceC4556c;
/* renamed from: k1.n */
/* loaded from: classes.dex */
public final class C4427n {
    /* renamed from: a */
    public static int m16524a(InterfaceC4555b interfaceC4555b) {
        int i;
        int i2 = 0;
        int i3 = 0;
        int i4 = -1;
        do {
            int readByte = interfaceC4555b.readByte() & DefaultClassResolver.NAME;
            i2 |= (readByte & 127) << (i3 * 7);
            i4 <<= 7;
            i3++;
            i = readByte & 128;
            if (i != 128) {
                break;
            }
        } while (i3 < 5);
        if (i != 128) {
            if (((i4 >> 1) & i2) != 0) {
                return i2 | i4;
            }
            return i2;
        }
        throw new C4420g("invalid LEB128 sequence");
    }

    /* renamed from: b */
    public static int m16523b(InterfaceC4555b interfaceC4555b) {
        int i;
        int i2 = 0;
        int i3 = 0;
        do {
            int readByte = interfaceC4555b.readByte() & DefaultClassResolver.NAME;
            i2 |= (readByte & 127) << (i3 * 7);
            i3++;
            i = readByte & 128;
            if (i != 128) {
                break;
            }
        } while (i3 < 5);
        if (i != 128) {
            return i2;
        }
        throw new C4420g("invalid LEB128 sequence");
    }

    /* renamed from: c */
    public static int m16522c(int i) {
        int i2 = i >> 7;
        int i3 = 0;
        while (i2 != 0) {
            i2 >>= 7;
            i3++;
        }
        return i3 + 1;
    }

    /* renamed from: d */
    public static void m16521d(InterfaceC4556c interfaceC4556c, int i) {
        int i2 = i >> 7;
        int i3 = (Integer.MIN_VALUE & i) == 0 ? 0 : -1;
        boolean z = true;
        while (true) {
            int i4 = i2;
            int i5 = i;
            i = i4;
            if (!z) {
                return;
            }
            z = (i == i3 && (i & 1) == ((i5 >> 6) & 1)) ? false : true;
            interfaceC4556c.writeByte((byte) ((i5 & 127) | (z ? 128 : 0)));
            i2 = i >> 7;
        }
    }

    /* renamed from: e */
    public static void m16520e(InterfaceC4556c interfaceC4556c, int i) {
        while (true) {
            int i2 = i;
            i >>>= 7;
            if (i != 0) {
                interfaceC4556c.writeByte((byte) ((i2 & 127) | 128));
            } else {
                interfaceC4556c.writeByte((byte) (i2 & 127));
                return;
            }
        }
    }
}
