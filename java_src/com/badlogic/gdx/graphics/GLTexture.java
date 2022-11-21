package com.badlogic.gdx.graphics;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.TextureData;
import com.badlogic.gdx.graphics.glutils.MipMapGenerator;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.Disposable;
import java.nio.FloatBuffer;
/* loaded from: classes.dex */
public abstract class GLTexture implements Disposable {

    /* renamed from: r */
    public static float f3903r;

    /* renamed from: a */
    public int f3904a;

    /* renamed from: b */
    public Texture.TextureFilter f3905b;

    /* renamed from: d */
    public Texture.TextureFilter f3906d;
    public final int glTarget;

    /* renamed from: k */
    public Texture.TextureWrap f3907k;

    /* renamed from: p */
    public Texture.TextureWrap f3908p;

    /* renamed from: q */
    public float f3909q;

    public GLTexture(int i) {
        this(i, Gdx.f3119gl.glGenTexture());
    }

    /* renamed from: b */
    public static void m24259b(int i, TextureData textureData) {
        uploadImageData(i, textureData, 0);
    }

    public void bind() {
        Gdx.f3119gl.glBindTexture(this.glTarget, this.f3904a);
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        m24260a();
    }

    public float getAnisotropicFilter() {
        return this.f3909q;
    }

    public abstract int getDepth();

    public abstract int getHeight();

    public Texture.TextureFilter getMagFilter() {
        return this.f3906d;
    }

    public Texture.TextureFilter getMinFilter() {
        return this.f3905b;
    }

    public int getTextureObjectHandle() {
        return this.f3904a;
    }

    public Texture.TextureWrap getUWrap() {
        return this.f3907k;
    }

    public Texture.TextureWrap getVWrap() {
        return this.f3908p;
    }

    public abstract int getWidth();

    public abstract boolean isManaged();

    public float unsafeSetAnisotropicFilter(float f) {
        return unsafeSetAnisotropicFilter(f, false);
    }

    public void unsafeSetFilter(Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2) {
        unsafeSetFilter(textureFilter, textureFilter2, false);
    }

    public void unsafeSetWrap(Texture.TextureWrap textureWrap, Texture.TextureWrap textureWrap2) {
        unsafeSetWrap(textureWrap, textureWrap2, false);
    }

    public GLTexture(int i, int i2) {
        Texture.TextureFilter textureFilter = Texture.TextureFilter.Nearest;
        this.f3905b = textureFilter;
        this.f3906d = textureFilter;
        Texture.TextureWrap textureWrap = Texture.TextureWrap.ClampToEdge;
        this.f3907k = textureWrap;
        this.f3908p = textureWrap;
        this.f3909q = 1.0f;
        this.glTarget = i;
        this.f3904a = i2;
    }

    public static float getMaxAnisotropicFilterLevel() {
        float f = f3903r;
        if (f > 0.0f) {
            return f;
        }
        if (Gdx.graphics.supportsExtension("GL_EXT_texture_filter_anisotropic")) {
            FloatBuffer newFloatBuffer = BufferUtils.newFloatBuffer(16);
            newFloatBuffer.position(0);
            newFloatBuffer.limit(newFloatBuffer.capacity());
            Gdx.gl20.glGetFloatv(GL20.GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT, newFloatBuffer);
            float f2 = newFloatBuffer.get(0);
            f3903r = f2;
            return f2;
        }
        f3903r = 1.0f;
        return 1.0f;
    }

    public static void uploadImageData(int i, TextureData textureData, int i2) {
        if (textureData == null) {
            return;
        }
        if (!textureData.isPrepared()) {
            textureData.prepare();
        }
        if (textureData.getType() == TextureData.TextureDataType.Custom) {
            textureData.consumeCustomData(i);
            return;
        }
        Pixmap consumePixmap = textureData.consumePixmap();
        boolean disposePixmap = textureData.disposePixmap();
        if (textureData.getFormat() != consumePixmap.getFormat()) {
            Pixmap pixmap = new Pixmap(consumePixmap.getWidth(), consumePixmap.getHeight(), textureData.getFormat());
            pixmap.setBlending(Pixmap.Blending.None);
            pixmap.drawPixmap(consumePixmap, 0, 0, 0, 0, consumePixmap.getWidth(), consumePixmap.getHeight());
            if (textureData.disposePixmap()) {
                consumePixmap.dispose();
            }
            consumePixmap = pixmap;
            disposePixmap = true;
        }
        Gdx.f3119gl.glPixelStorei(GL20.GL_UNPACK_ALIGNMENT, 1);
        if (textureData.useMipMaps()) {
            MipMapGenerator.generateMipMap(i, consumePixmap, consumePixmap.getWidth(), consumePixmap.getHeight());
        } else {
            Gdx.f3119gl.glTexImage2D(i, i2, consumePixmap.getGLInternalFormat(), consumePixmap.getWidth(), consumePixmap.getHeight(), 0, consumePixmap.getGLFormat(), consumePixmap.getGLType(), consumePixmap.getPixels());
        }
        if (disposePixmap) {
            consumePixmap.dispose();
        }
    }

    /* renamed from: a */
    public void m24260a() {
        int i = this.f3904a;
        if (i != 0) {
            Gdx.f3119gl.glDeleteTexture(i);
            this.f3904a = 0;
        }
    }

    public void bind(int i) {
        Gdx.f3119gl.glActiveTexture(i + GL20.GL_TEXTURE0);
        Gdx.f3119gl.glBindTexture(this.glTarget, this.f3904a);
    }

    public void setFilter(Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2) {
        this.f3905b = textureFilter;
        this.f3906d = textureFilter2;
        bind();
        Gdx.f3119gl.glTexParameteri(this.glTarget, GL20.GL_TEXTURE_MIN_FILTER, textureFilter.getGLEnum());
        Gdx.f3119gl.glTexParameteri(this.glTarget, GL20.GL_TEXTURE_MAG_FILTER, textureFilter2.getGLEnum());
    }

    public void setWrap(Texture.TextureWrap textureWrap, Texture.TextureWrap textureWrap2) {
        this.f3907k = textureWrap;
        this.f3908p = textureWrap2;
        bind();
        Gdx.f3119gl.glTexParameteri(this.glTarget, GL20.GL_TEXTURE_WRAP_S, textureWrap.getGLEnum());
        Gdx.f3119gl.glTexParameteri(this.glTarget, GL20.GL_TEXTURE_WRAP_T, textureWrap2.getGLEnum());
    }

    public float unsafeSetAnisotropicFilter(float f, boolean z) {
        float maxAnisotropicFilterLevel = getMaxAnisotropicFilterLevel();
        if (maxAnisotropicFilterLevel == 1.0f) {
            return 1.0f;
        }
        float min = Math.min(f, maxAnisotropicFilterLevel);
        if (z || !MathUtils.isEqual(min, this.f3909q, 0.1f)) {
            Gdx.gl20.glTexParameterf(GL20.GL_TEXTURE_2D, GL20.GL_TEXTURE_MAX_ANISOTROPY_EXT, min);
            this.f3909q = min;
            return min;
        }
        return this.f3909q;
    }

    public void unsafeSetFilter(Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2, boolean z) {
        if (textureFilter != null && (z || this.f3905b != textureFilter)) {
            Gdx.f3119gl.glTexParameteri(this.glTarget, GL20.GL_TEXTURE_MIN_FILTER, textureFilter.getGLEnum());
            this.f3905b = textureFilter;
        }
        if (textureFilter2 != null) {
            if (z || this.f3906d != textureFilter2) {
                Gdx.f3119gl.glTexParameteri(this.glTarget, GL20.GL_TEXTURE_MAG_FILTER, textureFilter2.getGLEnum());
                this.f3906d = textureFilter2;
            }
        }
    }

    public void unsafeSetWrap(Texture.TextureWrap textureWrap, Texture.TextureWrap textureWrap2, boolean z) {
        if (textureWrap != null && (z || this.f3907k != textureWrap)) {
            Gdx.f3119gl.glTexParameteri(this.glTarget, GL20.GL_TEXTURE_WRAP_S, textureWrap.getGLEnum());
            this.f3907k = textureWrap;
        }
        if (textureWrap2 != null) {
            if (z || this.f3908p != textureWrap2) {
                Gdx.f3119gl.glTexParameteri(this.glTarget, GL20.GL_TEXTURE_WRAP_T, textureWrap2.getGLEnum());
                this.f3908p = textureWrap2;
            }
        }
    }

    public float setAnisotropicFilter(float f) {
        float maxAnisotropicFilterLevel = getMaxAnisotropicFilterLevel();
        if (maxAnisotropicFilterLevel == 1.0f) {
            return 1.0f;
        }
        float min = Math.min(f, maxAnisotropicFilterLevel);
        if (MathUtils.isEqual(min, this.f3909q, 0.1f)) {
            return min;
        }
        bind();
        Gdx.gl20.glTexParameterf(GL20.GL_TEXTURE_2D, GL20.GL_TEXTURE_MAX_ANISOTROPY_EXT, min);
        this.f3909q = min;
        return min;
    }
}
