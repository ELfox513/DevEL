package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.glutils.GLFrameBuffer;
/* loaded from: classes.dex */
public class FrameBuffer extends GLFrameBuffer<Texture> {
    public FrameBuffer() {
    }

    public static void unbind() {
        GLFrameBuffer.unbind();
    }

    @Override // com.badlogic.gdx.graphics.glutils.GLFrameBuffer
    /* renamed from: j */
    public void mo24023f(Texture texture) {
        texture.dispose();
    }

    public FrameBuffer(GLFrameBuffer.GLFrameBufferBuilder<? extends GLFrameBuffer<Texture>> gLFrameBufferBuilder) {
        super(gLFrameBufferBuilder);
    }

    @Override // com.badlogic.gdx.graphics.glutils.GLFrameBuffer
    /* renamed from: h */
    public void mo24027b(Texture texture) {
        Gdx.gl20.glFramebufferTexture2D(GL20.GL_FRAMEBUFFER, GL20.GL_COLOR_ATTACHMENT0, GL20.GL_TEXTURE_2D, texture.getTextureObjectHandle(), 0);
    }

    @Override // com.badlogic.gdx.graphics.glutils.GLFrameBuffer
    /* renamed from: i */
    public Texture mo24024e(GLFrameBuffer.FrameBufferTextureAttachmentSpec frameBufferTextureAttachmentSpec) {
        GLFrameBuffer.GLFrameBufferBuilder<? extends GLFrameBuffer<T>> gLFrameBufferBuilder = this.f4983s;
        Texture texture = new Texture(new GLOnlyTextureData(gLFrameBufferBuilder.f4992a, gLFrameBufferBuilder.f4993b, 0, frameBufferTextureAttachmentSpec.f4985a, frameBufferTextureAttachmentSpec.f4986b, frameBufferTextureAttachmentSpec.f4987c));
        Texture.TextureFilter textureFilter = Texture.TextureFilter.Linear;
        texture.setFilter(textureFilter, textureFilter);
        Texture.TextureWrap textureWrap = Texture.TextureWrap.ClampToEdge;
        texture.setWrap(textureWrap, textureWrap);
        return texture;
    }

    public FrameBuffer(Pixmap.Format format, int i, int i2, boolean z) {
        this(format, i, i2, z, false);
    }

    public FrameBuffer(Pixmap.Format format, int i, int i2, boolean z, boolean z2) {
        GLFrameBuffer.FrameBufferBuilder frameBufferBuilder = new GLFrameBuffer.FrameBufferBuilder(i, i2);
        frameBufferBuilder.addBasicColorTextureAttachment(format);
        if (z) {
            frameBufferBuilder.addBasicDepthRenderBuffer();
        }
        if (z2) {
            frameBufferBuilder.addBasicStencilRenderBuffer();
        }
        this.f4983s = frameBufferBuilder;
        m24026c();
    }
}
