package com.badlogic.gdx.graphics;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.g2d.Gdx2DPixmap;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class Pixmap implements Disposable {

    /* renamed from: a */
    public Blending f3922a;

    /* renamed from: b */
    public Filter f3923b;

    /* renamed from: d */
    public final Gdx2DPixmap f3924d;

    /* renamed from: k */
    public int f3925k;

    /* renamed from: p */
    public boolean f3926p;

    /* loaded from: classes.dex */
    public enum Blending {
        None,
        SourceOver
    }

    /* loaded from: classes.dex */
    public interface DownloadPixmapResponseListener {
        void downloadComplete(Pixmap pixmap);

        void downloadFailed(Throwable th);
    }

    /* loaded from: classes.dex */
    public enum Filter {
        NearestNeighbour,
        BiLinear
    }

    /* loaded from: classes.dex */
    public enum Format {
        Alpha,
        Intensity,
        LuminanceAlpha,
        RGB565,
        RGBA4444,
        RGB888,
        RGBA8888;

        public static Format fromGdx2DPixmapFormat(int i) {
            if (i == 1) {
                return Alpha;
            }
            if (i == 2) {
                return LuminanceAlpha;
            }
            if (i == 5) {
                return RGB565;
            }
            if (i == 6) {
                return RGBA4444;
            }
            if (i == 3) {
                return RGB888;
            }
            if (i == 4) {
                return RGBA8888;
            }
            throw new GdxRuntimeException("Unknown Gdx2DPixmap Format: " + i);
        }

        public static int toGlFormat(Format format) {
            return Gdx2DPixmap.toGlFormat(toGdx2DPixmapFormat(format));
        }

        public static int toGlType(Format format) {
            return Gdx2DPixmap.toGlType(toGdx2DPixmapFormat(format));
        }

        public static int toGdx2DPixmapFormat(Format format) {
            if (format == Alpha || format == Intensity) {
                return 1;
            }
            if (format == LuminanceAlpha) {
                return 2;
            }
            if (format == RGB565) {
                return 5;
            }
            if (format == RGBA4444) {
                return 6;
            }
            if (format == RGB888) {
                return 3;
            }
            if (format == RGBA8888) {
                return 4;
            }
            throw new GdxRuntimeException("Unknown Format: " + format);
        }
    }

    public Pixmap(int i, int i2, Format format) {
        this.f3922a = Blending.SourceOver;
        this.f3923b = Filter.BiLinear;
        this.f3925k = 0;
        this.f3924d = new Gdx2DPixmap(i, i2, Format.toGdx2DPixmapFormat(format));
        setColor(0.0f, 0.0f, 0.0f, 0.0f);
        fill();
    }

    public void drawCircle(int i, int i2, int i3) {
        this.f3924d.drawCircle(i, i2, i3, this.f3925k);
    }

    public void drawLine(int i, int i2, int i3, int i4) {
        this.f3924d.drawLine(i, i2, i3, i4, this.f3925k);
    }

    public void drawPixel(int i, int i2) {
        this.f3924d.setPixel(i, i2, this.f3925k);
    }

    public void drawPixmap(Pixmap pixmap, int i, int i2) {
        drawPixmap(pixmap, i, i2, 0, 0, pixmap.getWidth(), pixmap.getHeight());
    }

    public void drawRectangle(int i, int i2, int i3, int i4) {
        this.f3924d.drawRect(i, i2, i3, i4, this.f3925k);
    }

    public void fill() {
        this.f3924d.clear(this.f3925k);
    }

    public void fillCircle(int i, int i2, int i3) {
        this.f3924d.fillCircle(i, i2, i3, this.f3925k);
    }

    public void fillRectangle(int i, int i2, int i3, int i4) {
        this.f3924d.fillRect(i, i2, i3, i4, this.f3925k);
    }

    public void fillTriangle(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f3924d.fillTriangle(i, i2, i3, i4, i5, i6, this.f3925k);
    }

    public Blending getBlending() {
        return this.f3922a;
    }

    public Filter getFilter() {
        return this.f3923b;
    }

    public Format getFormat() {
        return Format.fromGdx2DPixmapFormat(this.f3924d.getFormat());
    }

    public int getGLFormat() {
        return this.f3924d.getGLFormat();
    }

    public int getGLInternalFormat() {
        return this.f3924d.getGLInternalFormat();
    }

    public int getGLType() {
        return this.f3924d.getGLType();
    }

    public int getHeight() {
        return this.f3924d.getHeight();
    }

    public int getPixel(int i, int i2) {
        return this.f3924d.getPixel(i, i2);
    }

    public int getWidth() {
        return this.f3924d.getWidth();
    }

    public boolean isDisposed() {
        return this.f3926p;
    }

    public void setColor(int i) {
        this.f3925k = i;
    }

    /* renamed from: com.badlogic.gdx.graphics.Pixmap$1 */
    /* loaded from: classes.dex */
    public class C11931 implements Net.HttpResponseListener {

        /* renamed from: a */
        public final /* synthetic */ DownloadPixmapResponseListener f3927a;

        public C11931(DownloadPixmapResponseListener downloadPixmapResponseListener) {
            this.f3927a = downloadPixmapResponseListener;
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void cancelled() {
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void failed(Throwable th) {
            this.f3927a.downloadFailed(th);
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void handleHttpResponse(Net.HttpResponse httpResponse) {
            final byte[] result = httpResponse.getResult();
            Gdx.app.postRunnable(new Runnable() { // from class: com.badlogic.gdx.graphics.Pixmap.1.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        byte[] bArr = result;
                        C11931.this.f3927a.downloadComplete(new Pixmap(bArr, 0, bArr.length));
                    } catch (Throwable th) {
                        C11931.this.failed(th);
                    }
                }
            });
        }
    }

    public static Pixmap createFromFrameBuffer(int i, int i2, int i3, int i4) {
        Gdx.f3119gl.glPixelStorei(GL20.GL_PACK_ALIGNMENT, 1);
        Pixmap pixmap = new Pixmap(i3, i4, Format.RGBA8888);
        Gdx.f3119gl.glReadPixels(i, i2, i3, i4, GL20.GL_RGBA, GL20.GL_UNSIGNED_BYTE, pixmap.getPixels());
        return pixmap;
    }

    public static void downloadFromUrl(String str, DownloadPixmapResponseListener downloadPixmapResponseListener) {
        Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.GET);
        httpRequest.setUrl(str);
        Gdx.f38302net.sendHttpRequest(httpRequest, new C11931(downloadPixmapResponseListener));
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        if (!this.f3926p) {
            this.f3924d.dispose();
            this.f3926p = true;
            return;
        }
        throw new GdxRuntimeException("Pixmap already disposed!");
    }

    public void drawPixel(int i, int i2, int i3) {
        this.f3924d.setPixel(i, i2, i3);
    }

    public void drawPixmap(Pixmap pixmap, int i, int i2, int i3, int i4, int i5, int i6) {
        this.f3924d.drawPixmap(pixmap.f3924d, i3, i4, i, i2, i5, i6);
    }

    public ByteBuffer getPixels() {
        if (!this.f3926p) {
            return this.f3924d.getPixels();
        }
        throw new GdxRuntimeException("Pixmap already disposed");
    }

    public void setBlending(Blending blending) {
        int i;
        this.f3922a = blending;
        Gdx2DPixmap gdx2DPixmap = this.f3924d;
        if (blending == Blending.None) {
            i = 0;
        } else {
            i = 1;
        }
        gdx2DPixmap.setBlend(i);
    }

    public void setColor(float f, float f2, float f3, float f4) {
        this.f3925k = Color.rgba8888(f, f2, f3, f4);
    }

    public void setFilter(Filter filter) {
        int i;
        this.f3923b = filter;
        Gdx2DPixmap gdx2DPixmap = this.f3924d;
        if (filter == Filter.NearestNeighbour) {
            i = 0;
        } else {
            i = 1;
        }
        gdx2DPixmap.setScale(i);
    }

    public void setPixels(ByteBuffer byteBuffer) {
        ByteBuffer pixels = this.f3924d.getPixels();
        BufferUtils.copy(byteBuffer, pixels, pixels.limit());
    }

    public void drawPixmap(Pixmap pixmap, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.f3924d.drawPixmap(pixmap.f3924d, i, i2, i3, i4, i5, i6, i7, i8);
    }

    public void setColor(Color color) {
        this.f3925k = Color.rgba8888(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
    }

    public Pixmap(byte[] bArr, int i, int i2) {
        this.f3922a = Blending.SourceOver;
        this.f3923b = Filter.BiLinear;
        this.f3925k = 0;
        try {
            this.f3924d = new Gdx2DPixmap(bArr, i, i2, 0);
        } catch (IOException e) {
            throw new GdxRuntimeException("Couldn't load pixmap from image data", e);
        }
    }

    public Pixmap(ByteBuffer byteBuffer, int i, int i2) {
        this.f3922a = Blending.SourceOver;
        this.f3923b = Filter.BiLinear;
        this.f3925k = 0;
        if (byteBuffer.isDirect()) {
            try {
                this.f3924d = new Gdx2DPixmap(byteBuffer, i, i2, 0);
                return;
            } catch (IOException e) {
                throw new GdxRuntimeException("Couldn't load pixmap from image data", e);
            }
        }
        throw new GdxRuntimeException("Couldn't load pixmap from non-direct ByteBuffer");
    }

    public Pixmap(ByteBuffer byteBuffer) {
        this(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
    }

    public Pixmap(FileHandle fileHandle) {
        this.f3922a = Blending.SourceOver;
        this.f3923b = Filter.BiLinear;
        this.f3925k = 0;
        try {
            byte[] readBytes = fileHandle.readBytes();
            this.f3924d = new Gdx2DPixmap(readBytes, 0, readBytes.length, 0);
        } catch (Exception e) {
            throw new GdxRuntimeException("Couldn't load file: " + fileHandle, e);
        }
    }

    public Pixmap(Gdx2DPixmap gdx2DPixmap) {
        this.f3922a = Blending.SourceOver;
        this.f3923b = Filter.BiLinear;
        this.f3925k = 0;
        this.f3924d = gdx2DPixmap;
    }
}
