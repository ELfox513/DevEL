package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.GL30;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.glutils.GLFrameBuffer;
/* loaded from: classes.dex */
public class FloatFrameBuffer extends FrameBuffer {
    public FloatFrameBuffer() {
    }

    public FloatFrameBuffer(GLFrameBuffer.GLFrameBufferBuilder<? extends GLFrameBuffer<Texture>> gLFrameBufferBuilder) {
        super(gLFrameBufferBuilder);
    }

    @Override // com.badlogic.gdx.graphics.glutils.FrameBuffer, com.badlogic.gdx.graphics.glutils.GLFrameBuffer
    /* renamed from: i */
    public Texture mo24024e(GLFrameBuffer.FrameBufferTextureAttachmentSpec frameBufferTextureAttachmentSpec) {
        GLFrameBuffer.GLFrameBufferBuilder<? extends GLFrameBuffer<T>> gLFrameBufferBuilder = this.f4983s;
        Texture texture = new Texture(new FloatTextureData(gLFrameBufferBuilder.f4992a, gLFrameBufferBuilder.f4993b, frameBufferTextureAttachmentSpec.f4985a, frameBufferTextureAttachmentSpec.f4986b, frameBufferTextureAttachmentSpec.f4987c, frameBufferTextureAttachmentSpec.f4989e));
        if (Gdx.app.getType() != Application.ApplicationType.Desktop && Gdx.app.getType() != Application.ApplicationType.Applet) {
            Texture.TextureFilter textureFilter = Texture.TextureFilter.Nearest;
            texture.setFilter(textureFilter, textureFilter);
        } else {
            Texture.TextureFilter textureFilter2 = Texture.TextureFilter.Linear;
            texture.setFilter(textureFilter2, textureFilter2);
        }
        Texture.TextureWrap textureWrap = Texture.TextureWrap.ClampToEdge;
        texture.setWrap(textureWrap, textureWrap);
        return texture;
    }

    public FloatFrameBuffer(int i, int i2, boolean z) {
        GLFrameBuffer.FloatFrameBufferBuilder floatFrameBufferBuilder = new GLFrameBuffer.FloatFrameBufferBuilder(i, i2);
        floatFrameBufferBuilder.addFloatAttachment(GL30.GL_RGBA32F, GL20.GL_RGBA, GL20.GL_FLOAT, false);
        if (z) {
            floatFrameBufferBuilder.addBasicDepthRenderBuffer();
        }
        this.f4983s = floatFrameBufferBuilder;
        m24026c();
    }
}
