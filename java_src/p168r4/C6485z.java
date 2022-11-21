package p168r4;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: r4.z */
/* loaded from: classes2.dex */
public final class C6485z {

    /* renamed from: a */
    public static Cipher f34262a;

    /* renamed from: b */
    public static final Object f34263b = new Object();

    /* renamed from: c */
    public static final Object f34264c = new Object();

    public C6485z(SecureRandom secureRandom) {
    }

    /* renamed from: a */
    public final String m4500a(byte[] bArr, byte[] bArr2) {
        byte[] doFinal;
        byte[] iv;
        int length = bArr.length;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (f34263b) {
                m4498c().init(1, secretKeySpec, (SecureRandom) null);
                doFinal = m4498c().doFinal(bArr2);
                iv = m4498c().getIV();
            }
            int length2 = doFinal.length + iv.length;
            ByteBuffer allocate = ByteBuffer.allocate(length2);
            allocate.put(iv).put(doFinal);
            allocate.flip();
            byte[] bArr3 = new byte[length2];
            allocate.get(bArr3);
            return fc4.m11575a(bArr3, false);
        } catch (InvalidKeyException e) {
            throw new C6448y(this, e);
        } catch (NoSuchAlgorithmException e2) {
            throw new C6448y(this, e2);
        } catch (BadPaddingException e3) {
            throw new C6448y(this, e3);
        } catch (IllegalBlockSizeException e4) {
            throw new C6448y(this, e4);
        } catch (NoSuchPaddingException e5) {
            throw new C6448y(this, e5);
        }
    }

    /* renamed from: b */
    public final byte[] m4499b(byte[] bArr, String str) {
        byte[] doFinal;
        int length = bArr.length;
        try {
            byte[] m11574b = fc4.m11574b(str, false);
            int length2 = m11574b.length;
            if (length2 > 16) {
                ByteBuffer allocate = ByteBuffer.allocate(length2);
                allocate.put(m11574b);
                allocate.flip();
                byte[] bArr2 = new byte[16];
                byte[] bArr3 = new byte[length2 - 16];
                allocate.get(bArr2);
                allocate.get(bArr3);
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                synchronized (f34263b) {
                    m4498c().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                    doFinal = m4498c().doFinal(bArr3);
                }
                return doFinal;
            }
            throw new C6448y(this);
        } catch (IllegalArgumentException e) {
            throw new C6448y(this, e);
        } catch (InvalidAlgorithmParameterException e2) {
            throw new C6448y(this, e2);
        } catch (InvalidKeyException e3) {
            throw new C6448y(this, e3);
        } catch (NoSuchAlgorithmException e4) {
            throw new C6448y(this, e4);
        } catch (BadPaddingException e5) {
            throw new C6448y(this, e5);
        } catch (IllegalBlockSizeException e6) {
            throw new C6448y(this, e6);
        } catch (NoSuchPaddingException e7) {
            throw new C6448y(this, e7);
        }
    }

    /* renamed from: c */
    public static final Cipher m4498c() {
        Cipher cipher;
        synchronized (f34264c) {
            if (f34262a == null) {
                f34262a = Cipher.getInstance("AES/CBC/PKCS5Padding");
            }
            cipher = f34262a;
        }
        return cipher;
    }
}
