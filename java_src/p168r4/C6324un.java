package p168r4;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
/* renamed from: r4.un */
/* loaded from: classes2.dex */
public final class C6324un extends AbstractC6139pn {

    /* renamed from: c */
    public MessageDigest f32325c;

    @Override // p168r4.AbstractC6139pn
    /* renamed from: a */
    public final byte[] mo4628a(String str) {
        byte[] bArr;
        byte[] bArr2;
        String[] split = str.split(" ");
        int length = split.length;
        int i = 4;
        if (length == 1) {
            int m6788a = C6287tn.m6788a(split[0]);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(m6788a);
            bArr2 = allocate.array();
        } else {
            if (length < 5) {
                bArr = new byte[length + length];
                for (int i2 = 0; i2 < split.length; i2++) {
                    int m6788a2 = C6287tn.m6788a(split[i2]);
                    int i3 = (m6788a2 >> 16) ^ ((char) m6788a2);
                    byte b = (byte) i3;
                    byte[] bArr3 = {b, (byte) (i3 >> 8)};
                    int i4 = i2 + i2;
                    bArr[i4] = b;
                    bArr[i4 + 1] = bArr3[1];
                }
            } else {
                bArr = new byte[length];
                for (int i5 = 0; i5 < split.length; i5++) {
                    int m6788a3 = C6287tn.m6788a(split[i5]);
                    bArr[i5] = (byte) ((m6788a3 >> 24) ^ (((m6788a3 & 255) ^ ((m6788a3 >> 8) & 255)) ^ ((m6788a3 >> 16) & 255)));
                }
            }
            bArr2 = bArr;
        }
        this.f32325c = m8247b();
        synchronized (this.f29531a) {
            MessageDigest messageDigest = this.f32325c;
            if (messageDigest == null) {
                return new byte[0];
            }
            messageDigest.reset();
            this.f32325c.update(bArr2);
            byte[] digest = this.f32325c.digest();
            int length2 = digest.length;
            if (length2 <= 4) {
                i = length2;
            }
            byte[] bArr4 = new byte[i];
            System.arraycopy(digest, 0, bArr4, 0, i);
            return bArr4;
        }
    }
}
