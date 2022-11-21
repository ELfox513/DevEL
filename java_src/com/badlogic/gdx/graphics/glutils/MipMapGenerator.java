package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class MipMapGenerator {

    /* renamed from: a */
    public static boolean f5085a = true;

    public static void generateMipMap(Pixmap pixmap, int i, int i2) {
        generateMipMap(GL20.GL_TEXTURE_2D, pixmap, i, i2);
    }

    public static void setUseHardwareMipMap(boolean z) {
        f5085a = z;
    }

    /* renamed from: a */
    public static void m24010a(int i, Pixmap pixmap, int i2, int i3) {
        Gdx.f3119gl.glTexImage2D(i, 0, pixmap.getGLInternalFormat(), pixmap.getWidth(), pixmap.getHeight(), 0, pixmap.getGLFormat(), pixmap.getGLType(), pixmap.getPixels());
        if (Gdx.gl20 == null && i2 != i3) {
            throw new GdxRuntimeException("texture width and height must be square when using mipmapping.");
        }
        int width = pixmap.getWidth() / 2;
        int height = pixmap.getHeight() / 2;
        int i4 = 1;
        Pixmap pixmap2 = pixmap;
        while (width > 0 && height > 0) {
            Pixmap pixmap3 = new Pixmap(width, height, pixmap2.getFormat());
            pixmap3.setBlending(Pixmap.Blending.None);
            pixmap3.drawPixmap(pixmap2, 0, 0, pixmap2.getWidth(), pixmap2.getHeight(), 0, 0, width, height);
            if (i4 > 1) {
                pixmap2.dispose();
            }
            pixmap2 = pixmap3;
            Gdx.f3119gl.glTexImage2D(i, i4, pixmap3.getGLInternalFormat(), pixmap3.getWidth(), pixmap3.getHeight(), 0, pixmap3.getGLFormat(), pixmap3.getGLType(), pixmap3.getPixels());
            width = pixmap2.getWidth() / 2;
            height = pixmap2.getHeight() / 2;
            i4++;
        }
    }

    /* renamed from: b */
    public static void m24009b(int i, Pixmap pixmap, int i2, int i3) {
        if (!Gdx.graphics.supportsExtension("GL_ARB_framebuffer_object") && !Gdx.graphics.supportsExtension("GL_EXT_framebuffer_object") && !Gdx.gl20.getClass().getName().equals("com.badlogic.gdx.backends.lwjgl3.Lwjgl3GLES20") && Gdx.gl30 == null) {
            m24010a(i, pixmap, i2, i3);
            return;
        }
        Gdx.f3119gl.glTexImage2D(i, 0, pixmap.getGLInternalFormat(), pixmap.getWidth(), pixmap.getHeight(), 0, pixmap.getGLFormat(), pixmap.getGLType(), pixmap.getPixels());
        Gdx.gl20.glGenerateMipmap(i);
    }

    /* renamed from: c */
    public static void m24008c(int i, Pixmap pixmap) {
        Gdx.f3119gl.glTexImage2D(i, 0, pixmap.getGLInternalFormat(), pixmap.getWidth(), pixmap.getHeight(), 0, pixmap.getGLFormat(), pixmap.getGLType(), pixmap.getPixels());
        Gdx.gl20.glGenerateMipmap(i);
    }

    public static void generateMipMap(int i, Pixmap pixmap, int i2, int i3) {
        if (!f5085a) {
            m24010a(i, pixmap, i2, i3);
        } else if (Gdx.app.getType() != Application.ApplicationType.Android && Gdx.app.getType() != Application.ApplicationType.WebGL && Gdx.app.getType() != Application.ApplicationType.iOS) {
            m24009b(i, pixmap, i2, i3);
        } else {
            m24008c(i, pixmap);
        }
    }
}
