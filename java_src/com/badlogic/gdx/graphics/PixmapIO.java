package com.badlogic.gdx.graphics;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.utils.ByteArray;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.StreamUtils;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.zip.CRC32;
import java.util.zip.CheckedOutputStream;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.InflaterInputStream;
/* loaded from: classes.dex */
public class PixmapIO {

    /* loaded from: classes.dex */
    public static class CIM {

        /* renamed from: a */
        public static final byte[] f3933a = new byte[32000];

        /* renamed from: b */
        public static final byte[] f3934b = new byte[32000];

        /* JADX WARN: Not initialized variable reg: 1, insn: 0x007e: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:25:0x007e */
        public static Pixmap read(FileHandle fileHandle) {
            Exception e;
            Closeable closeable;
            Closeable closeable2 = null;
            try {
                try {
                    DataInputStream dataInputStream = new DataInputStream(new InflaterInputStream(new BufferedInputStream(fileHandle.read())));
                    try {
                        Pixmap pixmap = new Pixmap(dataInputStream.readInt(), dataInputStream.readInt(), Pixmap.Format.fromGdx2DPixmapFormat(dataInputStream.readInt()));
                        ByteBuffer pixels = pixmap.getPixels();
                        pixels.position(0);
                        pixels.limit(pixels.capacity());
                        synchronized (f3934b) {
                            while (true) {
                                byte[] bArr = f3934b;
                                int read = dataInputStream.read(bArr);
                                if (read > 0) {
                                    pixels.put(bArr, 0, read);
                                }
                            }
                        }
                        pixels.position(0);
                        pixels.limit(pixels.capacity());
                        StreamUtils.closeQuietly(dataInputStream);
                        return pixmap;
                    } catch (Exception e2) {
                        e = e2;
                        throw new GdxRuntimeException("Couldn't read Pixmap from file '" + fileHandle + "'", e);
                    }
                } catch (Throwable th) {
                    th = th;
                    closeable2 = closeable;
                    StreamUtils.closeQuietly(closeable2);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
            } catch (Throwable th2) {
                th = th2;
                StreamUtils.closeQuietly(closeable2);
                throw th;
            }
        }

        public static void write(FileHandle fileHandle, Pixmap pixmap) {
            DataOutputStream dataOutputStream;
            DataOutputStream dataOutputStream2 = null;
            try {
                try {
                    dataOutputStream = new DataOutputStream(new DeflaterOutputStream(fileHandle.write(false)));
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e) {
                e = e;
            }
            try {
                dataOutputStream.writeInt(pixmap.getWidth());
                dataOutputStream.writeInt(pixmap.getHeight());
                dataOutputStream.writeInt(Pixmap.Format.toGdx2DPixmapFormat(pixmap.getFormat()));
                ByteBuffer pixels = pixmap.getPixels();
                pixels.position(0);
                pixels.limit(pixels.capacity());
                int capacity = pixels.capacity() % 32000;
                int capacity2 = pixels.capacity() / 32000;
                synchronized (f3933a) {
                    for (int i = 0; i < capacity2; i++) {
                        byte[] bArr = f3933a;
                        pixels.get(bArr);
                        dataOutputStream.write(bArr);
                    }
                    byte[] bArr2 = f3933a;
                    pixels.get(bArr2, 0, capacity);
                    dataOutputStream.write(bArr2, 0, capacity);
                }
                pixels.position(0);
                pixels.limit(pixels.capacity());
                StreamUtils.closeQuietly(dataOutputStream);
            } catch (Exception e2) {
                e = e2;
                throw new GdxRuntimeException("Couldn't write Pixmap to file '" + fileHandle + "'", e);
            } catch (Throwable th2) {
                th = th2;
                dataOutputStream2 = dataOutputStream;
                StreamUtils.closeQuietly(dataOutputStream2);
                throw th;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class PNG implements Disposable {

        /* renamed from: s */
        public static final byte[] f3935s = {-119, 80, 78, 71, 13, 10, 26, 10};

        /* renamed from: a */
        public final ChunkBuffer f3936a;

        /* renamed from: b */
        public final Deflater f3937b;

        /* renamed from: d */
        public ByteArray f3938d;

        /* renamed from: k */
        public ByteArray f3939k;

        /* renamed from: p */
        public ByteArray f3940p;

        /* renamed from: q */
        public boolean f3941q;

        /* renamed from: r */
        public int f3942r;

        /* loaded from: classes.dex */
        public static class ChunkBuffer extends DataOutputStream {

            /* renamed from: a */
            public final ByteArrayOutputStream f3943a;

            /* renamed from: b */
            public final CRC32 f3944b;

            public ChunkBuffer(int i) {
                this(new ByteArrayOutputStream(i), new CRC32());
            }

            public ChunkBuffer(ByteArrayOutputStream byteArrayOutputStream, CRC32 crc32) {
                super(new CheckedOutputStream(byteArrayOutputStream, crc32));
                this.f3943a = byteArrayOutputStream;
                this.f3944b = crc32;
            }

            public void endChunk(DataOutputStream dataOutputStream) {
                flush();
                dataOutputStream.writeInt(this.f3943a.size() - 4);
                this.f3943a.writeTo(dataOutputStream);
                dataOutputStream.writeInt((int) this.f3944b.getValue());
                this.f3943a.reset();
                this.f3944b.reset();
            }
        }

        public PNG() {
            this(16384);
        }

        @Override // com.badlogic.gdx.utils.Disposable
        public void dispose() {
            this.f3937b.end();
        }

        public void setCompression(int i) {
            this.f3937b.setLevel(i);
        }

        public void setFlipY(boolean z) {
            this.f3941q = z;
        }

        public void write(FileHandle fileHandle, Pixmap pixmap) {
            OutputStream write = fileHandle.write(false);
            try {
                write(write, pixmap);
            } finally {
                StreamUtils.closeQuietly(write);
            }
        }

        public PNG(int i) {
            this.f3941q = true;
            this.f3936a = new ChunkBuffer(i);
            this.f3937b = new Deflater();
        }

        public void write(OutputStream outputStream, Pixmap pixmap) {
            byte[] ensureCapacity;
            byte[] ensureCapacity2;
            byte[] ensureCapacity3;
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(this.f3936a, this.f3937b);
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
            dataOutputStream.write(f3935s);
            this.f3936a.writeInt(1229472850);
            this.f3936a.writeInt(pixmap.getWidth());
            this.f3936a.writeInt(pixmap.getHeight());
            this.f3936a.writeByte(8);
            this.f3936a.writeByte(6);
            int i = 0;
            this.f3936a.writeByte(0);
            this.f3936a.writeByte(0);
            this.f3936a.writeByte(0);
            this.f3936a.endChunk(dataOutputStream);
            this.f3936a.writeInt(1229209940);
            this.f3937b.reset();
            int width = pixmap.getWidth() * 4;
            ByteArray byteArray = this.f3938d;
            if (byteArray == null) {
                ByteArray byteArray2 = new ByteArray(width);
                this.f3938d = byteArray2;
                ensureCapacity = byteArray2.items;
                ByteArray byteArray3 = new ByteArray(width);
                this.f3939k = byteArray3;
                ensureCapacity2 = byteArray3.items;
                ByteArray byteArray4 = new ByteArray(width);
                this.f3940p = byteArray4;
                ensureCapacity3 = byteArray4.items;
            } else {
                ensureCapacity = byteArray.ensureCapacity(width);
                ensureCapacity2 = this.f3939k.ensureCapacity(width);
                ensureCapacity3 = this.f3940p.ensureCapacity(width);
                int i2 = this.f3942r;
                for (int i3 = 0; i3 < i2; i3++) {
                    ensureCapacity3[i3] = 0;
                }
            }
            this.f3942r = width;
            ByteBuffer pixels = pixmap.getPixels();
            int position = pixels.position();
            int i4 = 1;
            boolean z = pixmap.getFormat() == Pixmap.Format.RGBA8888;
            int height = pixmap.getHeight();
            int i5 = 0;
            while (i5 < height) {
                int i6 = this.f3941q ? (height - i5) - i4 : i5;
                if (z) {
                    pixels.position(i6 * width);
                    pixels.get(ensureCapacity2, i, width);
                } else {
                    int i7 = 0;
                    int i8 = 0;
                    while (i7 < pixmap.getWidth()) {
                        int pixel = pixmap.getPixel(i7, i6);
                        int i9 = i8 + 1;
                        ensureCapacity2[i8] = (byte) ((pixel >> 24) & 255);
                        int i10 = i9 + 1;
                        int i11 = i6;
                        ensureCapacity2[i9] = (byte) ((pixel >> 16) & 255);
                        int i12 = i10 + 1;
                        ensureCapacity2[i10] = (byte) ((pixel >> 8) & 255);
                        int i13 = i12 + 1;
                        ensureCapacity2[i12] = (byte) (pixel & 255);
                        i7++;
                        i6 = i11;
                        z = z;
                        i8 = i13;
                    }
                }
                boolean z2 = z;
                ensureCapacity[0] = (byte) (ensureCapacity2[0] - ensureCapacity3[0]);
                ensureCapacity[1] = (byte) (ensureCapacity2[1] - ensureCapacity3[1]);
                ensureCapacity[2] = (byte) (ensureCapacity2[2] - ensureCapacity3[2]);
                ensureCapacity[3] = (byte) (ensureCapacity2[3] - ensureCapacity3[3]);
                int i14 = 4;
                while (i14 < width) {
                    int i15 = i14 - 4;
                    int i16 = ensureCapacity2[i15] & DefaultClassResolver.NAME;
                    int i17 = ensureCapacity3[i14] & DefaultClassResolver.NAME;
                    int i18 = ensureCapacity3[i15] & DefaultClassResolver.NAME;
                    int i19 = (i16 + i17) - i18;
                    int i20 = i19 - i16;
                    if (i20 < 0) {
                        i20 = -i20;
                    }
                    byte[] bArr = ensureCapacity3;
                    int i21 = i19 - i17;
                    if (i21 < 0) {
                        i21 = -i21;
                    }
                    int i22 = i19 - i18;
                    if (i22 < 0) {
                        i22 = -i22;
                    }
                    ensureCapacity[i14] = (byte) (ensureCapacity2[i14] - ((i20 > i21 || i20 > i22) ? i21 <= i22 ? i17 : i18 : i16));
                    i14++;
                    ensureCapacity3 = bArr;
                }
                byte[] bArr2 = ensureCapacity3;
                deflaterOutputStream.write(4);
                i = 0;
                deflaterOutputStream.write(ensureCapacity, 0, width);
                i5++;
                ensureCapacity3 = ensureCapacity2;
                z = z2;
                ensureCapacity2 = bArr2;
                i4 = 1;
            }
            pixels.position(position);
            deflaterOutputStream.finish();
            this.f3936a.endChunk(dataOutputStream);
            this.f3936a.writeInt(1229278788);
            this.f3936a.endChunk(dataOutputStream);
            outputStream.flush();
        }
    }

    public static Pixmap readCIM(FileHandle fileHandle) {
        return CIM.read(fileHandle);
    }

    public static void writeCIM(FileHandle fileHandle, Pixmap pixmap) {
        CIM.write(fileHandle, pixmap);
    }

    public static void writePNG(FileHandle fileHandle, Pixmap pixmap, int i, boolean z) {
        try {
            PNG png = new PNG((int) (pixmap.getWidth() * pixmap.getHeight() * 1.5f));
            png.setFlipY(z);
            png.setCompression(i);
            png.write(fileHandle, pixmap);
            png.dispose();
        } catch (IOException e) {
            throw new GdxRuntimeException("Error writing PNG: " + fileHandle, e);
        }
    }

    public static void writePNG(FileHandle fileHandle, Pixmap pixmap) {
        writePNG(fileHandle, pixmap, -1, false);
    }
}
