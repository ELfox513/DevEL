package com.badlogic.gdx.graphics.g3d.utils;

import com.badlogic.gdx.graphics.GLTexture;
import com.badlogic.gdx.graphics.Texture;
/* loaded from: classes.dex */
public class TextureDescriptor<T extends GLTexture> implements Comparable<TextureDescriptor<T>> {
    public Texture.TextureFilter magFilter;
    public Texture.TextureFilter minFilter;
    public T texture;
    public Texture.TextureWrap uWrap;
    public Texture.TextureWrap vWrap;

    public TextureDescriptor(T t, Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2, Texture.TextureWrap textureWrap, Texture.TextureWrap textureWrap2) {
        this.texture = null;
        set(t, textureFilter, textureFilter2, textureWrap, textureWrap2);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return compareTo((TextureDescriptor) ((TextureDescriptor) obj));
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof TextureDescriptor) {
            TextureDescriptor textureDescriptor = (TextureDescriptor) obj;
            return textureDescriptor.texture == this.texture && textureDescriptor.minFilter == this.minFilter && textureDescriptor.magFilter == this.magFilter && textureDescriptor.uWrap == this.uWrap && textureDescriptor.vWrap == this.vWrap;
        }
        return false;
    }

    public void set(T t, Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2, Texture.TextureWrap textureWrap, Texture.TextureWrap textureWrap2) {
        this.texture = t;
        this.minFilter = textureFilter;
        this.magFilter = textureFilter2;
        this.uWrap = textureWrap;
        this.vWrap = textureWrap2;
    }

    public int compareTo(TextureDescriptor<T> textureDescriptor) {
        if (textureDescriptor == this) {
            return 0;
        }
        T t = this.texture;
        int i = t == null ? 0 : t.glTarget;
        T t2 = textureDescriptor.texture;
        int i2 = t2 == null ? 0 : t2.glTarget;
        if (i != i2) {
            return i - i2;
        }
        int textureObjectHandle = t == null ? 0 : t.getTextureObjectHandle();
        T t3 = textureDescriptor.texture;
        int textureObjectHandle2 = t3 == null ? 0 : t3.getTextureObjectHandle();
        if (textureObjectHandle != textureObjectHandle2) {
            return textureObjectHandle - textureObjectHandle2;
        }
        Texture.TextureFilter textureFilter = this.minFilter;
        if (textureFilter != textureDescriptor.minFilter) {
            int gLEnum = textureFilter == null ? 0 : textureFilter.getGLEnum();
            Texture.TextureFilter textureFilter2 = textureDescriptor.minFilter;
            return gLEnum - (textureFilter2 != null ? textureFilter2.getGLEnum() : 0);
        }
        Texture.TextureFilter textureFilter3 = this.magFilter;
        if (textureFilter3 != textureDescriptor.magFilter) {
            int gLEnum2 = textureFilter3 == null ? 0 : textureFilter3.getGLEnum();
            Texture.TextureFilter textureFilter4 = textureDescriptor.magFilter;
            return gLEnum2 - (textureFilter4 != null ? textureFilter4.getGLEnum() : 0);
        }
        Texture.TextureWrap textureWrap = this.uWrap;
        if (textureWrap != textureDescriptor.uWrap) {
            int gLEnum3 = textureWrap == null ? 0 : textureWrap.getGLEnum();
            Texture.TextureWrap textureWrap2 = textureDescriptor.uWrap;
            return gLEnum3 - (textureWrap2 != null ? textureWrap2.getGLEnum() : 0);
        }
        Texture.TextureWrap textureWrap3 = this.vWrap;
        if (textureWrap3 != textureDescriptor.vWrap) {
            int gLEnum4 = textureWrap3 == null ? 0 : textureWrap3.getGLEnum();
            Texture.TextureWrap textureWrap4 = textureDescriptor.vWrap;
            return gLEnum4 - (textureWrap4 != null ? textureWrap4.getGLEnum() : 0);
        }
        return 0;
    }

    public int hashCode() {
        int i;
        int textureObjectHandle;
        int gLEnum;
        int gLEnum2;
        int gLEnum3;
        T t = this.texture;
        int i2 = 0;
        if (t == null) {
            i = 0;
        } else {
            i = t.glTarget;
        }
        long j = i * 811;
        if (t == null) {
            textureObjectHandle = 0;
        } else {
            textureObjectHandle = t.getTextureObjectHandle();
        }
        long j2 = (j + textureObjectHandle) * 811;
        Texture.TextureFilter textureFilter = this.minFilter;
        if (textureFilter == null) {
            gLEnum = 0;
        } else {
            gLEnum = textureFilter.getGLEnum();
        }
        long j3 = (j2 + gLEnum) * 811;
        Texture.TextureFilter textureFilter2 = this.magFilter;
        if (textureFilter2 == null) {
            gLEnum2 = 0;
        } else {
            gLEnum2 = textureFilter2.getGLEnum();
        }
        long j4 = (j3 + gLEnum2) * 811;
        Texture.TextureWrap textureWrap = this.uWrap;
        if (textureWrap == null) {
            gLEnum3 = 0;
        } else {
            gLEnum3 = textureWrap.getGLEnum();
        }
        long j5 = (j4 + gLEnum3) * 811;
        Texture.TextureWrap textureWrap2 = this.vWrap;
        if (textureWrap2 != null) {
            i2 = textureWrap2.getGLEnum();
        }
        long j6 = j5 + i2;
        return (int) ((j6 >> 32) ^ j6);
    }

    public TextureDescriptor(T t) {
        this(t, null, null, null, null);
    }

    public TextureDescriptor() {
        this.texture = null;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [T extends com.badlogic.gdx.graphics.GLTexture] */
    public <V extends T> void set(TextureDescriptor<V> textureDescriptor) {
        this.texture = textureDescriptor.texture;
        this.minFilter = textureDescriptor.minFilter;
        this.magFilter = textureDescriptor.magFilter;
        this.uWrap = textureDescriptor.uWrap;
        this.vWrap = textureDescriptor.vWrap;
    }
}
