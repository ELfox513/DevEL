package okio;

import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes.dex */
public final class HashingSink extends ForwardingSink {
    private final Mac mac;
    private final MessageDigest messageDigest;

    private HashingSink(Sink sink, String str) {
        super(sink);
        try {
            this.messageDigest = MessageDigest.getInstance(str);
            this.mac = null;
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    public static HashingSink hmacSha1(Sink sink, ByteString byteString) {
        return new HashingSink(sink, byteString, "HmacSHA1");
    }

    public static HashingSink hmacSha256(Sink sink, ByteString byteString) {
        return new HashingSink(sink, byteString, "HmacSHA256");
    }

    public static HashingSink hmacSha512(Sink sink, ByteString byteString) {
        return new HashingSink(sink, byteString, "HmacSHA512");
    }

    public static HashingSink md5(Sink sink) {
        return new HashingSink(sink, "MD5");
    }

    public static HashingSink sha1(Sink sink) {
        return new HashingSink(sink, "SHA-1");
    }

    public static HashingSink sha256(Sink sink) {
        return new HashingSink(sink, "SHA-256");
    }

    public static HashingSink sha512(Sink sink) {
        return new HashingSink(sink, "SHA-512");
    }

    public final ByteString hash() {
        byte[] doFinal;
        MessageDigest messageDigest = this.messageDigest;
        if (messageDigest != null) {
            doFinal = messageDigest.digest();
        } else {
            doFinal = this.mac.doFinal();
        }
        return ByteString.m13736of(doFinal);
    }

    @Override // okio.ForwardingSink, okio.Sink
    public void write(Buffer buffer, long j) {
        Util.checkOffsetAndCount(buffer.f19734b, 0L, j);
        Segment segment = buffer.f19733a;
        long j2 = 0;
        while (j2 < j) {
            int min = (int) Math.min(j - j2, segment.f19763c - segment.f19762b);
            MessageDigest messageDigest = this.messageDigest;
            if (messageDigest != null) {
                messageDigest.update(segment.f19761a, segment.f19762b, min);
            } else {
                this.mac.update(segment.f19761a, segment.f19762b, min);
            }
            j2 += min;
            segment = segment.f19766f;
        }
        super.write(buffer, j);
    }

    private HashingSink(Sink sink, ByteString byteString, String str) {
        super(sink);
        try {
            Mac mac = Mac.getInstance(str);
            this.mac = mac;
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            this.messageDigest = null;
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }
}
