package com.badlogic.gdx.graphics.g3d.utils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.GLTexture;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.nio.IntBuffer;
/* loaded from: classes.dex */
public final class DefaultTextureBinder implements TextureBinder {
    public static final int LRU = 1;
    public static final int MAX_GLES_UNITS = 32;
    public static final int ROUNDROBIN = 0;

    /* renamed from: a */
    public final int f4834a;

    /* renamed from: b */
    public final int f4835b;

    /* renamed from: c */
    public final GLTexture[] f4836c;

    /* renamed from: d */
    public int[] f4837d;

    /* renamed from: e */
    public final int f4838e;

    /* renamed from: f */
    public boolean f4839f;

    /* renamed from: g */
    public int f4840g;

    /* renamed from: h */
    public int f4841h;

    /* renamed from: i */
    public final TextureDescriptor f4842i;

    /* renamed from: j */
    public int f4843j;

    public DefaultTextureBinder(int i) {
        this(i, 0);
    }

    /* renamed from: b */
    public final int m24060b(GLTexture gLTexture) {
        int i;
        int i2 = 0;
        while (true) {
            i = this.f4835b;
            if (i2 >= i) {
                break;
            }
            GLTexture gLTexture2 = this.f4836c[this.f4837d[i2]];
            if (gLTexture2 == gLTexture) {
                this.f4839f = true;
                break;
            } else if (gLTexture2 == null) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 >= i) {
            i2 = i - 1;
        }
        int i3 = this.f4837d[i2];
        while (i2 > 0) {
            int[] iArr = this.f4837d;
            iArr[i2] = iArr[i2 - 1];
            i2--;
        }
        this.f4837d[0] = i3;
        if (!this.f4839f) {
            this.f4836c[i3] = gLTexture;
            gLTexture.bind(this.f4834a + i3);
        }
        return i3;
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.TextureBinder
    public void begin() {
        for (int i = 0; i < this.f4835b; i++) {
            this.f4836c[i] = null;
            int[] iArr = this.f4837d;
            if (iArr != null) {
                iArr[i] = i;
            }
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.TextureBinder
    public final int bind(TextureDescriptor textureDescriptor) {
        return m24061a(textureDescriptor, false);
    }

    /* renamed from: c */
    public final int m24059c(GLTexture gLTexture) {
        int i = 0;
        while (true) {
            int i2 = this.f4835b;
            if (i < i2) {
                int i3 = (this.f4843j + i) % i2;
                if (this.f4836c[i3] == gLTexture) {
                    this.f4839f = true;
                    return i3;
                }
                i++;
            } else {
                int i4 = (this.f4843j + 1) % i2;
                this.f4843j = i4;
                this.f4836c[i4] = gLTexture;
                gLTexture.bind(this.f4834a + i4);
                return this.f4843j;
            }
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.TextureBinder
    public void end() {
        Gdx.f3119gl.glActiveTexture(GL20.GL_TEXTURE0);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.TextureBinder
    public final int getBindCount() {
        return this.f4841h;
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.TextureBinder
    public final int getReuseCount() {
        return this.f4840g;
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.TextureBinder
    public final void resetCounts() {
        this.f4840g = 0;
        this.f4841h = 0;
    }

    public DefaultTextureBinder(int i, int i2) {
        this(i, i2, -1);
    }

    /* renamed from: d */
    public static int m24058d() {
        IntBuffer newIntBuffer = BufferUtils.newIntBuffer(16);
        Gdx.f3119gl.glGetIntegerv(GL20.GL_MAX_TEXTURE_IMAGE_UNITS, newIntBuffer);
        return newIntBuffer.get(0);
    }

    /* renamed from: a */
    public final int m24061a(TextureDescriptor textureDescriptor, boolean z) {
        int i;
        int m24059c;
        GLTexture gLTexture = textureDescriptor.texture;
        this.f4839f = false;
        int i2 = this.f4838e;
        if (i2 != 0) {
            if (i2 != 1) {
                return -1;
            }
            i = this.f4834a;
            m24059c = m24060b(gLTexture);
        } else {
            i = this.f4834a;
            m24059c = m24059c(gLTexture);
        }
        int i3 = i + m24059c;
        if (this.f4839f) {
            this.f4840g++;
            if (z) {
                gLTexture.bind(i3);
            } else {
                Gdx.f3119gl.glActiveTexture(GL20.GL_TEXTURE0 + i3);
            }
        } else {
            this.f4841h++;
        }
        gLTexture.unsafeSetWrap(textureDescriptor.uWrap, textureDescriptor.vWrap);
        gLTexture.unsafeSetFilter(textureDescriptor.minFilter, textureDescriptor.magFilter);
        return i3;
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.TextureBinder
    public final int bind(GLTexture gLTexture) {
        this.f4842i.set(gLTexture, null, null, null, null);
        return m24061a(this.f4842i, false);
    }

    public DefaultTextureBinder(int i, int i2, int i3) {
        this.f4840g = 0;
        this.f4841h = 0;
        this.f4842i = new TextureDescriptor();
        this.f4843j = 0;
        int min = Math.min(m24058d(), 32);
        i3 = i3 < 0 ? min - i2 : i3;
        if (i2 >= 0 && i3 >= 0 && i2 + i3 <= min) {
            this.f4838e = i;
            this.f4834a = i2;
            this.f4835b = i3;
            this.f4836c = new GLTexture[i3];
            this.f4837d = i == 1 ? new int[i3] : null;
            return;
        }
        throw new GdxRuntimeException("Illegal arguments");
    }
}
