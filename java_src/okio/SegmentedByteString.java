package okio;

import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class SegmentedByteString extends ByteString {

    /* renamed from: p */
    public final transient byte[][] f19770p;

    /* renamed from: q */
    public final transient int[] f19771q;

    public SegmentedByteString(Buffer buffer, int i) {
        super(null);
        Util.checkOffsetAndCount(buffer.f19734b, 0L, i);
        Segment segment = buffer.f19733a;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            int i5 = segment.f19763c;
            int i6 = segment.f19762b;
            if (i5 != i6) {
                i3 += i5 - i6;
                i4++;
                segment = segment.f19766f;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        this.f19770p = new byte[i4];
        this.f19771q = new int[i4 * 2];
        Segment segment2 = buffer.f19733a;
        int i7 = 0;
        while (i2 < i) {
            byte[][] bArr = this.f19770p;
            bArr[i7] = segment2.f19761a;
            int i8 = segment2.f19763c;
            int i9 = segment2.f19762b;
            i2 += i8 - i9;
            if (i2 > i) {
                i2 = i;
            }
            int[] iArr = this.f19771q;
            iArr[i7] = i2;
            iArr[bArr.length + i7] = i9;
            segment2.f19764d = true;
            i7++;
            segment2 = segment2.f19766f;
        }
    }

    private int segment(int i) {
        int binarySearch = Arrays.binarySearch(this.f19771q, 0, this.f19770p.length, i + 1);
        return binarySearch >= 0 ? binarySearch : binarySearch ^ (-1);
    }

    private ByteString toByteString() {
        return new ByteString(toByteArray());
    }

    private Object writeReplace() {
        return toByteString();
    }

    @Override // okio.ByteString
    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // okio.ByteString
    public String base64() {
        return toByteString().base64();
    }

    @Override // okio.ByteString
    public String base64Url() {
        return toByteString().base64Url();
    }

    @Override // okio.ByteString
    /* renamed from: d */
    public byte[] mo13727d() {
        return toByteArray();
    }

    @Override // okio.ByteString
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == size() && rangeEquals(0, byteString, 0, size())) {
                return true;
            }
        }
        return false;
    }

    @Override // okio.ByteString
    public String hex() {
        return toByteString().hex();
    }

    @Override // okio.ByteString
    public ByteString hmacSha1(ByteString byteString) {
        return toByteString().hmacSha1(byteString);
    }

    @Override // okio.ByteString
    public ByteString hmacSha256(ByteString byteString) {
        return toByteString().hmacSha256(byteString);
    }

    @Override // okio.ByteString
    public int indexOf(byte[] bArr, int i) {
        return toByteString().indexOf(bArr, i);
    }

    @Override // okio.ByteString
    public int lastIndexOf(byte[] bArr, int i) {
        return toByteString().lastIndexOf(bArr, i);
    }

    @Override // okio.ByteString
    public ByteString md5() {
        return toByteString().md5();
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i, ByteString byteString, int i2, int i3) {
        if (i < 0 || i > size() - i3) {
            return false;
        }
        int segment = segment(i);
        while (i3 > 0) {
            int i4 = segment == 0 ? 0 : this.f19771q[segment - 1];
            int min = Math.min(i3, ((this.f19771q[segment] - i4) + i4) - i);
            int[] iArr = this.f19771q;
            byte[][] bArr = this.f19770p;
            if (!byteString.rangeEquals(i2, bArr[segment], (i - i4) + iArr[bArr.length + segment], min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            segment++;
        }
        return true;
    }

    @Override // okio.ByteString
    public ByteString sha1() {
        return toByteString().sha1();
    }

    @Override // okio.ByteString
    public ByteString sha256() {
        return toByteString().sha256();
    }

    @Override // okio.ByteString
    public int size() {
        return this.f19771q[this.f19770p.length - 1];
    }

    @Override // okio.ByteString
    public String string(Charset charset) {
        return toByteString().string(charset);
    }

    @Override // okio.ByteString
    public ByteString substring(int i) {
        return toByteString().substring(i);
    }

    @Override // okio.ByteString
    public ByteString toAsciiLowercase() {
        return toByteString().toAsciiLowercase();
    }

    @Override // okio.ByteString
    public ByteString toAsciiUppercase() {
        return toByteString().toAsciiUppercase();
    }

    @Override // okio.ByteString
    public String toString() {
        return toByteString().toString();
    }

    @Override // okio.ByteString
    public String utf8() {
        return toByteString().utf8();
    }

    @Override // okio.ByteString
    /* renamed from: f */
    public void mo13726f(Buffer buffer) {
        int length = this.f19770p.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.f19771q;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            Segment segment = new Segment(this.f19770p[i], i3, (i3 + i4) - i2, true, false);
            Segment segment2 = buffer.f19733a;
            if (segment2 == null) {
                segment.f19767g = segment;
                segment.f19766f = segment;
                buffer.f19733a = segment;
            } else {
                segment2.f19767g.push(segment);
            }
            i++;
            i2 = i4;
        }
        buffer.f19734b += i2;
    }

    @Override // okio.ByteString
    public byte getByte(int i) {
        int i2;
        Util.checkOffsetAndCount(this.f19771q[this.f19770p.length - 1], i, 1L);
        int segment = segment(i);
        if (segment == 0) {
            i2 = 0;
        } else {
            i2 = this.f19771q[segment - 1];
        }
        int[] iArr = this.f19771q;
        byte[][] bArr = this.f19770p;
        return bArr[segment][(i - i2) + iArr[bArr.length + segment]];
    }

    @Override // okio.ByteString
    public int hashCode() {
        int i = this.f19739b;
        if (i != 0) {
            return i;
        }
        int length = this.f19770p.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        while (i2 < length) {
            byte[] bArr = this.f19770p[i2];
            int[] iArr = this.f19771q;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            int i7 = (i6 - i3) + i5;
            while (i5 < i7) {
                i4 = (i4 * 31) + bArr[i5];
                i5++;
            }
            i2++;
            i3 = i6;
        }
        this.f19739b = i4;
        return i4;
    }

    @Override // okio.ByteString
    public ByteString substring(int i, int i2) {
        return toByteString().substring(i, i2);
    }

    @Override // okio.ByteString
    public byte[] toByteArray() {
        int[] iArr = this.f19771q;
        byte[][] bArr = this.f19770p;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr2 = this.f19771q;
            int i3 = iArr2[length + i];
            int i4 = iArr2[i];
            System.arraycopy(this.f19770p[i], i3, bArr2, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr2;
    }

    @Override // okio.ByteString
    public void write(OutputStream outputStream) {
        if (outputStream != null) {
            int length = this.f19770p.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                int[] iArr = this.f19771q;
                int i3 = iArr[length + i];
                int i4 = iArr[i];
                outputStream.write(this.f19770p[i], i3, i4 - i2);
                i++;
                i2 = i4;
            }
            return;
        }
        throw new IllegalArgumentException("out == null");
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > size() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int segment = segment(i);
        while (i3 > 0) {
            int i4 = segment == 0 ? 0 : this.f19771q[segment - 1];
            int min = Math.min(i3, ((this.f19771q[segment] - i4) + i4) - i);
            int[] iArr = this.f19771q;
            byte[][] bArr2 = this.f19770p;
            if (!Util.arrayRangeEquals(bArr2[segment], (i - i4) + iArr[bArr2.length + segment], bArr, i2, min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            segment++;
        }
        return true;
    }
}
