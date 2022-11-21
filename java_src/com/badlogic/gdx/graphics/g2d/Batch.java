package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Affine2;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.Disposable;
/* loaded from: classes.dex */
public interface Batch extends Disposable {

    /* renamed from: C1 */
    public static final int f3974C1 = 2;

    /* renamed from: C2 */
    public static final int f3975C2 = 7;

    /* renamed from: C3 */
    public static final int f3976C3 = 12;

    /* renamed from: C4 */
    public static final int f3977C4 = 17;

    /* renamed from: U1 */
    public static final int f3978U1 = 3;

    /* renamed from: U2 */
    public static final int f3979U2 = 8;

    /* renamed from: U3 */
    public static final int f3980U3 = 13;

    /* renamed from: U4 */
    public static final int f3981U4 = 18;

    /* renamed from: V1 */
    public static final int f3982V1 = 4;

    /* renamed from: V2 */
    public static final int f3983V2 = 9;

    /* renamed from: V3 */
    public static final int f3984V3 = 14;

    /* renamed from: V4 */
    public static final int f3985V4 = 19;

    /* renamed from: X1 */
    public static final int f3986X1 = 0;

    /* renamed from: X2 */
    public static final int f3987X2 = 5;

    /* renamed from: X3 */
    public static final int f3988X3 = 10;

    /* renamed from: X4 */
    public static final int f3989X4 = 15;

    /* renamed from: Y1 */
    public static final int f3990Y1 = 1;

    /* renamed from: Y2 */
    public static final int f3991Y2 = 6;

    /* renamed from: Y3 */
    public static final int f3992Y3 = 11;

    /* renamed from: Y4 */
    public static final int f3993Y4 = 16;

    void begin();

    void disableBlending();

    void draw(Texture texture, float f, float f2);

    void draw(Texture texture, float f, float f2, float f3, float f4);

    void draw(Texture texture, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8);

    void draw(Texture texture, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, int i, int i2, int i3, int i4, boolean z, boolean z2);

    void draw(Texture texture, float f, float f2, float f3, float f4, int i, int i2, int i3, int i4, boolean z, boolean z2);

    void draw(Texture texture, float f, float f2, int i, int i2, int i3, int i4);

    void draw(Texture texture, float[] fArr, int i, int i2);

    void draw(TextureRegion textureRegion, float f, float f2);

    void draw(TextureRegion textureRegion, float f, float f2, float f3, float f4);

    void draw(TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9);

    void draw(TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, boolean z);

    void draw(TextureRegion textureRegion, float f, float f2, Affine2 affine2);

    void enableBlending();

    void end();

    void flush();

    int getBlendDstFunc();

    int getBlendDstFuncAlpha();

    int getBlendSrcFunc();

    int getBlendSrcFuncAlpha();

    Color getColor();

    float getPackedColor();

    Matrix4 getProjectionMatrix();

    ShaderProgram getShader();

    Matrix4 getTransformMatrix();

    boolean isBlendingEnabled();

    boolean isDrawing();

    void setBlendFunction(int i, int i2);

    void setBlendFunctionSeparate(int i, int i2, int i3, int i4);

    void setColor(float f, float f2, float f3, float f4);

    void setColor(Color color);

    void setPackedColor(float f);

    void setProjectionMatrix(Matrix4 matrix4);

    void setShader(ShaderProgram shaderProgram);

    void setTransformMatrix(Matrix4 matrix4);
}
