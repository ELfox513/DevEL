package p119m0;

import java.io.File;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
import java.util.zip.ZipException;
/* renamed from: m0.c */
/* loaded from: classes.dex */
public final class C4596c {

    /* renamed from: m0.c$a */
    /* loaded from: classes.dex */
    public static class C4597a {

        /* renamed from: a */
        public long f18637a;

        /* renamed from: b */
        public long f18638b;
    }

    /* renamed from: a */
    public static long m15941a(RandomAccessFile randomAccessFile, C4597a c4597a) {
        CRC32 crc32 = new CRC32();
        long j = c4597a.f18638b;
        randomAccessFile.seek(c4597a.f18637a);
        byte[] bArr = new byte[16384];
        int read = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j));
        while (read != -1) {
            crc32.update(bArr, 0, read);
            j -= read;
            if (j == 0) {
                break;
            }
            read = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j));
        }
        return crc32.getValue();
    }

    /* renamed from: c */
    public static long m15939c(File file) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            return m15941a(randomAccessFile, m15940b(randomAccessFile));
        } finally {
            randomAccessFile.close();
        }
    }

    /* renamed from: b */
    public static C4597a m15940b(RandomAccessFile randomAccessFile) {
        long length = randomAccessFile.length() - 22;
        long j = 0;
        if (length >= 0) {
            long j2 = length - 65536;
            if (j2 >= 0) {
                j = j2;
            }
            int reverseBytes = Integer.reverseBytes(101010256);
            do {
                randomAccessFile.seek(length);
                if (randomAccessFile.readInt() == reverseBytes) {
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    C4597a c4597a = new C4597a();
                    c4597a.f18638b = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                    c4597a.f18637a = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                    return c4597a;
                }
                length--;
            } while (length >= j);
            throw new ZipException("End Of Central Directory signature not found");
        }
        throw new ZipException("File too short to be a zip file: " + randomAccessFile.length());
    }
}
