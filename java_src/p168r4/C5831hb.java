package p168r4;

import android.media.MediaFormat;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: r4.hb */
/* loaded from: classes2.dex */
public final class C5831hb {
    /* renamed from: a */
    public static void m10952a(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i = 0; i < list.size(); i++) {
            StringBuilder sb = new StringBuilder(15);
            sb.append("csd-");
            sb.append(i);
            mediaFormat.setByteBuffer(sb.toString(), ByteBuffer.wrap(list.get(i)));
        }
    }

    /* renamed from: b */
    public static void m10951b(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }
}
