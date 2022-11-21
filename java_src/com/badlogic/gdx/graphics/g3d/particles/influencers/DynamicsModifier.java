package com.badlogic.gdx.graphics.g3d.particles.influencers;

import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
import com.badlogic.gdx.graphics.g3d.particles.ParticleChannels;
import com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent;
import com.badlogic.gdx.graphics.g3d.particles.values.ScaledNumericValue;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Quaternion;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
/* loaded from: classes.dex */
public abstract class DynamicsModifier extends Influencer {
    public boolean isGlobal;

    /* renamed from: w */
    public ParallelArray.FloatChannel f4648w;

    /* renamed from: x */
    public static final Vector3 f4645x = new Vector3();

    /* renamed from: y */
    public static final Vector3 f4646y = new Vector3();

    /* renamed from: z */
    public static final Vector3 f4647z = new Vector3();

    /* renamed from: A */
    public static final Quaternion f4644A = new Quaternion();

    /* loaded from: classes.dex */
    public static abstract class Angular extends Strength {

        /* renamed from: C */
        public ParallelArray.FloatChannel f4649C;
        public ScaledNumericValue phiValue;
        public ScaledNumericValue thetaValue;

        public Angular() {
            this.thetaValue = new ScaledNumericValue();
            this.phiValue = new ScaledNumericValue();
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier.Strength, com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Json.Serializable
        public void read(Json json, JsonValue jsonValue) {
            super.read(json, jsonValue);
            this.thetaValue = (ScaledNumericValue) json.readValue("thetaValue", ScaledNumericValue.class, jsonValue);
            this.phiValue = (ScaledNumericValue) json.readValue("phiValue", ScaledNumericValue.class, jsonValue);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier.Strength, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void activateParticles(int i, int i2) {
            super.activateParticles(i, i2);
            int i3 = this.f4649C.strideSize;
            int i4 = i * i3;
            int i5 = (i2 * i3) + i4;
            while (i4 < i5) {
                float newLowValue = this.thetaValue.newLowValue();
                float newHighValue = this.thetaValue.newHighValue();
                if (!this.thetaValue.isRelative()) {
                    newHighValue -= newLowValue;
                }
                float[] fArr = this.f4649C.data;
                fArr[i4 + 0] = newLowValue;
                fArr[i4 + 1] = newHighValue;
                float newLowValue2 = this.phiValue.newLowValue();
                float newHighValue2 = this.phiValue.newHighValue();
                if (!this.phiValue.isRelative()) {
                    newHighValue2 -= newLowValue2;
                }
                ParallelArray.FloatChannel floatChannel = this.f4649C;
                float[] fArr2 = floatChannel.data;
                fArr2[i4 + 2] = newLowValue2;
                fArr2[i4 + 3] = newHighValue2;
                i4 += floatChannel.strideSize;
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier.Strength, com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void allocateChannels() {
            super.allocateChannels();
            ParallelArray.ChannelDescriptor channelDescriptor = ParticleChannels.Interpolation4;
            channelDescriptor.f4502id = this.f4525a.particleChannels.newId();
            this.f4649C = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(channelDescriptor);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier.Strength, com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Json.Serializable
        public void write(Json json) {
            super.write(json);
            json.writeValue("thetaValue", this.thetaValue);
            json.writeValue("phiValue", this.phiValue);
        }

        public Angular(Angular angular) {
            super(angular);
            this.thetaValue = new ScaledNumericValue();
            this.phiValue = new ScaledNumericValue();
            this.thetaValue.load(angular.thetaValue);
            this.phiValue.load(angular.phiValue);
        }
    }

    /* loaded from: classes.dex */
    public static class BrownianAcceleration extends Strength {

        /* renamed from: C */
        public ParallelArray.FloatChannel f4650C;

        public BrownianAcceleration() {
        }

        public BrownianAcceleration(BrownianAcceleration brownianAcceleration) {
            super(brownianAcceleration);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public BrownianAcceleration copy() {
            return new BrownianAcceleration(this);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void update() {
            int i = this.f4525a.particles.size;
            int i2 = 2;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (i3 < i) {
                float[] fArr = this.f4659B.data;
                float scale = fArr[i4 + 0] + (fArr[i4 + 1] * this.strengthValue.getScale(this.f4648w.data[i2]));
                Vector3 vector3 = DynamicsModifier.f4647z;
                vector3.set(MathUtils.random(-1.0f, 1.0f), MathUtils.random(-1.0f, 1.0f), MathUtils.random(-1.0f, 1.0f)).nor().scl(scale);
                ParallelArray.FloatChannel floatChannel = this.f4650C;
                float[] fArr2 = floatChannel.data;
                int i6 = i5 + 0;
                fArr2[i6] = fArr2[i6] + vector3.f5533x;
                int i7 = i5 + 1;
                fArr2[i7] = fArr2[i7] + vector3.f5534y;
                int i8 = i5 + 2;
                fArr2[i8] = fArr2[i8] + vector3.f5535z;
                i3++;
                i4 += this.f4659B.strideSize;
                i5 += floatChannel.strideSize;
                i2 += this.f4648w.strideSize;
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier.Strength, com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void allocateChannels() {
            super.allocateChannels();
            this.f4650C = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Acceleration);
        }
    }

    /* loaded from: classes.dex */
    public static class CentripetalAcceleration extends Strength {

        /* renamed from: C */
        public ParallelArray.FloatChannel f4651C;

        /* renamed from: D */
        public ParallelArray.FloatChannel f4652D;

        public CentripetalAcceleration() {
        }

        public CentripetalAcceleration(CentripetalAcceleration centripetalAcceleration) {
            super(centripetalAcceleration);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public CentripetalAcceleration copy() {
            return new CentripetalAcceleration(this);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void update() {
            float f;
            float f2;
            float f3 = 0.0f;
            if (!this.isGlobal) {
                float[] fArr = this.f4525a.transform.val;
                f3 = fArr[12];
                f2 = fArr[13];
                f = fArr[14];
            } else {
                f = 0.0f;
                f2 = 0.0f;
            }
            int i = this.f4525a.particles.size;
            int i2 = 2;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (i3 < i) {
                float[] fArr2 = this.f4659B.data;
                float scale = fArr2[i4 + 0] + (fArr2[i4 + 1] * this.strengthValue.getScale(this.f4648w.data[i2]));
                Vector3 vector3 = DynamicsModifier.f4647z;
                float[] fArr3 = this.f4652D.data;
                vector3.set(fArr3[i5 + 0] - f3, fArr3[i5 + 1] - f2, fArr3[i5 + 2] - f).nor().scl(scale);
                ParallelArray.FloatChannel floatChannel = this.f4651C;
                float[] fArr4 = floatChannel.data;
                int i7 = i6 + 0;
                fArr4[i7] = fArr4[i7] + vector3.f5533x;
                int i8 = i6 + 1;
                fArr4[i8] = fArr4[i8] + vector3.f5534y;
                int i9 = i6 + 2;
                fArr4[i9] = fArr4[i9] + vector3.f5535z;
                i3++;
                i5 += this.f4652D.strideSize;
                i4 += this.f4659B.strideSize;
                i6 += floatChannel.strideSize;
                i2 += this.f4648w.strideSize;
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier.Strength, com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void allocateChannels() {
            super.allocateChannels();
            this.f4651C = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Acceleration);
            this.f4652D = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Position);
        }
    }

    /* loaded from: classes.dex */
    public static class FaceDirection extends DynamicsModifier {

        /* renamed from: B */
        public ParallelArray.FloatChannel f4653B;

        /* renamed from: C */
        public ParallelArray.FloatChannel f4654C;

        public FaceDirection() {
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public ParticleControllerComponent copy() {
            return new FaceDirection(this);
        }

        public FaceDirection(FaceDirection faceDirection) {
            super(faceDirection);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void allocateChannels() {
            this.f4653B = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Rotation3D);
            this.f4654C = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Acceleration);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void update() {
            int i = 0;
            int i2 = (this.f4525a.particles.size * this.f4653B.strideSize) + 0;
            int i3 = 0;
            while (i < i2) {
                Vector3 vector3 = DynamicsModifier.f4645x;
                float[] fArr = this.f4654C.data;
                Vector3 nor = vector3.set(fArr[i3 + 0], fArr[i3 + 1], fArr[i3 + 2]).nor();
                Vector3 nor2 = DynamicsModifier.f4646y.set(vector3).crs(Vector3.f5530Y).nor().crs(vector3).nor();
                Vector3 nor3 = DynamicsModifier.f4647z.set(nor2).crs(nor).nor();
                Quaternion quaternion = DynamicsModifier.f4644A;
                quaternion.setFromAxes(false, nor3.f5533x, nor2.f5533x, nor.f5533x, nor3.f5534y, nor2.f5534y, nor.f5534y, nor3.f5535z, nor2.f5535z, nor.f5535z);
                ParallelArray.FloatChannel floatChannel = this.f4653B;
                float[] fArr2 = floatChannel.data;
                fArr2[i + 0] = quaternion.f5518x;
                fArr2[i + 1] = quaternion.f5519y;
                fArr2[i + 2] = quaternion.f5520z;
                fArr2[i + 3] = quaternion.f5517w;
                i += floatChannel.strideSize;
                i3 += this.f4654C.strideSize;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class PolarAcceleration extends Angular {

        /* renamed from: D */
        public ParallelArray.FloatChannel f4655D;

        public PolarAcceleration() {
        }

        public PolarAcceleration(PolarAcceleration polarAcceleration) {
            super(polarAcceleration);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public PolarAcceleration copy() {
            return new PolarAcceleration(this);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void update() {
            int i = 0;
            int i2 = (this.f4525a.particles.size * this.f4655D.strideSize) + 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 2;
            while (i < i2) {
                float f = this.f4648w.data[i5];
                float[] fArr = this.f4659B.data;
                float scale = fArr[i3 + 0] + (fArr[i3 + 1] * this.strengthValue.getScale(f));
                float[] fArr2 = this.f4649C.data;
                float scale2 = fArr2[i4 + 2] + (fArr2[i4 + 3] * this.phiValue.getScale(f));
                float[] fArr3 = this.f4649C.data;
                float scale3 = fArr3[i4 + 0] + (fArr3[i4 + 1] * this.thetaValue.getScale(f));
                float cosDeg = MathUtils.cosDeg(scale3);
                float sinDeg = MathUtils.sinDeg(scale3);
                float cosDeg2 = MathUtils.cosDeg(scale2);
                float sinDeg2 = MathUtils.sinDeg(scale2);
                Vector3 vector3 = DynamicsModifier.f4647z;
                vector3.set(cosDeg * sinDeg2, cosDeg2, sinDeg * sinDeg2).nor().scl(scale);
                if (!this.isGlobal) {
                    Matrix4 matrix4 = this.f4525a.transform;
                    Quaternion quaternion = DynamicsModifier.f4644A;
                    matrix4.getRotation(quaternion, true);
                    vector3.mul(quaternion);
                }
                ParallelArray.FloatChannel floatChannel = this.f4655D;
                float[] fArr4 = floatChannel.data;
                int i6 = i + 0;
                fArr4[i6] = fArr4[i6] + vector3.f5533x;
                int i7 = i + 1;
                fArr4[i7] = fArr4[i7] + vector3.f5534y;
                int i8 = i + 2;
                fArr4[i8] = fArr4[i8] + vector3.f5535z;
                i3 += this.f4659B.strideSize;
                i += floatChannel.strideSize;
                i4 += this.f4649C.strideSize;
                i5 += this.f4648w.strideSize;
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier.Angular, com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier.Strength, com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void allocateChannels() {
            super.allocateChannels();
            this.f4655D = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Acceleration);
        }
    }

    /* loaded from: classes.dex */
    public static class Rotational2D extends Strength {

        /* renamed from: C */
        public ParallelArray.FloatChannel f4656C;

        public Rotational2D() {
        }

        public Rotational2D(Rotational2D rotational2D) {
            super(rotational2D);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public Rotational2D copy() {
            return new Rotational2D(this);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void update() {
            int i = 0;
            int i2 = (this.f4525a.particles.size * this.f4656C.strideSize) + 0;
            int i3 = 0;
            int i4 = 2;
            while (i < i2) {
                float[] fArr = this.f4656C.data;
                float f = fArr[i];
                float[] fArr2 = this.f4659B.data;
                fArr[i] = f + fArr2[i3 + 0] + (fArr2[i3 + 1] * this.strengthValue.getScale(this.f4648w.data[i4]));
                i3 += this.f4659B.strideSize;
                i += this.f4656C.strideSize;
                i4 += this.f4648w.strideSize;
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier.Strength, com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void allocateChannels() {
            super.allocateChannels();
            this.f4656C = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.AngularVelocity2D);
        }
    }

    /* loaded from: classes.dex */
    public static class Rotational3D extends Angular {

        /* renamed from: D */
        public ParallelArray.FloatChannel f4657D;

        /* renamed from: E */
        public ParallelArray.FloatChannel f4658E;

        public Rotational3D() {
        }

        public Rotational3D(Rotational3D rotational3D) {
            super(rotational3D);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public Rotational3D copy() {
            return new Rotational3D(this);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void update() {
            int i = this.f4525a.particles.size * this.f4658E.strideSize;
            int i2 = 2;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (i3 < i) {
                float f = this.f4648w.data[i2];
                float[] fArr = this.f4659B.data;
                float scale = fArr[i4 + 0] + (fArr[i4 + 1] * this.strengthValue.getScale(f));
                float[] fArr2 = this.f4649C.data;
                float scale2 = fArr2[i5 + 2] + (fArr2[i5 + 3] * this.phiValue.getScale(f));
                float[] fArr3 = this.f4649C.data;
                float scale3 = fArr3[i5 + 0] + (fArr3[i5 + 1] * this.thetaValue.getScale(f));
                float cosDeg = MathUtils.cosDeg(scale3);
                float sinDeg = MathUtils.sinDeg(scale3);
                float cosDeg2 = MathUtils.cosDeg(scale2);
                float sinDeg2 = MathUtils.sinDeg(scale2);
                Vector3 vector3 = DynamicsModifier.f4647z;
                vector3.set(cosDeg * sinDeg2, cosDeg2, sinDeg * sinDeg2);
                vector3.scl(scale * 0.017453292f);
                ParallelArray.FloatChannel floatChannel = this.f4658E;
                float[] fArr4 = floatChannel.data;
                int i6 = i3 + 0;
                fArr4[i6] = fArr4[i6] + vector3.f5533x;
                int i7 = i3 + 1;
                fArr4[i7] = fArr4[i7] + vector3.f5534y;
                int i8 = i3 + 2;
                fArr4[i8] = fArr4[i8] + vector3.f5535z;
                i4 += this.f4659B.strideSize;
                i3 += floatChannel.strideSize;
                i5 += this.f4649C.strideSize;
                i2 += this.f4648w.strideSize;
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier.Angular, com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier.Strength, com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void allocateChannels() {
            super.allocateChannels();
            this.f4657D = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Rotation3D);
            this.f4658E = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.AngularVelocity3D);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Strength extends DynamicsModifier {

        /* renamed from: B */
        public ParallelArray.FloatChannel f4659B;
        public ScaledNumericValue strengthValue;

        public Strength() {
            this.strengthValue = new ScaledNumericValue();
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void activateParticles(int i, int i2) {
            int i3 = this.f4659B.strideSize;
            int i4 = i * i3;
            int i5 = (i2 * i3) + i4;
            while (i4 < i5) {
                float newLowValue = this.strengthValue.newLowValue();
                float newHighValue = this.strengthValue.newHighValue();
                if (!this.strengthValue.isRelative()) {
                    newHighValue -= newLowValue;
                }
                ParallelArray.FloatChannel floatChannel = this.f4659B;
                float[] fArr = floatChannel.data;
                fArr[i4 + 0] = newLowValue;
                fArr[i4 + 1] = newHighValue;
                i4 += floatChannel.strideSize;
            }
        }

        public Strength(Strength strength) {
            super(strength);
            ScaledNumericValue scaledNumericValue = new ScaledNumericValue();
            this.strengthValue = scaledNumericValue;
            scaledNumericValue.load(strength.strengthValue);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void allocateChannels() {
            super.allocateChannels();
            ParallelArray.ChannelDescriptor channelDescriptor = ParticleChannels.Interpolation;
            channelDescriptor.f4502id = this.f4525a.particleChannels.newId();
            this.f4659B = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(channelDescriptor);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Json.Serializable
        public void read(Json json, JsonValue jsonValue) {
            super.read(json, jsonValue);
            this.strengthValue = (ScaledNumericValue) json.readValue("strengthValue", ScaledNumericValue.class, jsonValue);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Json.Serializable
        public void write(Json json) {
            super.write(json);
            json.writeValue("strengthValue", this.strengthValue);
        }
    }

    /* loaded from: classes.dex */
    public static class TangentialAcceleration extends Angular {

        /* renamed from: D */
        public ParallelArray.FloatChannel f4660D;

        /* renamed from: E */
        public ParallelArray.FloatChannel f4661E;

        public TangentialAcceleration() {
        }

        public TangentialAcceleration(TangentialAcceleration tangentialAcceleration) {
            super(tangentialAcceleration);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public TangentialAcceleration copy() {
            return new TangentialAcceleration(this);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void update() {
            int i = 0;
            int i2 = (this.f4525a.particles.size * this.f4660D.strideSize) + 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 2;
            while (i < i2) {
                float f = this.f4648w.data[i6];
                float[] fArr = this.f4659B.data;
                float scale = fArr[i3 + 0] + (fArr[i3 + 1] * this.strengthValue.getScale(f));
                float[] fArr2 = this.f4649C.data;
                float scale2 = fArr2[i4 + 2] + (fArr2[i4 + 3] * this.phiValue.getScale(f));
                float[] fArr3 = this.f4649C.data;
                float scale3 = fArr3[i4 + 0] + (fArr3[i4 + 1] * this.thetaValue.getScale(f));
                float cosDeg = MathUtils.cosDeg(scale3);
                float sinDeg = MathUtils.sinDeg(scale3);
                float cosDeg2 = MathUtils.cosDeg(scale2);
                float sinDeg2 = MathUtils.sinDeg(scale2);
                Vector3 vector3 = DynamicsModifier.f4647z;
                vector3.set(cosDeg * sinDeg2, cosDeg2, sinDeg * sinDeg2);
                Vector3 vector32 = DynamicsModifier.f4645x;
                float[] fArr4 = this.f4661E.data;
                vector32.set(fArr4[i5 + 0], fArr4[i5 + 1], fArr4[i5 + 2]);
                if (!this.isGlobal) {
                    Matrix4 matrix4 = this.f4525a.transform;
                    Vector3 vector33 = DynamicsModifier.f4646y;
                    matrix4.getTranslation(vector33);
                    vector32.sub(vector33);
                    Matrix4 matrix42 = this.f4525a.transform;
                    Quaternion quaternion = DynamicsModifier.f4644A;
                    matrix42.getRotation(quaternion, true);
                    vector3.mul(quaternion);
                }
                vector3.crs(vector32).nor().scl(scale);
                ParallelArray.FloatChannel floatChannel = this.f4660D;
                float[] fArr5 = floatChannel.data;
                int i7 = i + 0;
                fArr5[i7] = fArr5[i7] + vector3.f5533x;
                int i8 = i + 1;
                fArr5[i8] = fArr5[i8] + vector3.f5534y;
                int i9 = i + 2;
                fArr5[i9] = fArr5[i9] + vector3.f5535z;
                i3 += this.f4659B.strideSize;
                i += floatChannel.strideSize;
                i4 += this.f4649C.strideSize;
                i6 += this.f4648w.strideSize;
                i5 += this.f4661E.strideSize;
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier.Angular, com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier.Strength, com.badlogic.gdx.graphics.g3d.particles.influencers.DynamicsModifier, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void allocateChannels() {
            super.allocateChannels();
            this.f4660D = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Acceleration);
            this.f4661E = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Position);
        }
    }

    public DynamicsModifier() {
        this.isGlobal = false;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void allocateChannels() {
        this.f4648w = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Life);
    }

    public DynamicsModifier(DynamicsModifier dynamicsModifier) {
        this.isGlobal = false;
        this.isGlobal = dynamicsModifier.isGlobal;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Json.Serializable
    public void read(Json json, JsonValue jsonValue) {
        super.read(json, jsonValue);
        this.isGlobal = ((Boolean) json.readValue("isGlobal", Boolean.TYPE, jsonValue)).booleanValue();
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Json.Serializable
    public void write(Json json) {
        super.write(json);
        json.writeValue("isGlobal", Boolean.valueOf(this.isGlobal));
    }
}
