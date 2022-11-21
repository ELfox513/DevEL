package p168r4;

import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.GL30;
import com.prineside.tdi2.tiles.CoreTile;
import java.util.Arrays;
/* renamed from: r4.yz3 */
/* loaded from: classes2.dex */
public final class yz3 {

    /* renamed from: a */
    public static final int[] f34259a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: b */
    public static final int[] f34260b = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* renamed from: c */
    public static final int[] f34261c = {64, 112, 128, 192, 224, 256, 384, 448, 512, 640, GL20.GL_SRC_COLOR, 896, 1024, 1152, 1280, 1536, 1920, 2048, GL20.GL_CW, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, GL30.GL_COLOR, GL20.GL_KEEP};

    /* renamed from: a */
    public static C5713e5 m4501a(byte[] bArr, String str, String str2, fz3 fz3Var) {
        C6386wb c6386wb;
        int i = -1;
        if (bArr[0] == Byte.MAX_VALUE) {
            c6386wb = new C6386wb(bArr, bArr.length);
        } else {
            byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
            byte b = copyOf[0];
            if (b == -2 || b == -1) {
                for (int i2 = 0; i2 < copyOf.length - 1; i2 += 2) {
                    byte b2 = copyOf[i2];
                    int i3 = i2 + 1;
                    copyOf[i2] = copyOf[i3];
                    copyOf[i3] = b2;
                }
            }
            int length = copyOf.length;
            c6386wb = new C6386wb(copyOf, length);
            if (copyOf[0] == 31) {
                C6386wb c6386wb2 = new C6386wb(copyOf, length);
                while (c6386wb2.m5791b() >= 16) {
                    c6386wb2.m5787f(2);
                    c6386wb.m5781l(c6386wb2.m5785h(14), 14);
                }
            }
            c6386wb.m5792a(copyOf, copyOf.length);
        }
        c6386wb.m5787f(60);
        int i4 = f34259a[c6386wb.m5785h(6)];
        int i5 = f34260b[c6386wb.m5785h(4)];
        int m5785h = c6386wb.m5785h(5);
        if (m5785h < 29) {
            i = (f34261c[m5785h] * CoreTile.FIXED_LEVEL_XP_REQUIREMENT) / 2;
        }
        c6386wb.m5787f(10);
        int i6 = c6386wb.m5785h(2) > 0 ? 1 : 0;
        C5639c5 c5639c5 = new C5639c5();
        c5639c5.m12579d(str);
        c5639c5.m12564n("audio/vnd.dts");
        c5639c5.m12569i(i);
        c5639c5.m12610B(i4 + i6);
        c5639c5.m12609C(i5);
        c5639c5.m12561q(null);
        c5639c5.m12573g(str2);
        return c5639c5.m12603I();
    }
}
