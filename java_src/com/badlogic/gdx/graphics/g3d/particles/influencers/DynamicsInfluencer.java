package com.badlogic.gdx.graphics.g3d.particles.influencers;

import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
import com.badlogic.gdx.graphics.g3d.particles.ParticleChannels;
import com.badlogic.gdx.graphics.g3d.particles.ParticleController;
import com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Quaternion;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import java.util.Arrays;
/* loaded from: classes.dex */
public class DynamicsInfluencer extends Influencer {

    /* renamed from: A */
    public ParallelArray.FloatChannel f4636A;

    /* renamed from: B */
    public boolean f4637B;

    /* renamed from: C */
    public boolean f4638C;

    /* renamed from: D */
    public boolean f4639D;
    public Array<DynamicsModifier> velocities;

    /* renamed from: w */
    public ParallelArray.FloatChannel f4640w;

    /* renamed from: x */
    public ParallelArray.FloatChannel f4641x;

    /* renamed from: y */
    public ParallelArray.FloatChannel f4642y;

    /* renamed from: z */
    public ParallelArray.FloatChannel f4643z;

    public DynamicsInfluencer() {
        this.velocities = new Array<>(true, 3, DynamicsModifier.class);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void allocateChannels() {
        boolean z;
        boolean z2;
        int i = 0;
        while (true) {
            Array<DynamicsModifier> array = this.velocities;
            if (i >= array.size) {
                break;
            }
            array.items[i].allocateChannels();
            i++;
        }
        ParallelArray.FloatChannel floatChannel = (ParallelArray.FloatChannel) this.f4525a.particles.getChannel(ParticleChannels.Acceleration);
        this.f4640w = floatChannel;
        if (floatChannel != null) {
            z = true;
        } else {
            z = false;
        }
        this.f4637B = z;
        if (z) {
            this.f4641x = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Position);
            this.f4642y = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.PreviousPosition);
        }
        ParallelArray.FloatChannel floatChannel2 = (ParallelArray.FloatChannel) this.f4525a.particles.getChannel(ParticleChannels.AngularVelocity2D);
        this.f4636A = floatChannel2;
        if (floatChannel2 != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.f4638C = z2;
        if (z2) {
            this.f4643z = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Rotation2D);
            this.f4639D = false;
            return;
        }
        ParallelArray.FloatChannel floatChannel3 = (ParallelArray.FloatChannel) this.f4525a.particles.getChannel(ParticleChannels.AngularVelocity3D);
        this.f4636A = floatChannel3;
        boolean z3 = floatChannel3 != null;
        this.f4639D = z3;
        if (z3) {
            this.f4643z = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Rotation3D);
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void init() {
        int i = 0;
        while (true) {
            Array<DynamicsModifier> array = this.velocities;
            if (i < array.size) {
                array.items[i].init();
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Json.Serializable
    public void read(Json json, JsonValue jsonValue) {
        this.velocities.addAll((Array) json.readValue("velocities", (Class<Object>) Array.class, DynamicsModifier.class, jsonValue));
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Json.Serializable
    public void write(Json json) {
        json.writeValue("velocities", this.velocities, Array.class, DynamicsModifier.class);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void activateParticles(int i, int i2) {
        if (this.f4637B) {
            int i3 = this.f4641x.strideSize;
            int i4 = i * i3;
            int i5 = (i3 * i2) + i4;
            while (i4 < i5) {
                float[] fArr = this.f4642y.data;
                int i6 = i4 + 0;
                ParallelArray.FloatChannel floatChannel = this.f4641x;
                float[] fArr2 = floatChannel.data;
                fArr[i6] = fArr2[i6];
                int i7 = i4 + 1;
                fArr[i7] = fArr2[i7];
                int i8 = i4 + 2;
                fArr[i8] = fArr2[i8];
                i4 += floatChannel.strideSize;
            }
        }
        if (this.f4638C) {
            int i9 = this.f4643z.strideSize;
            int i10 = i * i9;
            int i11 = (i9 * i2) + i10;
            while (i10 < i11) {
                ParallelArray.FloatChannel floatChannel2 = this.f4643z;
                float[] fArr3 = floatChannel2.data;
                fArr3[i10 + 0] = 1.0f;
                fArr3[i10 + 1] = 0.0f;
                i10 += floatChannel2.strideSize;
            }
        } else if (this.f4639D) {
            int i12 = this.f4643z.strideSize;
            int i13 = i * i12;
            int i14 = (i12 * i2) + i13;
            while (i13 < i14) {
                ParallelArray.FloatChannel floatChannel3 = this.f4643z;
                float[] fArr4 = floatChannel3.data;
                fArr4[i13 + 0] = 0.0f;
                fArr4[i13 + 1] = 0.0f;
                fArr4[i13 + 2] = 0.0f;
                fArr4[i13 + 3] = 1.0f;
                i13 += floatChannel3.strideSize;
            }
        }
        int i15 = 0;
        while (true) {
            Array<DynamicsModifier> array = this.velocities;
            if (i15 < array.size) {
                array.items[i15].activateParticles(i, i2);
                i15++;
            } else {
                return;
            }
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public DynamicsInfluencer copy() {
        return new DynamicsInfluencer(this);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void update() {
        if (this.f4637B) {
            ParallelArray.FloatChannel floatChannel = this.f4640w;
            Arrays.fill(floatChannel.data, 0, this.f4525a.particles.size * floatChannel.strideSize, 0.0f);
        }
        if (this.f4638C || this.f4639D) {
            ParallelArray.FloatChannel floatChannel2 = this.f4636A;
            Arrays.fill(floatChannel2.data, 0, this.f4525a.particles.size * floatChannel2.strideSize, 0.0f);
        }
        int i = 0;
        while (true) {
            Array<DynamicsModifier> array = this.velocities;
            if (i >= array.size) {
                break;
            }
            array.items[i].update();
            i++;
        }
        if (this.f4637B) {
            int i2 = 0;
            int i3 = 0;
            while (true) {
                ParticleController particleController = this.f4525a;
                if (i2 >= particleController.particles.size) {
                    break;
                }
                ParallelArray.FloatChannel floatChannel3 = this.f4641x;
                float[] fArr = floatChannel3.data;
                int i4 = i3 + 0;
                float f = fArr[i4];
                int i5 = i3 + 1;
                float f2 = fArr[i5];
                int i6 = i3 + 2;
                float f3 = fArr[i6];
                float[] fArr2 = this.f4642y.data;
                float[] fArr3 = this.f4640w.data;
                float f4 = fArr3[i4];
                float f5 = particleController.deltaTimeSqr;
                fArr[i4] = ((f * 2.0f) - fArr2[i4]) + (f4 * f5);
                fArr[i5] = ((f2 * 2.0f) - fArr2[i5]) + (fArr3[i5] * f5);
                fArr[i6] = ((2.0f * f3) - fArr2[i6]) + (fArr3[i6] * f5);
                fArr2[i4] = f;
                fArr2[i5] = f2;
                fArr2[i6] = f3;
                i2++;
                i3 += floatChannel3.strideSize;
            }
        }
        if (this.f4638C) {
            int i7 = 0;
            int i8 = 0;
            while (true) {
                ParticleController particleController2 = this.f4525a;
                if (i7 < particleController2.particles.size) {
                    float f6 = this.f4636A.data[i7] * particleController2.deltaTime;
                    if (f6 != 0.0f) {
                        float cosDeg = MathUtils.cosDeg(f6);
                        float sinDeg = MathUtils.sinDeg(f6);
                        float[] fArr4 = this.f4643z.data;
                        int i9 = i8 + 0;
                        float f7 = fArr4[i9];
                        int i10 = i8 + 1;
                        float f8 = fArr4[i10];
                        fArr4[i9] = (f7 * cosDeg) - (f8 * sinDeg);
                        fArr4[i10] = (f8 * cosDeg) + (f7 * sinDeg);
                    }
                    i7++;
                    i8 += this.f4643z.strideSize;
                } else {
                    return;
                }
            }
        } else if (this.f4639D) {
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            while (i12 < this.f4525a.particles.size) {
                float[] fArr5 = this.f4636A.data;
                float f9 = fArr5[i13 + 0];
                float f10 = fArr5[i13 + 1];
                float f11 = fArr5[i13 + 2];
                float[] fArr6 = this.f4643z.data;
                int i14 = i11 + 0;
                float f12 = fArr6[i14];
                int i15 = i11 + 1;
                float f13 = fArr6[i15];
                int i16 = i11 + 2;
                float f14 = fArr6[i16];
                int i17 = i11 + 3;
                float f15 = fArr6[i17];
                Quaternion quaternion = ParticleControllerComponent.f4521s;
                quaternion.set(f9, f10, f11, 0.0f).mul(f12, f13, f14, f15).mul(this.f4525a.deltaTime * 0.5f).add(f12, f13, f14, f15).nor();
                ParallelArray.FloatChannel floatChannel4 = this.f4643z;
                float[] fArr7 = floatChannel4.data;
                fArr7[i14] = quaternion.f5518x;
                fArr7[i15] = quaternion.f5519y;
                fArr7[i16] = quaternion.f5520z;
                fArr7[i17] = quaternion.f5517w;
                i12++;
                i11 += floatChannel4.strideSize;
                i13 += this.f4636A.strideSize;
            }
        }
    }

    public DynamicsInfluencer(DynamicsModifier... dynamicsModifierArr) {
        this.velocities = new Array<>(true, dynamicsModifierArr.length, DynamicsModifier.class);
        for (DynamicsModifier dynamicsModifier : dynamicsModifierArr) {
            this.velocities.add((DynamicsModifier) dynamicsModifier.copy());
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void set(ParticleController particleController) {
        super.set(particleController);
        int i = 0;
        while (true) {
            Array<DynamicsModifier> array = this.velocities;
            if (i < array.size) {
                array.items[i].set(particleController);
                i++;
            } else {
                return;
            }
        }
    }

    public DynamicsInfluencer(DynamicsInfluencer dynamicsInfluencer) {
        this((DynamicsModifier[]) dynamicsInfluencer.velocities.toArray(DynamicsModifier.class));
    }
}
