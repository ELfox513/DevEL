package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.nio.charset.Charset;
import java.security.MessageDigest;
/* renamed from: r4.yn */
/* loaded from: classes2.dex */
public final class C6472yn extends AbstractC6139pn {

    /* renamed from: c */
    public MessageDigest f34146c;

    /* renamed from: d */
    public final int f34147d;

    /* renamed from: e */
    public final int f34148e;

    public C6472yn(int i) {
        int i2 = i >> 3;
        this.f34147d = (i & 7) > 0 ? i2 + 1 : i2;
        this.f34148e = i;
    }

    @Override // p168r4.AbstractC6139pn
    /* renamed from: a */
    public final byte[] mo4628a(String str) {
        synchronized (this.f29531a) {
            MessageDigest m8247b = m8247b();
            this.f34146c = m8247b;
            if (m8247b == null) {
                return new byte[0];
            }
            m8247b.reset();
            this.f34146c.update(str.getBytes(Charset.forName("UTF-8")));
            byte[] digest = this.f34146c.digest();
            int length = digest.length;
            int i = this.f34147d;
            if (length > i) {
                length = i;
            }
            byte[] bArr = new byte[length];
            System.arraycopy(digest, 0, bArr, 0, length);
            if ((this.f34148e & 7) > 0) {
                long j = 0;
                for (int i2 = 0; i2 < length; i2++) {
                    if (i2 > 0) {
                        j <<= 8;
                    }
                    j += bArr[i2] & DefaultClassResolver.NAME;
                }
                long j2 = j >>> (8 - (this.f34148e & 7));
                int i3 = this.f34147d;
                while (true) {
                    i3--;
                    if (i3 < 0) {
                        break;
                    }
                    bArr[i3] = (byte) (255 & j2);
                    j2 >>>= 8;
                }
            }
            return bArr;
        }
    }
}
