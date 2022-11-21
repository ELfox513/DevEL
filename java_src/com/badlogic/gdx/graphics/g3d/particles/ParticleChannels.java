package com.badlogic.gdx.graphics.g3d.particles;

import com.badlogic.gdx.graphics.g3d.ModelInstance;
import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
import java.util.Arrays;
/* loaded from: classes.dex */
public class ParticleChannels {
    public static final ParallelArray.ChannelDescriptor Acceleration;
    public static final int AlphaOffset = 3;
    public static final ParallelArray.ChannelDescriptor AngularVelocity2D;
    public static final ParallelArray.ChannelDescriptor AngularVelocity3D;
    public static final int BlueOffset = 2;
    public static final ParallelArray.ChannelDescriptor Color;
    public static final int CosineOffset = 0;
    public static final int CurrentLifeOffset = 0;
    public static final int GreenOffset = 1;
    public static final int HalfHeightOffset = 5;
    public static final int HalfWidthOffset = 4;
    public static final ParallelArray.ChannelDescriptor Interpolation;
    public static final ParallelArray.ChannelDescriptor Interpolation4;
    public static final ParallelArray.ChannelDescriptor Interpolation6;
    public static final int InterpolationDiffOffset = 1;
    public static final int InterpolationStartOffset = 0;
    public static final ParallelArray.ChannelDescriptor Life;
    public static final int LifePercentOffset = 2;
    public static final ParallelArray.ChannelDescriptor ModelInstance;
    public static final ParallelArray.ChannelDescriptor ParticleController;
    public static final ParallelArray.ChannelDescriptor Position;
    public static final ParallelArray.ChannelDescriptor PreviousPosition;
    public static final int RedOffset = 0;
    public static final ParallelArray.ChannelDescriptor Rotation2D;
    public static final ParallelArray.ChannelDescriptor Rotation3D;
    public static final ParallelArray.ChannelDescriptor Scale;
    public static final int SineOffset = 1;
    public static final ParallelArray.ChannelDescriptor TextureRegion;
    public static final int TotalLifeOffset = 1;
    public static final int U2Offset = 2;
    public static final int UOffset = 0;
    public static final int V2Offset = 3;
    public static final int VOffset = 1;
    public static final int VelocityPhiDiffOffset = 3;
    public static final int VelocityPhiStartOffset = 2;
    public static final int VelocityStrengthDiffOffset = 1;
    public static final int VelocityStrengthStartOffset = 0;
    public static final int VelocityThetaDiffOffset = 1;
    public static final int VelocityThetaStartOffset = 0;
    public static final int WOffset = 3;
    public static final int XOffset = 0;
    public static final int YOffset = 1;
    public static final int ZOffset = 2;

    /* renamed from: b */
    public static int f4507b;

    /* renamed from: a */
    public int f4508a;

    /* loaded from: classes.dex */
    public static class ColorInitializer implements ParallelArray.ChannelInitializer<ParallelArray.FloatChannel> {

        /* renamed from: a */
        public static ColorInitializer f4509a;

        public static ColorInitializer get() {
            if (f4509a == null) {
                f4509a = new ColorInitializer();
            }
            return f4509a;
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParallelArray.ChannelInitializer
        public void init(ParallelArray.FloatChannel floatChannel) {
            float[] fArr = floatChannel.data;
            Arrays.fill(fArr, 0, fArr.length, 1.0f);
        }
    }

    /* loaded from: classes.dex */
    public static class Rotation2dInitializer implements ParallelArray.ChannelInitializer<ParallelArray.FloatChannel> {

        /* renamed from: a */
        public static Rotation2dInitializer f4510a;

        public static Rotation2dInitializer get() {
            if (f4510a == null) {
                f4510a = new Rotation2dInitializer();
            }
            return f4510a;
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParallelArray.ChannelInitializer
        public void init(ParallelArray.FloatChannel floatChannel) {
            int length = floatChannel.data.length;
            int i = 0;
            while (i < length) {
                float[] fArr = floatChannel.data;
                fArr[i + 0] = 1.0f;
                fArr[i + 1] = 0.0f;
                i += floatChannel.strideSize;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class Rotation3dInitializer implements ParallelArray.ChannelInitializer<ParallelArray.FloatChannel> {

        /* renamed from: a */
        public static Rotation3dInitializer f4511a;

        public static Rotation3dInitializer get() {
            if (f4511a == null) {
                f4511a = new Rotation3dInitializer();
            }
            return f4511a;
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParallelArray.ChannelInitializer
        public void init(ParallelArray.FloatChannel floatChannel) {
            int length = floatChannel.data.length;
            int i = 0;
            while (i < length) {
                float[] fArr = floatChannel.data;
                fArr[i + 2] = 0.0f;
                fArr[i + 1] = 0.0f;
                fArr[i + 0] = 0.0f;
                fArr[i + 3] = 1.0f;
                i += floatChannel.strideSize;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class ScaleInitializer implements ParallelArray.ChannelInitializer<ParallelArray.FloatChannel> {

        /* renamed from: a */
        public static ScaleInitializer f4512a;

        public static ScaleInitializer get() {
            if (f4512a == null) {
                f4512a = new ScaleInitializer();
            }
            return f4512a;
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParallelArray.ChannelInitializer
        public void init(ParallelArray.FloatChannel floatChannel) {
            float[] fArr = floatChannel.data;
            Arrays.fill(fArr, 0, fArr.length, 1.0f);
        }
    }

    /* loaded from: classes.dex */
    public static class TextureRegionInitializer implements ParallelArray.ChannelInitializer<ParallelArray.FloatChannel> {

        /* renamed from: a */
        public static TextureRegionInitializer f4513a;

        public static TextureRegionInitializer get() {
            if (f4513a == null) {
                f4513a = new TextureRegionInitializer();
            }
            return f4513a;
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParallelArray.ChannelInitializer
        public void init(ParallelArray.FloatChannel floatChannel) {
            int length = floatChannel.data.length;
            int i = 0;
            while (i < length) {
                float[] fArr = floatChannel.data;
                fArr[i + 0] = 0.0f;
                fArr[i + 1] = 0.0f;
                fArr[i + 2] = 1.0f;
                fArr[i + 3] = 1.0f;
                fArr[i + 4] = 0.5f;
                fArr[i + 5] = 0.5f;
                i += floatChannel.strideSize;
            }
        }
    }

    public static int newGlobalId() {
        int i = f4507b;
        f4507b = i + 1;
        return i;
    }

    /* renamed from: a */
    public void m24121a() {
        this.f4508a = f4507b;
    }

    public int newId() {
        int i = this.f4508a;
        this.f4508a = i + 1;
        return i;
    }

    static {
        int newGlobalId = newGlobalId();
        Class cls = Float.TYPE;
        Life = new ParallelArray.ChannelDescriptor(newGlobalId, cls, 3);
        Position = new ParallelArray.ChannelDescriptor(newGlobalId(), cls, 3);
        PreviousPosition = new ParallelArray.ChannelDescriptor(newGlobalId(), cls, 3);
        Color = new ParallelArray.ChannelDescriptor(newGlobalId(), cls, 4);
        TextureRegion = new ParallelArray.ChannelDescriptor(newGlobalId(), cls, 6);
        Rotation2D = new ParallelArray.ChannelDescriptor(newGlobalId(), cls, 2);
        Rotation3D = new ParallelArray.ChannelDescriptor(newGlobalId(), cls, 4);
        Scale = new ParallelArray.ChannelDescriptor(newGlobalId(), cls, 1);
        ModelInstance = new ParallelArray.ChannelDescriptor(newGlobalId(), ModelInstance.class, 1);
        ParticleController = new ParallelArray.ChannelDescriptor(newGlobalId(), ParticleController.class, 1);
        Acceleration = new ParallelArray.ChannelDescriptor(newGlobalId(), cls, 3);
        AngularVelocity2D = new ParallelArray.ChannelDescriptor(newGlobalId(), cls, 1);
        AngularVelocity3D = new ParallelArray.ChannelDescriptor(newGlobalId(), cls, 3);
        Interpolation = new ParallelArray.ChannelDescriptor(-1, cls, 2);
        Interpolation4 = new ParallelArray.ChannelDescriptor(-1, cls, 4);
        Interpolation6 = new ParallelArray.ChannelDescriptor(-1, cls, 6);
    }

    public ParticleChannels() {
        m24121a();
    }
}
