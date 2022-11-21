package com.badlogic.gdx.backends.android;

import android.content.res.AssetFileDescriptor;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Collection;
import java.util.HashMap;
import java.util.Vector;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes.dex */
public class ZipResourceFile {

    /* renamed from: a */
    public HashMap<String, ZipEntryRO> f3856a = new HashMap<>();
    public HashMap<File, ZipFile> mZipFiles = new HashMap<>();

    /* renamed from: b */
    public ByteBuffer f3857b = ByteBuffer.allocate(4);

    /* loaded from: classes.dex */
    public static final class ZipEntryRO {
        public long mCRC32;
        public long mCompressedLength;
        public final File mFile;
        public final String mFileName;
        public long mLocalHdrOffset;
        public int mMethod;
        public long mOffset = -1;
        public long mUncompressedLength;
        public long mWhenModified;
        public final String mZipFileName;

        public long getOffset() {
            return this.mOffset;
        }

        public File getZipFile() {
            return this.mFile;
        }

        public String getZipFileName() {
            return this.mZipFileName;
        }

        public boolean isUncompressed() {
            return this.mMethod == 0;
        }

        public AssetFileDescriptor getAssetFileDescriptor() {
            if (this.mMethod == 0) {
                try {
                    return new AssetFileDescriptor(ParcelFileDescriptor.open(this.mFile, 268435456), getOffset(), this.mUncompressedLength);
                } catch (FileNotFoundException e) {
                    e.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public void setOffsetFromFile(RandomAccessFile randomAccessFile, ByteBuffer byteBuffer) {
            long j = this.mLocalHdrOffset;
            try {
                randomAccessFile.seek(j);
                randomAccessFile.readFully(byteBuffer.array());
                if (byteBuffer.getInt(0) == 67324752) {
                    this.mOffset = j + 30 + (byteBuffer.getShort(26) & 65535) + (byteBuffer.getShort(28) & 65535);
                } else {
                    Log.w("zipro", "didn't find signature at start of lfh");
                    throw new IOException();
                }
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }

        public ZipEntryRO(String str, File file, String str2) {
            this.mFileName = str2;
            this.mZipFileName = str;
            this.mFile = file;
        }
    }

    /* renamed from: c */
    public static int m24286c(RandomAccessFile randomAccessFile) {
        return m24285d(randomAccessFile.readInt());
    }

    /* renamed from: d */
    public static int m24285d(int i) {
        return ((i & 255) << 24) + ((65280 & i) << 8) + ((16711680 & i) >>> 8) + ((i >>> 24) & 255);
    }

    /* renamed from: a */
    public void m24288a(String str) {
        String str2 = str;
        File file = new File(str2);
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        long length = randomAccessFile.length();
        if (length >= 22) {
            long j = 65557;
            if (65557 > length) {
                j = length;
            }
            randomAccessFile.seek(0L);
            int m24286c = m24286c(randomAccessFile);
            if (m24286c != 101010256) {
                if (m24286c == 67324752) {
                    randomAccessFile.seek(length - j);
                    ByteBuffer allocate = ByteBuffer.allocate((int) j);
                    byte[] array = allocate.array();
                    randomAccessFile.readFully(array);
                    allocate.order(ByteOrder.LITTLE_ENDIAN);
                    int length2 = array.length - 22;
                    while (length2 >= 0 && (array[length2] != 80 || allocate.getInt(length2) != 101010256)) {
                        length2--;
                    }
                    if (length2 < 0) {
                        Log.d("zipro", "Zip: EOCD not found, " + str2 + " is not zip");
                    }
                    short s = allocate.getShort(length2 + 8);
                    long j2 = allocate.getInt(length2 + 12) & 4294967295L;
                    long j3 = allocate.getInt(length2 + 16) & 4294967295L;
                    if (j3 + j2 <= length) {
                        if (s != 0) {
                            MappedByteBuffer map = randomAccessFile.getChannel().map(FileChannel.MapMode.READ_ONLY, j3, j2);
                            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                            map.order(byteOrder);
                            short s2 = 65535;
                            byte[] bArr = new byte[MeshBuilder.MAX_INDEX];
                            ByteBuffer allocate2 = ByteBuffer.allocate(30);
                            allocate2.order(byteOrder);
                            int i = 0;
                            int i2 = 0;
                            int i3 = 0;
                            while (i2 < s) {
                                if (map.getInt(i3) == 33639248) {
                                    int i4 = map.getShort(i3 + 28) & s2;
                                    int i5 = map.getShort(i3 + 30) & s2;
                                    int i6 = map.getShort(i3 + 32) & s2;
                                    map.position(i3 + 46);
                                    map.get(bArr, i, i4);
                                    map.position(i);
                                    String str3 = new String(bArr, i, i4);
                                    ZipEntryRO zipEntryRO = new ZipEntryRO(str2, file, str3);
                                    zipEntryRO.mMethod = map.getShort(i3 + 10) & 65535;
                                    zipEntryRO.mWhenModified = map.getInt(i3 + 12) & 4294967295L;
                                    zipEntryRO.mCRC32 = map.getLong(i3 + 16) & 4294967295L;
                                    zipEntryRO.mCompressedLength = map.getLong(i3 + 20) & 4294967295L;
                                    zipEntryRO.mUncompressedLength = map.getLong(i3 + 24) & 4294967295L;
                                    zipEntryRO.mLocalHdrOffset = map.getInt(i3 + 42) & 4294967295L;
                                    allocate2.clear();
                                    zipEntryRO.setOffsetFromFile(randomAccessFile, allocate2);
                                    this.f3856a.put(str3, zipEntryRO);
                                    i3 += i4 + 46 + i5 + i6;
                                    i2++;
                                    str2 = str;
                                    file = file;
                                    i = 0;
                                    s2 = 65535;
                                } else {
                                    Log.w("zipro", "Missed a central dir sig (at " + i3 + ")");
                                    throw new IOException();
                                }
                            }
                            return;
                        }
                        Log.w("zipro", "empty archive?");
                        throw new IOException();
                    }
                    Log.w("zipro", "bad offsets (dir " + j3 + ", size " + j2 + ", eocd " + length2 + ")");
                    throw new IOException();
                }
                Log.v("zipro", "Not a Zip archive");
                throw new IOException();
            }
            Log.i("zipro", "Found Zip archive, but it looks empty");
            throw new IOException();
        }
        randomAccessFile.close();
        throw new IOException();
    }

    /* renamed from: b */
    public ZipEntryRO[] m24287b(String str) {
        Vector vector = new Vector();
        Collection<ZipEntryRO> values = this.f3856a.values();
        if (str == null) {
            str = "";
        }
        int length = str.length();
        for (ZipEntryRO zipEntryRO : values) {
            if (zipEntryRO.mFileName.startsWith(str) && -1 == zipEntryRO.mFileName.indexOf(47, length)) {
                vector.add(zipEntryRO);
            }
        }
        return (ZipEntryRO[]) vector.toArray(new ZipEntryRO[vector.size()]);
    }

    public ZipEntryRO[] getAllEntries() {
        Collection<ZipEntryRO> values = this.f3856a.values();
        return (ZipEntryRO[]) values.toArray(new ZipEntryRO[values.size()]);
    }

    public AssetFileDescriptor getAssetFileDescriptor(String str) {
        ZipEntryRO zipEntryRO = this.f3856a.get(str);
        if (zipEntryRO != null) {
            return zipEntryRO.getAssetFileDescriptor();
        }
        return null;
    }

    public InputStream getInputStream(String str) {
        ZipEntryRO zipEntryRO = this.f3856a.get(str);
        if (zipEntryRO != null) {
            if (zipEntryRO.isUncompressed()) {
                return zipEntryRO.getAssetFileDescriptor().createInputStream();
            }
            ZipFile zipFile = this.mZipFiles.get(zipEntryRO.getZipFile());
            if (zipFile == null) {
                zipFile = new ZipFile(zipEntryRO.getZipFile(), 1);
                this.mZipFiles.put(zipEntryRO.getZipFile(), zipFile);
            }
            ZipEntry entry = zipFile.getEntry(str);
            if (entry != null) {
                return zipFile.getInputStream(entry);
            }
            return null;
        }
        return null;
    }

    public ZipResourceFile(String str) {
        m24288a(str);
    }
}
