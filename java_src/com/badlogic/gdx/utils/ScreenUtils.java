package com.badlogic.gdx.utils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class ScreenUtils {
    public static void clear(Color color) {
        clear(color.f3892r, color.f3891g, color.f3890b, color.f3889a, false);
    }

    public static byte[] getFrameBufferPixels(boolean z) {
        return getFrameBufferPixels(0, 0, Gdx.graphics.getBackBufferWidth(), Gdx.graphics.getBackBufferHeight(), z);
    }

    @Deprecated
    public static Pixmap getFrameBufferPixmap(int i, int i2, int i3, int i4) {
        return Pixmap.createFromFrameBuffer(i, i2, i3, i4);
    }

    public static TextureRegion getFrameBufferTexture() {
        return getFrameBufferTexture(0, 0, Gdx.graphics.getBackBufferWidth(), Gdx.graphics.getBackBufferHeight());
    }

    public static void clear(float f, float f2, float f3, float f4) {
        clear(f, f2, f3, f4, false);
    }

    public static void clear(Color color, boolean z) {
        clear(color.f3892r, color.f3891g, color.f3890b, color.f3889a, z);
    }

    public static void clear(float f, float f2, float f3, float f4, boolean z) {
        Gdx.f3119gl.glClearColor(f, f2, f3, f4);
        Gdx.f3119gl.glClear(z ? 16640 : 16384);
    }

    public static byte[] getFrameBufferPixels(int i, int i2, int i3, int i4, boolean z) {
        Gdx.f3119gl.glPixelStorei(GL20.GL_PACK_ALIGNMENT, 1);
        int i5 = i3 * i4 * 4;
        ByteBuffer newByteBuffer = BufferUtils.newByteBuffer(i5);
        Gdx.f3119gl.glReadPixels(i, i2, i3, i4, GL20.GL_RGBA, GL20.GL_UNSIGNED_BYTE, newByteBuffer);
        byte[] bArr = new byte[i5];
        if (z) {
            int i6 = i3 * 4;
            for (int i7 = 0; i7 < i4; i7++) {
                newByteBuffer.position(((i4 - i7) - 1) * i6);
                newByteBuffer.get(bArr, i7 * i6, i6);
            }
        } else {
            newByteBuffer.clear();
            newByteBuffer.get(bArr);
        }
        return bArr;
    }

    public static TextureRegion getFrameBufferTexture(int i, int i2, int i3, int i4) {
        int nextPowerOfTwo = MathUtils.nextPowerOfTwo(i3);
        int nextPowerOfTwo2 = MathUtils.nextPowerOfTwo(i4);
        Pixmap createFromFrameBuffer = Pixmap.createFromFrameBuffer(i, i2, i3, i4);
        Pixmap pixmap = new Pixmap(nextPowerOfTwo, nextPowerOfTwo2, Pixmap.Format.RGBA8888);
        pixmap.setBlending(Pixmap.Blending.None);
        pixmap.drawPixmap(createFromFrameBuffer, 0, 0);
        TextureRegion textureRegion = new TextureRegion(new Texture(pixmap), 0, i4, i3, -i4);
        pixmap.dispose();
        createFromFrameBuffer.dispose();
        return textureRegion;
    }
}
