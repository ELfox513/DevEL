package p168r4;

import android.util.Pair;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.security.DigestException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.v74 */
/* loaded from: classes2.dex */
public final class v74 {
    /* renamed from: f */
    public static int m6207f(int i) {
        if (i != 513) {
            if (i != 514) {
                if (i != 769) {
                    switch (i) {
                        case 257:
                        case 259:
                            return 1;
                        case 258:
                        case 260:
                            return 2;
                        default:
                            String valueOf = String.valueOf(Long.toHexString(i));
                            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unknown signature algorithm: 0x".concat(valueOf) : new String("Unknown signature algorithm: 0x"));
                    }
                }
                return 1;
            }
            return 2;
        }
        return 1;
    }

    /* renamed from: g */
    public static String m6206g(int i) {
        if (i != 1) {
            if (i == 2) {
                return "SHA-512";
            }
            StringBuilder sb = new StringBuilder(44);
            sb.append("Unknown content digest algorthm: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        return "SHA-256";
    }

    /* renamed from: h */
    public static int m6205h(int i) {
        if (i != 1) {
            if (i == 2) {
                return 64;
            }
            StringBuilder sb = new StringBuilder(44);
            sb.append("Unknown content digest algorthm: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        return 32;
    }

    /* renamed from: a */
    public static X509Certificate[][] m6212a(String str) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        try {
            Pair<ByteBuffer, Long> m5811a = w74.m5811a(randomAccessFile);
            if (m5811a != null) {
                ByteBuffer byteBuffer = (ByteBuffer) m5811a.first;
                long longValue = ((Long) m5811a.second).longValue();
                long j = (-20) + longValue;
                if (j >= 0) {
                    randomAccessFile.seek(j);
                    if (randomAccessFile.readInt() == 1347094023) {
                        throw new s74("ZIP64 APK not supported");
                    }
                }
                long m5810b = w74.m5810b(byteBuffer);
                if (m5810b < longValue) {
                    if (w74.m5808d(byteBuffer) + m5810b == longValue) {
                        if (m5810b >= 32) {
                            ByteBuffer allocate = ByteBuffer.allocate(24);
                            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                            allocate.order(byteOrder);
                            randomAccessFile.seek(m5810b - allocate.capacity());
                            randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
                            if (allocate.getLong(8) == 2334950737559900225L && allocate.getLong(16) == 3617552046287187010L) {
                                int i = 0;
                                long j2 = allocate.getLong(0);
                                if (j2 >= allocate.capacity() && j2 <= 2147483639) {
                                    int i2 = (int) (8 + j2);
                                    long j3 = m5810b - i2;
                                    if (j3 >= 0) {
                                        ByteBuffer allocate2 = ByteBuffer.allocate(i2);
                                        allocate2.order(byteOrder);
                                        randomAccessFile.seek(j3);
                                        randomAccessFile.readFully(allocate2.array(), allocate2.arrayOffset(), allocate2.capacity());
                                        long j4 = allocate2.getLong(0);
                                        if (j4 == j2) {
                                            Pair create = Pair.create(allocate2, Long.valueOf(j3));
                                            ByteBuffer byteBuffer2 = (ByteBuffer) create.first;
                                            long longValue2 = ((Long) create.second).longValue();
                                            if (byteBuffer2.order() == byteOrder) {
                                                int capacity = byteBuffer2.capacity() - 24;
                                                if (capacity >= 8) {
                                                    int capacity2 = byteBuffer2.capacity();
                                                    if (capacity <= byteBuffer2.capacity()) {
                                                        int limit = byteBuffer2.limit();
                                                        int position = byteBuffer2.position();
                                                        byteBuffer2.position(0);
                                                        byteBuffer2.limit(capacity);
                                                        byteBuffer2.position(8);
                                                        ByteBuffer slice = byteBuffer2.slice();
                                                        slice.order(byteBuffer2.order());
                                                        byteBuffer2.position(0);
                                                        byteBuffer2.limit(limit);
                                                        byteBuffer2.position(position);
                                                        while (slice.hasRemaining()) {
                                                            i++;
                                                            if (slice.remaining() >= 8) {
                                                                long j5 = slice.getLong();
                                                                if (j5 >= 4 && j5 <= 2147483647L) {
                                                                    int i3 = (int) j5;
                                                                    int position2 = slice.position() + i3;
                                                                    if (i3 <= slice.remaining()) {
                                                                        if (slice.getInt() == 1896449818) {
                                                                            X509Certificate[][] m6211b = m6211b(randomAccessFile.getChannel(), new r74(m6204i(slice, i3 - 4), longValue2, m5810b, longValue, byteBuffer, null));
                                                                            randomAccessFile.close();
                                                                            try {
                                                                                randomAccessFile.close();
                                                                            } catch (IOException unused) {
                                                                            }
                                                                            return m6211b;
                                                                        }
                                                                        slice.position(position2);
                                                                    } else {
                                                                        int remaining = slice.remaining();
                                                                        StringBuilder sb = new StringBuilder(91);
                                                                        sb.append("APK Signing Block entry #");
                                                                        sb.append(i);
                                                                        sb.append(" size out of range: ");
                                                                        sb.append(i3);
                                                                        sb.append(", available: ");
                                                                        sb.append(remaining);
                                                                        throw new s74(sb.toString());
                                                                    }
                                                                } else {
                                                                    StringBuilder sb2 = new StringBuilder(76);
                                                                    sb2.append("APK Signing Block entry #");
                                                                    sb2.append(i);
                                                                    sb2.append(" size out of range: ");
                                                                    sb2.append(j5);
                                                                    throw new s74(sb2.toString());
                                                                }
                                                            } else {
                                                                StringBuilder sb3 = new StringBuilder(70);
                                                                sb3.append("Insufficient data to read size of APK Signing Block entry #");
                                                                sb3.append(i);
                                                                throw new s74(sb3.toString());
                                                            }
                                                        }
                                                        throw new s74("No APK Signature Scheme v2 block in APK Signing Block");
                                                    }
                                                    StringBuilder sb4 = new StringBuilder(41);
                                                    sb4.append("end > capacity: ");
                                                    sb4.append(capacity);
                                                    sb4.append(" > ");
                                                    sb4.append(capacity2);
                                                    throw new IllegalArgumentException(sb4.toString());
                                                }
                                                StringBuilder sb5 = new StringBuilder(38);
                                                sb5.append("end < start: ");
                                                sb5.append(capacity);
                                                sb5.append(" < ");
                                                sb5.append(8);
                                                throw new IllegalArgumentException(sb5.toString());
                                            }
                                            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
                                        }
                                        StringBuilder sb6 = new StringBuilder(103);
                                        sb6.append("APK Signing Block sizes in header and footer do not match: ");
                                        sb6.append(j4);
                                        sb6.append(" vs ");
                                        sb6.append(j2);
                                        throw new s74(sb6.toString());
                                    }
                                    StringBuilder sb7 = new StringBuilder(59);
                                    sb7.append("APK Signing Block offset out of range: ");
                                    sb7.append(j3);
                                    throw new s74(sb7.toString());
                                }
                                StringBuilder sb8 = new StringBuilder(57);
                                sb8.append("APK Signing Block size out of range: ");
                                sb8.append(j2);
                                throw new s74(sb8.toString());
                            }
                            throw new s74("No APK Signing Block before ZIP Central Directory");
                        }
                        StringBuilder sb9 = new StringBuilder(87);
                        sb9.append("APK too small for APK Signing Block. ZIP Central Directory offset: ");
                        sb9.append(m5810b);
                        throw new s74(sb9.toString());
                    }
                    throw new s74("ZIP Central Directory is not immediately followed by End of Central Directory");
                }
                StringBuilder sb10 = new StringBuilder(122);
                sb10.append("ZIP Central Directory offset out of range: ");
                sb10.append(m5810b);
                sb10.append(". ZIP End of Central Directory offset: ");
                sb10.append(longValue);
                throw new s74(sb10.toString());
            }
            long length = randomAccessFile.length();
            StringBuilder sb11 = new StringBuilder(102);
            sb11.append("Not an APK file: ZIP End of Central Directory record not found in file with ");
            sb11.append(length);
            sb11.append(" bytes");
            throw new s74(sb11.toString());
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (IOException unused2) {
            }
            throw th;
        }
    }

    /* renamed from: b */
    public static X509Certificate[][] m6211b(FileChannel fileChannel, r74 r74Var) {
        ByteBuffer byteBuffer;
        long j;
        long j2;
        long j3;
        ByteBuffer byteBuffer2;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                byteBuffer = r74Var.f30487a;
                ByteBuffer m6203j = m6203j(byteBuffer);
                int i = 0;
                while (m6203j.hasRemaining()) {
                    i++;
                    try {
                        arrayList.add(m6210c(m6203j(m6203j), hashMap, certificateFactory));
                    } catch (IOException | SecurityException | BufferUnderflowException e) {
                        StringBuilder sb = new StringBuilder(48);
                        sb.append("Failed to parse/verify signer #");
                        sb.append(i);
                        sb.append(" block");
                        throw new SecurityException(sb.toString(), e);
                    }
                }
                if (i > 0) {
                    if (!hashMap.isEmpty()) {
                        j = r74Var.f30488b;
                        j2 = r74Var.f30489c;
                        j3 = r74Var.f30490d;
                        byteBuffer2 = r74Var.f30491e;
                        m6209d(hashMap, fileChannel, j, j2, j3, byteBuffer2);
                        return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()]);
                    }
                    throw new SecurityException("No content digests found");
                }
                throw new SecurityException("No signers found");
            } catch (IOException e2) {
                throw new SecurityException("Failed to read list of signers", e2);
            }
        } catch (CertificateException e3) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e3);
        }
    }

    /* renamed from: e */
    public static byte[][] m6208e(int[] iArr, p74[] p74VarArr) {
        long j;
        int i;
        int length;
        long j2 = 0;
        int i2 = 0;
        long j3 = 0;
        int i3 = 0;
        while (true) {
            j = 1048576;
            if (i3 >= 3) {
                break;
            }
            j3 += (p74VarArr[i3].zza() + 1048575) / 1048576;
            i3++;
        }
        if (j3 < 2097151) {
            int i4 = (int) j3;
            byte[][] bArr = new byte[iArr.length];
            int i5 = 0;
            while (true) {
                length = iArr.length;
                if (i5 >= length) {
                    break;
                }
                byte[] bArr2 = new byte[(m6205h(iArr[i5]) * i4) + 5];
                bArr2[0] = 90;
                m6201l(i4, bArr2, 1);
                bArr[i5] = bArr2;
                i5++;
            }
            byte[] bArr3 = new byte[5];
            bArr3[0] = -91;
            MessageDigest[] messageDigestArr = new MessageDigest[length];
            for (int i6 = 0; i6 < iArr.length; i6++) {
                String m6206g = m6206g(iArr[i6]);
                try {
                    messageDigestArr[i6] = MessageDigest.getInstance(m6206g);
                } catch (NoSuchAlgorithmException e) {
                    throw new RuntimeException(m6206g.concat(" digest not supported"), e);
                }
            }
            int i7 = 0;
            int i8 = 0;
            for (i = 3; i7 < i; i = 3) {
                p74 p74Var = p74VarArr[i7];
                long j4 = j2;
                long zza = p74Var.zza();
                while (zza > j2) {
                    int min = (int) Math.min(zza, j);
                    m6201l(min, bArr3, 1);
                    for (int i9 = 0; i9 < length; i9++) {
                        messageDigestArr[i9].update(bArr3);
                    }
                    long j5 = j4;
                    try {
                        p74Var.mo7955a(messageDigestArr, j5, min);
                        byte[] bArr4 = bArr3;
                        int i10 = 0;
                        while (i10 < iArr.length) {
                            int i11 = iArr[i10];
                            p74 p74Var2 = p74Var;
                            byte[] bArr5 = bArr[i10];
                            int m6205h = m6205h(i11);
                            int i12 = length;
                            MessageDigest messageDigest = messageDigestArr[i10];
                            MessageDigest[] messageDigestArr2 = messageDigestArr;
                            int digest = messageDigest.digest(bArr5, (i8 * m6205h) + 5, m6205h);
                            if (digest == m6205h) {
                                i10++;
                                p74Var = p74Var2;
                                length = i12;
                                messageDigestArr = messageDigestArr2;
                            } else {
                                String algorithm = messageDigest.getAlgorithm();
                                StringBuilder sb = new StringBuilder(String.valueOf(algorithm).length() + 46);
                                sb.append("Unexpected output size of ");
                                sb.append(algorithm);
                                sb.append(" digest: ");
                                sb.append(digest);
                                throw new RuntimeException(sb.toString());
                            }
                        }
                        long j6 = min;
                        long j7 = j5 + j6;
                        zza -= j6;
                        i8++;
                        bArr3 = bArr4;
                        j2 = 0;
                        j4 = j7;
                        j = 1048576;
                    } catch (IOException e2) {
                        StringBuilder sb2 = new StringBuilder(59);
                        sb2.append("Failed to digest chunk #");
                        sb2.append(i8);
                        sb2.append(" of section #");
                        sb2.append(i2);
                        throw new DigestException(sb2.toString(), e2);
                    }
                }
                i2++;
                i7++;
                j2 = 0;
                j = 1048576;
            }
            byte[][] bArr6 = new byte[iArr.length];
            for (int i13 = 0; i13 < iArr.length; i13++) {
                int i14 = iArr[i13];
                byte[] bArr7 = bArr[i13];
                String m6206g2 = m6206g(i14);
                try {
                    bArr6[i13] = MessageDigest.getInstance(m6206g2).digest(bArr7);
                } catch (NoSuchAlgorithmException e3) {
                    throw new RuntimeException(m6206g2.concat(" digest not supported"), e3);
                }
            }
            return bArr6;
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("Too many chunks: ");
        sb3.append(j3);
        throw new DigestException(sb3.toString());
    }

    /* renamed from: i */
    public static ByteBuffer m6204i(ByteBuffer byteBuffer, int i) {
        if (i >= 0) {
            int limit = byteBuffer.limit();
            int position = byteBuffer.position();
            int i2 = i + position;
            if (i2 >= position && i2 <= limit) {
                byteBuffer.limit(i2);
                try {
                    ByteBuffer slice = byteBuffer.slice();
                    slice.order(byteBuffer.order());
                    byteBuffer.position(i2);
                    return slice;
                } finally {
                    byteBuffer.limit(limit);
                }
            }
            throw new BufferUnderflowException();
        }
        StringBuilder sb = new StringBuilder(17);
        sb.append("size: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: l */
    public static void m6201l(int i, byte[] bArr, int i2) {
        bArr[1] = (byte) (i & 255);
        bArr[2] = (byte) ((i >>> 8) & 255);
        bArr[3] = (byte) ((i >>> 16) & 255);
        bArr[4] = (byte) (i >> 24);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0048, code lost:
        r11 = m6207f(r5);
        r12 = m6207f(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0050, code lost:
        if (r11 == 1) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
        if (r12 == 1) goto L19;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.security.cert.X509Certificate[] m6210c(java.nio.ByteBuffer r22, java.util.Map<java.lang.Integer, byte[]> r23, java.security.cert.CertificateFactory r24) {
        /*
            Method dump skipped, instructions count: 730
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.v74.m6210c(java.nio.ByteBuffer, java.util.Map, java.security.cert.CertificateFactory):java.security.cert.X509Certificate[]");
    }

    /* renamed from: d */
    public static void m6209d(Map<Integer, byte[]> map, FileChannel fileChannel, long j, long j2, long j3, ByteBuffer byteBuffer) {
        if (!map.isEmpty()) {
            q74 q74Var = new q74(fileChannel, 0L, j);
            q74 q74Var2 = new q74(fileChannel, j2, j3 - j2);
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.order(ByteOrder.LITTLE_ENDIAN);
            w74.m5809c(duplicate, j);
            o74 o74Var = new o74(duplicate);
            int size = map.size();
            int[] iArr = new int[size];
            int i = 0;
            for (Integer num : map.keySet()) {
                iArr[i] = num.intValue();
                i++;
            }
            try {
                byte[][] m6208e = m6208e(iArr, new p74[]{q74Var, q74Var2, o74Var});
                for (int i2 = 0; i2 < size; i2++) {
                    int i3 = iArr[i2];
                    if (!MessageDigest.isEqual(map.get(Integer.valueOf(i3)), m6208e[i2])) {
                        throw new SecurityException(m6206g(i3).concat(" digest of contents did not verify"));
                    }
                }
                return;
            } catch (DigestException e) {
                throw new SecurityException("Failed to compute digest(s) of contents", e);
            }
        }
        throw new SecurityException("No digests provided");
    }

    /* renamed from: j */
    public static ByteBuffer m6203j(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() >= 4) {
            int i = byteBuffer.getInt();
            if (i >= 0) {
                if (i <= byteBuffer.remaining()) {
                    return m6204i(byteBuffer, i);
                }
                int remaining = byteBuffer.remaining();
                StringBuilder sb = new StringBuilder(101);
                sb.append("Length-prefixed field longer than remaining buffer. Field length: ");
                sb.append(i);
                sb.append(", remaining: ");
                sb.append(remaining);
                throw new IOException(sb.toString());
            }
            throw new IllegalArgumentException("Negative length");
        }
        int remaining2 = byteBuffer.remaining();
        StringBuilder sb2 = new StringBuilder(93);
        sb2.append("Remaining buffer too short to contain length of length-prefixed field. Remaining: ");
        sb2.append(remaining2);
        throw new IOException(sb2.toString());
    }

    /* renamed from: k */
    public static byte[] m6202k(ByteBuffer byteBuffer) {
        int i = byteBuffer.getInt();
        if (i >= 0) {
            if (i <= byteBuffer.remaining()) {
                byte[] bArr = new byte[i];
                byteBuffer.get(bArr);
                return bArr;
            }
            int remaining = byteBuffer.remaining();
            StringBuilder sb = new StringBuilder(90);
            sb.append("Underflow while reading length-prefixed value. Length: ");
            sb.append(i);
            sb.append(", available: ");
            sb.append(remaining);
            throw new IOException(sb.toString());
        }
        throw new IOException("Negative length");
    }
}
