package p170r6;

import android.util.Base64;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.UUID;
/* renamed from: r6.m */
/* loaded from: classes2.dex */
public class C6546m {

    /* renamed from: a */
    public static final byte f34854a = Byte.parseByte("01110000", 2);

    /* renamed from: b */
    public static final byte f34855b = Byte.parseByte("00001111", 2);

    /* renamed from: b */
    public static String m3950b(byte[] bArr) {
        return new String(Base64.encode(bArr, 11), Charset.defaultCharset()).substring(0, 22);
    }

    /* renamed from: c */
    public static byte[] m3949c(UUID uuid, byte[] bArr) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.putLong(uuid.getMostSignificantBits());
        wrap.putLong(uuid.getLeastSignificantBits());
        return wrap.array();
    }

    /* renamed from: a */
    public String m3951a() {
        byte[] m3949c = m3949c(UUID.randomUUID(), new byte[17]);
        byte b = m3949c[0];
        m3949c[16] = b;
        m3949c[0] = (byte) ((b & f34855b) | f34854a);
        return m3950b(m3949c);
    }
}
