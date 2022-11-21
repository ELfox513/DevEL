package okio;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.EOFException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import net.bytebuddy.asm.Advice;
/* loaded from: classes.dex */
public class ByteString implements Serializable, Comparable<ByteString> {
    private static final long serialVersionUID = 1;

    /* renamed from: a */
    public final byte[] f19738a;

    /* renamed from: b */
    public transient int f19739b;

    /* renamed from: d */
    public transient String f19740d;

    /* renamed from: k */
    public static final char[] f19737k = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', Advice.OffsetMapping.ForOrigin.Renderer.ForDescriptor.SYMBOL, 'e', 'f'};
    public static final ByteString EMPTY = m13736of(new byte[0]);

    private static int decodeHexDigit(char c) {
        if (c < '0' || c > '9') {
            char c2 = 'a';
            if (c < 'a' || c > 'f') {
                c2 = 'A';
                if (c < 'A' || c > 'F') {
                    throw new IllegalArgumentException("Unexpected hex digit: " + c);
                }
            }
            return (c - c2) + 10;
        }
        return c - '0';
    }

    /* renamed from: of */
    public static ByteString m13736of(byte... bArr) {
        if (bArr != null) {
            return new ByteString((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(this.f19738a).asReadOnlyBuffer();
    }

    public String base64() {
        return Base64.encode(this.f19738a);
    }

    public String base64Url() {
        return Base64.encodeUrl(this.f19738a);
    }

    /* renamed from: d */
    public byte[] mo13727d() {
        return this.f19738a;
    }

    public final boolean endsWith(ByteString byteString) {
        return rangeEquals(size() - byteString.size(), byteString, 0, byteString.size());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            int size = byteString.size();
            byte[] bArr = this.f19738a;
            if (size == bArr.length && byteString.rangeEquals(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public void mo13726f(Buffer buffer) {
        byte[] bArr = this.f19738a;
        buffer.write(bArr, 0, bArr.length);
    }

    public byte getByte(int i) {
        return this.f19738a[i];
    }

    public ByteString hmacSha1(ByteString byteString) {
        return hmac("HmacSHA1", byteString);
    }

    public ByteString hmacSha256(ByteString byteString) {
        return hmac("HmacSHA256", byteString);
    }

    public ByteString hmacSha512(ByteString byteString) {
        return hmac("HmacSHA512", byteString);
    }

    public final int indexOf(ByteString byteString) {
        return indexOf(byteString.mo13727d(), 0);
    }

    public final int lastIndexOf(ByteString byteString) {
        return lastIndexOf(byteString.mo13727d(), size());
    }

    public ByteString md5() {
        return digest("MD5");
    }

    public boolean rangeEquals(int i, ByteString byteString, int i2, int i3) {
        return byteString.rangeEquals(i2, this.f19738a, i, i3);
    }

    public ByteString sha1() {
        return digest("SHA-1");
    }

    public ByteString sha256() {
        return digest("SHA-256");
    }

    public ByteString sha512() {
        return digest("SHA-512");
    }

    public int size() {
        return this.f19738a.length;
    }

    public final boolean startsWith(ByteString byteString) {
        return rangeEquals(0, byteString, 0, byteString.size());
    }

    public ByteString substring(int i) {
        return substring(i, this.f19738a.length);
    }

    public ByteString toAsciiLowercase() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f19738a;
            if (i < bArr.length) {
                byte b = bArr[i];
                if (b >= 65 && b <= 90) {
                    byte[] bArr2 = (byte[]) bArr.clone();
                    bArr2[i] = (byte) (b + 32);
                    for (int i2 = i + 1; i2 < bArr2.length; i2++) {
                        byte b2 = bArr2[i2];
                        if (b2 >= 65 && b2 <= 90) {
                            bArr2[i2] = (byte) (b2 + 32);
                        }
                    }
                    return new ByteString(bArr2);
                }
                i++;
            } else {
                return this;
            }
        }
    }

    public ByteString toAsciiUppercase() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f19738a;
            if (i < bArr.length) {
                byte b = bArr[i];
                if (b >= 97 && b <= 122) {
                    byte[] bArr2 = (byte[]) bArr.clone();
                    bArr2[i] = (byte) (b - 32);
                    for (int i2 = i + 1; i2 < bArr2.length; i2++) {
                        byte b2 = bArr2[i2];
                        if (b2 >= 97 && b2 <= 122) {
                            bArr2[i2] = (byte) (b2 - 32);
                        }
                    }
                    return new ByteString(bArr2);
                }
                i++;
            } else {
                return this;
            }
        }
    }

    public byte[] toByteArray() {
        return (byte[]) this.f19738a.clone();
    }

    public static ByteString decodeBase64(String str) {
        if (str != null) {
            byte[] decode = Base64.decode(str);
            if (decode != null) {
                return new ByteString(decode);
            }
            return null;
        }
        throw new IllegalArgumentException("base64 == null");
    }

    public static ByteString decodeHex(String str) {
        if (str != null) {
            if (str.length() % 2 == 0) {
                int length = str.length() / 2;
                byte[] bArr = new byte[length];
                for (int i = 0; i < length; i++) {
                    int i2 = i * 2;
                    bArr[i] = (byte) ((decodeHexDigit(str.charAt(i2)) << 4) + decodeHexDigit(str.charAt(i2 + 1)));
                }
                return m13736of(bArr);
            }
            throw new IllegalArgumentException("Unexpected hex string: " + str);
        }
        throw new IllegalArgumentException("hex == null");
    }

    public static ByteString encodeString(String str, Charset charset) {
        if (str != null) {
            if (charset != null) {
                return new ByteString(str.getBytes(charset));
            }
            throw new IllegalArgumentException("charset == null");
        }
        throw new IllegalArgumentException("s == null");
    }

    public static ByteString encodeUtf8(String str) {
        if (str != null) {
            ByteString byteString = new ByteString(str.getBytes(Util.UTF_8));
            byteString.f19740d = str;
            return byteString;
        }
        throw new IllegalArgumentException("s == null");
    }

    public static ByteString read(InputStream inputStream, int i) {
        if (inputStream != null) {
            if (i >= 0) {
                byte[] bArr = new byte[i];
                int i2 = 0;
                while (i2 < i) {
                    int read = inputStream.read(bArr, i2, i - i2);
                    if (read != -1) {
                        i2 += read;
                    } else {
                        throw new EOFException();
                    }
                }
                return new ByteString(bArr);
            }
            throw new IllegalArgumentException("byteCount < 0: " + i);
        }
        throw new IllegalArgumentException("in == null");
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.writeInt(this.f19738a.length);
        objectOutputStream.write(this.f19738a);
    }

    @Override // java.lang.Comparable
    public int compareTo(ByteString byteString) {
        int size = size();
        int size2 = byteString.size();
        int min = Math.min(size, size2);
        for (int i = 0; i < min; i++) {
            int i2 = getByte(i) & DefaultClassResolver.NAME;
            int i3 = byteString.getByte(i) & DefaultClassResolver.NAME;
            if (i2 != i3) {
                return i2 < i3 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size < size2 ? -1 : 1;
    }

    public final boolean endsWith(byte[] bArr) {
        return rangeEquals(size() - bArr.length, bArr, 0, bArr.length);
    }

    public int hashCode() {
        int i = this.f19739b;
        if (i == 0) {
            int hashCode = Arrays.hashCode(this.f19738a);
            this.f19739b = hashCode;
            return hashCode;
        }
        return i;
    }

    public String hex() {
        byte[] bArr = this.f19738a;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = f19737k;
            cArr[i] = cArr2[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    public final int indexOf(ByteString byteString, int i) {
        return indexOf(byteString.mo13727d(), i);
    }

    public final int lastIndexOf(ByteString byteString, int i) {
        return lastIndexOf(byteString.mo13727d(), i);
    }

    public boolean rangeEquals(int i, byte[] bArr, int i2, int i3) {
        if (i >= 0) {
            byte[] bArr2 = this.f19738a;
            if (i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && Util.arrayRangeEquals(bArr2, i, bArr, i2, i3)) {
                return true;
            }
        }
        return false;
    }

    public final boolean startsWith(byte[] bArr) {
        return rangeEquals(0, bArr, 0, bArr.length);
    }

    public String string(Charset charset) {
        if (charset != null) {
            return new String(this.f19738a, charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    public ByteString substring(int i, int i2) {
        if (i >= 0) {
            byte[] bArr = this.f19738a;
            if (i2 > bArr.length) {
                throw new IllegalArgumentException("endIndex > length(" + this.f19738a.length + ")");
            }
            int i3 = i2 - i;
            if (i3 >= 0) {
                if (i == 0 && i2 == bArr.length) {
                    return this;
                }
                byte[] bArr2 = new byte[i3];
                System.arraycopy(bArr, i, bArr2, 0, i3);
                return new ByteString(bArr2);
            }
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    public String toString() {
        if (this.f19738a.length == 0) {
            return "[size=0]";
        }
        String utf8 = utf8();
        int m13738c = m13738c(utf8, 64);
        if (m13738c == -1) {
            if (this.f19738a.length <= 64) {
                return "[hex=" + hex() + "]";
            }
            return "[size=" + this.f19738a.length + " hex=" + substring(0, 64).hex() + "…]";
        }
        String replace = utf8.substring(0, m13738c).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (m13738c < utf8.length()) {
            return "[size=" + this.f19738a.length + " text=" + replace + "…]";
        }
        return "[text=" + replace + "]";
    }

    public String utf8() {
        String str = this.f19740d;
        if (str == null) {
            String str2 = new String(this.f19738a, Util.UTF_8);
            this.f19740d = str2;
            return str2;
        }
        return str;
    }

    public void write(OutputStream outputStream) {
        if (outputStream != null) {
            outputStream.write(this.f19738a);
            return;
        }
        throw new IllegalArgumentException("out == null");
    }

    public ByteString(byte[] bArr) {
        this.f19738a = bArr;
    }

    /* renamed from: c */
    public static int m13738c(String str, int i) {
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            if (i3 == i) {
                return i2;
            }
            int codePointAt = str.codePointAt(i2);
            if ((Character.isISOControl(codePointAt) && codePointAt != 10 && codePointAt != 13) || codePointAt == 65533) {
                return -1;
            }
            i3++;
            i2 += Character.charCount(codePointAt);
        }
        return str.length();
    }

    private ByteString digest(String str) {
        try {
            return m13736of(MessageDigest.getInstance(str).digest(this.f19738a));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    private ByteString hmac(String str, ByteString byteString) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            return m13736of(mac.doFinal(this.f19738a));
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    /* renamed from: of */
    public static ByteString m13735of(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            Util.checkOffsetAndCount(bArr.length, i, i2);
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return new ByteString(bArr2);
        }
        throw new IllegalArgumentException("data == null");
    }

    private void readObject(ObjectInputStream objectInputStream) {
        ByteString read = read(objectInputStream, objectInputStream.readInt());
        try {
            Field declaredField = ByteString.class.getDeclaredField("a");
            declaredField.setAccessible(true);
            declaredField.set(this, read.f19738a);
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (NoSuchFieldException unused2) {
            throw new AssertionError();
        }
    }

    public final int indexOf(byte[] bArr) {
        return indexOf(bArr, 0);
    }

    public final int lastIndexOf(byte[] bArr) {
        return lastIndexOf(bArr, size());
    }

    public int indexOf(byte[] bArr, int i) {
        int length = this.f19738a.length - bArr.length;
        for (int max = Math.max(i, 0); max <= length; max++) {
            if (Util.arrayRangeEquals(this.f19738a, max, bArr, 0, bArr.length)) {
                return max;
            }
        }
        return -1;
    }

    public int lastIndexOf(byte[] bArr, int i) {
        for (int min = Math.min(i, this.f19738a.length - bArr.length); min >= 0; min--) {
            if (Util.arrayRangeEquals(this.f19738a, min, bArr, 0, bArr.length)) {
                return min;
            }
        }
        return -1;
    }

    /* renamed from: of */
    public static ByteString m13737of(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            return new ByteString(bArr);
        }
        throw new IllegalArgumentException("data == null");
    }
}
