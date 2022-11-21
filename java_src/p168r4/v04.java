package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
/* renamed from: r4.v04 */
/* loaded from: classes2.dex */
public final class v04 {
    /* renamed from: b */
    public static byte[] m6255b(long j) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j).array();
    }

    /* renamed from: c */
    public static long m6254c(long j) {
        return (j * 1000000000) / 48000;
    }

    /* renamed from: a */
    public static List<byte[]> m6256a(byte[] bArr) {
        byte b = bArr[11];
        byte b2 = bArr[10];
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(m6255b(m6254c(((b & DefaultClassResolver.NAME) << 8) | (b2 & DefaultClassResolver.NAME))));
        arrayList.add(m6255b(m6254c(3840L)));
        return arrayList;
    }
}
