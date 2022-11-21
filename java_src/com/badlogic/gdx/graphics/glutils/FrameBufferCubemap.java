package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Cubemap;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.glutils.GLFrameBuffer;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class FrameBufferCubemap extends GLFrameBuffer<Cubemap> {

    /* renamed from: x */
    public static final Cubemap.CubemapSide[] f4971x = Cubemap.CubemapSide.values();

    /* renamed from: w */
    public int f4972w;

    public FrameBufferCubemap() {
    }

    @Override // com.badlogic.gdx.graphics.glutils.GLFrameBuffer
    public void bind() {
        this.f4972w = -1;
        super.bind();
    }

    public Cubemap.CubemapSide getSide() {
        int i = this.f4972w;
        if (i < 0) {
            return null;
        }
        return f4971x[i];
    }

    @Override // com.badlogic.gdx.graphics.glutils.GLFrameBuffer
    /* renamed from: k */
    public void mo24023f(Cubemap cubemap) {
        cubemap.dispose();
    }

    public FrameBufferCubemap(GLFrameBuffer.GLFrameBufferBuilder<? extends GLFrameBuffer<Cubemap>> gLFrameBufferBuilder) {
        super(gLFrameBufferBuilder);
    }

    @Override // com.badlogic.gdx.graphics.glutils.GLFrameBuffer
    /* renamed from: h */
    public void mo24027b(Cubemap cubemap) {
        GL20 gl20 = Gdx.gl20;
        int textureObjectHandle = cubemap.getTextureObjectHandle();
        for (Cubemap.CubemapSide cubemapSide : Cubemap.CubemapSide.values()) {
            gl20.glFramebufferTexture2D(GL20.GL_FRAMEBUFFER, GL20.GL_COLOR_ATTACHMENT0, cubemapSide.glEnum, textureObjectHandle, 0);
        }
    }

    /* renamed from: i */
    public void m24031i(Cubemap.CubemapSide cubemapSide) {
        Gdx.gl20.glFramebufferTexture2D(GL20.GL_FRAMEBUFFER, GL20.GL_COLOR_ATTACHMENT0, cubemapSide.glEnum, getColorBufferTexture().getTextureObjectHandle(), 0);
    }

    @Override // com.badlogic.gdx.graphics.glutils.GLFrameBuffer
    /* renamed from: j */
    public Cubemap mo24024e(GLFrameBuffer.FrameBufferTextureAttachmentSpec frameBufferTextureAttachmentSpec) {
        GLFrameBuffer.GLFrameBufferBuilder<? extends GLFrameBuffer<T>> gLFrameBufferBuilder = this.f4983s;
        GLOnlyTextureData gLOnlyTextureData = new GLOnlyTextureData(gLFrameBufferBuilder.f4992a, gLFrameBufferBuilder.f4993b, 0, frameBufferTextureAttachmentSpec.f4985a, frameBufferTextureAttachmentSpec.f4986b, frameBufferTextureAttachmentSpec.f4987c);
        Cubemap cubemap = new Cubemap(gLOnlyTextureData, gLOnlyTextureData, gLOnlyTextureData, gLOnlyTextureData, gLOnlyTextureData, gLOnlyTextureData);
        Texture.TextureFilter textureFilter = Texture.TextureFilter.Linear;
        cubemap.setFilter(textureFilter, textureFilter);
        Texture.TextureWrap textureWrap = Texture.TextureWrap.ClampToEdge;
        cubemap.setWrap(textureWrap, textureWrap);
        return cubemap;
    }

    public boolean nextSide() {
        int i = this.f4972w;
        if (i <= 5) {
            if (i == 5) {
                return false;
            }
            this.f4972w = i + 1;
            m24031i(getSide());
            return true;
        }
        throw new GdxRuntimeException("No remaining sides.");
    }

    public FrameBufferCubemap(Pixmap.Format format, int i, int i2, boolean z) {
        this(format, i, i2, z, false);
    }

    public FrameBufferCubemap(Pixmap.Format format, int i, int i2, boolean z, boolean z2) {
        GLFrameBuffer.FrameBufferCubemapBuilder frameBufferCubemapBuilder = new GLFrameBuffer.FrameBufferCubemapBuilder(i, i2);
        frameBufferCubemapBuilder.addBasicColorTextureAttachment(format);
        if (z) {
            frameBufferCubemapBuilder.addBasicDepthRenderBuffer();
        }
        if (z2) {
            frameBufferCubemapBuilder.addBasicStencilRenderBuffer();
        }
        this.f4983s = frameBufferCubemapBuilder;
        m24026c();
    }
}
