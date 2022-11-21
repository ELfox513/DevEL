package p168r4;

import java.nio.ByteBuffer;
/* renamed from: r4.ud */
/* loaded from: classes2.dex */
public final class C6314ud {

    /* renamed from: a */
    public static final int[] f32244a = {1, 2, 3, 6};

    /* renamed from: b */
    public static final int[] f32245b = {48000, 44100, 32000};

    /* renamed from: c */
    public static final int[] f32246c = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: b */
    public static C5870id m6547b(C5692dl c5692dl, String str, String str2, C5982lf c5982lf) {
        c5692dl.m12113j(2);
        int i = f32245b[(c5692dl.m12111l() & 192) >> 6];
        int m12111l = c5692dl.m12111l();
        int i2 = f32246c[(m12111l & 14) >> 1];
        if ((m12111l & 1) != 0) {
            i2++;
        }
        return C5870id.m10684h(str, "audio/eac3", null, -1, -1, i2, i, null, c5982lf, 0, str2);
    }

    /* renamed from: a */
    public static C5870id m6548a(C5692dl c5692dl, String str, String str2, C5982lf c5982lf) {
        int i = f32245b[(c5692dl.m12111l() & 192) >> 6];
        int m12111l = c5692dl.m12111l();
        int i2 = f32246c[(m12111l & 56) >> 3];
        if ((m12111l & 4) != 0) {
            i2++;
        }
        return C5870id.m10684h(str, "audio/ac3", null, -1, -1, i2, i, null, c5982lf, 0, str2);
    }

    /* renamed from: c */
    public static int m6546c(ByteBuffer byteBuffer) {
        int i = 6;
        if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
            i = f32244a[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4];
        }
        return i * 256;
    }
}
