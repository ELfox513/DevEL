package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class Gdx2DPixmap implements Disposable {
    public static final int GDX2D_BLEND_NONE = 0;
    public static final int GDX2D_BLEND_SRC_OVER = 1;
    public static final int GDX2D_FORMAT_ALPHA = 1;
    public static final int GDX2D_FORMAT_LUMINANCE_ALPHA = 2;
    public static final int GDX2D_FORMAT_RGB565 = 5;
    public static final int GDX2D_FORMAT_RGB888 = 3;
    public static final int GDX2D_FORMAT_RGBA4444 = 6;
    public static final int GDX2D_FORMAT_RGBA8888 = 4;
    public static final int GDX2D_SCALE_LINEAR = 1;
    public static final int GDX2D_SCALE_NEAREST = 0;

    /* renamed from: a */
    public long f4025a;

    /* renamed from: b */
    public int f4026b;

    /* renamed from: d */
    public int f4027d;

    /* renamed from: k */
    public int f4028k;

    /* renamed from: p */
    public ByteBuffer f4029p;

    /* renamed from: q */
    public long[] f4030q;

    public Gdx2DPixmap(byte[] bArr, int i, int i2, int i3) {
        long[] jArr = new long[4];
        this.f4030q = jArr;
        ByteBuffer load = load(jArr, bArr, i, i2);
        this.f4029p = load;
        if (load != null) {
            long[] jArr2 = this.f4030q;
            this.f4025a = jArr2[0];
            this.f4026b = (int) jArr2[1];
            this.f4027d = (int) jArr2[2];
            int i4 = (int) jArr2[3];
            this.f4028k = i4;
            if (i3 == 0 || i3 == i4) {
                return;
            }
            m24230a(i3);
            return;
        }
        throw new IOException("Error loading pixmap: " + getFailureReason());
    }

    /* renamed from: b */
    public static String m24229b(int i) {
        switch (i) {
            case 1:
                return "alpha";
            case 2:
                return "luminance alpha";
            case 3:
                return "rgb888";
            case 4:
                return "rgba8888";
            case 5:
                return "rgb565";
            case 6:
                return "rgba4444";
            default:
                return "unknown";
        }
    }

    private static native void clear(long j, int i);

    private static native void drawCircle(long j, int i, int i2, int i3, int i4);

    private static native void drawLine(long j, int i, int i2, int i3, int i4, int i5);

    private static native void drawPixmap(long j, long j2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8);

    private static native void drawRect(long j, int i, int i2, int i3, int i4, int i5);

    private static native void fillCircle(long j, int i, int i2, int i3, int i4);

    private static native void fillRect(long j, int i, int i2, int i3, int i4, int i5);

    private static native void fillTriangle(long j, int i, int i2, int i3, int i4, int i5, int i6, int i7);

    private static native void free(long j);

    public static native String getFailureReason();

    private static native int getPixel(long j, int i, int i2);

    private static native ByteBuffer load(long[] jArr, byte[] bArr, int i, int i2);

    private static native ByteBuffer loadByteBuffer(long[] jArr, ByteBuffer byteBuffer, int i, int i2);

    public static Gdx2DPixmap newPixmap(InputStream inputStream, int i) {
        try {
            return new Gdx2DPixmap(inputStream, i);
        } catch (IOException unused) {
            return null;
        }
    }

    private static native ByteBuffer newPixmap(long[] jArr, int i, int i2, int i3);

    private static native void setBlend(long j, int i);

    private static native void setPixel(long j, int i, int i2, int i3);

    private static native void setScale(long j, int i);

    public static int toGlFormat(int i) {
        switch (i) {
            case 1:
                return GL20.GL_ALPHA;
            case 2:
                return GL20.GL_LUMINANCE_ALPHA;
            case 3:
            case 5:
                return GL20.GL_RGB;
            case 4:
            case 6:
                return GL20.GL_RGBA;
            default:
                throw new GdxRuntimeException("unknown format: " + i);
        }
    }

    public static int toGlType(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
                return GL20.GL_UNSIGNED_BYTE;
            case 5:
                return GL20.GL_UNSIGNED_SHORT_5_6_5;
            case 6:
                return GL20.GL_UNSIGNED_SHORT_4_4_4_4;
            default:
                throw new GdxRuntimeException("unknown format: " + i);
        }
    }

    public void clear(int i) {
        clear(this.f4025a, i);
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        free(this.f4025a);
    }

    public void drawCircle(int i, int i2, int i3, int i4) {
        drawCircle(this.f4025a, i, i2, i3, i4);
    }

    public void drawLine(int i, int i2, int i3, int i4, int i5) {
        drawLine(this.f4025a, i, i2, i3, i4, i5);
    }

    public void drawPixmap(Gdx2DPixmap gdx2DPixmap, int i, int i2, int i3, int i4, int i5, int i6) {
        drawPixmap(gdx2DPixmap.f4025a, this.f4025a, i, i2, i5, i6, i3, i4, i5, i6);
    }

    public void drawRect(int i, int i2, int i3, int i4, int i5) {
        drawRect(this.f4025a, i, i2, i3, i4, i5);
    }

    public void fillCircle(int i, int i2, int i3, int i4) {
        fillCircle(this.f4025a, i, i2, i3, i4);
    }

    public void fillRect(int i, int i2, int i3, int i4, int i5) {
        fillRect(this.f4025a, i, i2, i3, i4, i5);
    }

    public void fillTriangle(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        fillTriangle(this.f4025a, i, i2, i3, i4, i5, i6, i7);
    }

    public int getFormat() {
        return this.f4028k;
    }

    public String getFormatString() {
        return m24229b(this.f4028k);
    }

    public int getGLFormat() {
        return getGLInternalFormat();
    }

    public int getGLInternalFormat() {
        return toGlFormat(this.f4028k);
    }

    public int getGLType() {
        return toGlType(this.f4028k);
    }

    public int getHeight() {
        return this.f4027d;
    }

    public int getPixel(int i, int i2) {
        return getPixel(this.f4025a, i, i2);
    }

    public ByteBuffer getPixels() {
        return this.f4029p;
    }

    public int getWidth() {
        return this.f4026b;
    }

    public void setBlend(int i) {
        setBlend(this.f4025a, i);
    }

    public void setPixel(int i, int i2, int i3) {
        setPixel(this.f4025a, i, i2, i3);
    }

    public void setScale(int i) {
        setScale(this.f4025a, i);
    }

    public static Gdx2DPixmap newPixmap(int i, int i2, int i3) {
        try {
            return new Gdx2DPixmap(i, i2, i3);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    /* renamed from: a */
    public final void m24230a(int i) {
        Gdx2DPixmap gdx2DPixmap = new Gdx2DPixmap(this.f4026b, this.f4027d, i);
        gdx2DPixmap.setBlend(0);
        gdx2DPixmap.drawPixmap(this, 0, 0, 0, 0, this.f4026b, this.f4027d);
        dispose();
        this.f4025a = gdx2DPixmap.f4025a;
        this.f4028k = gdx2DPixmap.f4028k;
        this.f4027d = gdx2DPixmap.f4027d;
        this.f4030q = gdx2DPixmap.f4030q;
        this.f4029p = gdx2DPixmap.f4029p;
        this.f4026b = gdx2DPixmap.f4026b;
    }

    public void drawPixmap(Gdx2DPixmap gdx2DPixmap, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        drawPixmap(gdx2DPixmap.f4025a, this.f4025a, i, i2, i3, i4, i5, i6, i7, i8);
    }

    public Gdx2DPixmap(ByteBuffer byteBuffer, int i, int i2, int i3) {
        long[] jArr = new long[4];
        this.f4030q = jArr;
        ByteBuffer loadByteBuffer = loadByteBuffer(jArr, byteBuffer, i, i2);
        this.f4029p = loadByteBuffer;
        if (loadByteBuffer != null) {
            long[] jArr2 = this.f4030q;
            this.f4025a = jArr2[0];
            this.f4026b = (int) jArr2[1];
            this.f4027d = (int) jArr2[2];
            int i4 = (int) jArr2[3];
            this.f4028k = i4;
            if (i3 == 0 || i3 == i4) {
                return;
            }
            m24230a(i3);
            return;
        }
        throw new IOException("Error loading pixmap: " + getFailureReason());
    }

    public Gdx2DPixmap(InputStream inputStream, int i) {
        this.f4030q = new long[4];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                break;
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        ByteBuffer load = load(this.f4030q, byteArray, 0, byteArray.length);
        this.f4029p = load;
        if (load != null) {
            long[] jArr = this.f4030q;
            this.f4025a = jArr[0];
            this.f4026b = (int) jArr[1];
            this.f4027d = (int) jArr[2];
            int i2 = (int) jArr[3];
            this.f4028k = i2;
            if (i == 0 || i == i2) {
                return;
            }
            m24230a(i);
            return;
        }
        throw new IOException("Error loading pixmap: " + getFailureReason());
    }

    public Gdx2DPixmap(int i, int i2, int i3) {
        long[] jArr = new long[4];
        this.f4030q = jArr;
        ByteBuffer newPixmap = newPixmap(jArr, i, i2, i3);
        this.f4029p = newPixmap;
        if (newPixmap != null) {
            long[] jArr2 = this.f4030q;
            this.f4025a = jArr2[0];
            this.f4026b = (int) jArr2[1];
            this.f4027d = (int) jArr2[2];
            this.f4028k = (int) jArr2[3];
            return;
        }
        throw new GdxRuntimeException("Unable to allocate memory for pixmap: " + i + "x" + i2 + ", " + m24229b(i3));
    }

    public Gdx2DPixmap(ByteBuffer byteBuffer, long[] jArr) {
        this.f4030q = new long[4];
        this.f4029p = byteBuffer;
        this.f4025a = jArr[0];
        this.f4026b = (int) jArr[1];
        this.f4027d = (int) jArr[2];
        this.f4028k = (int) jArr[3];
    }
}
