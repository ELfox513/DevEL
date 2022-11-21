package com.badlogic.gdx.graphics.g3d.particles.emitters;

import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
import com.badlogic.gdx.graphics.g3d.particles.ParticleChannels;
import com.badlogic.gdx.graphics.g3d.particles.ParticleController;
import com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent;
import com.badlogic.gdx.graphics.g3d.particles.values.RangedNumericValue;
import com.badlogic.gdx.graphics.g3d.particles.values.ScaledNumericValue;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
/* loaded from: classes.dex */
public class RegularEmitter extends Emitter {

    /* renamed from: A */
    public int f4617A;

    /* renamed from: B */
    public int f4618B;

    /* renamed from: C */
    public int f4619C;

    /* renamed from: D */
    public float f4620D;

    /* renamed from: E */
    public float f4621E;

    /* renamed from: F */
    public float f4622F;

    /* renamed from: G */
    public float f4623G;

    /* renamed from: H */
    public boolean f4624H;

    /* renamed from: I */
    public EmissionMode f4625I;

    /* renamed from: J */
    public ParallelArray.FloatChannel f4626J;
    public RangedNumericValue delayValue;
    public RangedNumericValue durationValue;
    public ScaledNumericValue emissionValue;
    public ScaledNumericValue lifeOffsetValue;
    public ScaledNumericValue lifeValue;

    /* renamed from: w */
    public int f4627w;

    /* renamed from: x */
    public int f4628x;

    /* renamed from: y */
    public int f4629y;

    /* renamed from: z */
    public int f4630z;

    /* loaded from: classes.dex */
    public enum EmissionMode {
        Enabled,
        EnabledUntilCycleEnd,
        Disabled
    }

    public RegularEmitter() {
        this.delayValue = new RangedNumericValue();
        this.durationValue = new RangedNumericValue();
        this.lifeOffsetValue = new ScaledNumericValue();
        this.lifeValue = new ScaledNumericValue();
        this.emissionValue = new ScaledNumericValue();
        this.durationValue.setActive(true);
        this.emissionValue.setActive(true);
        this.lifeValue.setActive(true);
        this.f4624H = true;
        this.f4625I = EmissionMode.Enabled;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void allocateChannels() {
        this.f4626J = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Life);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public ParticleControllerComponent copy() {
        return new RegularEmitter(this);
    }

    public RangedNumericValue getDelay() {
        return this.delayValue;
    }

    public RangedNumericValue getDuration() {
        return this.durationValue;
    }

    public ScaledNumericValue getEmission() {
        return this.emissionValue;
    }

    public EmissionMode getEmissionMode() {
        return this.f4625I;
    }

    public ScaledNumericValue getLife() {
        return this.lifeValue;
    }

    public ScaledNumericValue getLifeOffset() {
        return this.lifeOffsetValue;
    }

    public boolean isContinuous() {
        return this.f4624H;
    }

    public void setContinuous(boolean z) {
        this.f4624H = z;
    }

    public void setEmissionMode(EmissionMode emissionMode) {
        this.f4625I = emissionMode;
    }

    /* renamed from: a */
    public final void m24098a(int i) {
        int min = Math.min(i, this.maxParticleCount - this.f4525a.particles.size);
        if (min <= 0) {
            return;
        }
        ParticleController particleController = this.f4525a;
        particleController.activateParticles(particleController.particles.size, min);
        this.f4525a.particles.size += min;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void activateParticles(int i, int i2) {
        int i3;
        int scale = this.f4618B + ((int) (this.f4619C * this.lifeValue.getScale(this.percent)));
        int scale2 = (int) (this.f4630z + (this.f4617A * this.lifeOffsetValue.getScale(this.percent)));
        if (scale2 > 0) {
            if (scale2 >= scale) {
                scale2 = scale - 1;
            }
            i3 = scale - scale2;
        } else {
            i3 = scale;
        }
        float f = i3;
        float f2 = scale;
        float f3 = 1.0f - (f / f2);
        int i4 = this.f4626J.strideSize;
        int i5 = i * i4;
        int i6 = (i2 * i4) + i5;
        while (i5 < i6) {
            ParallelArray.FloatChannel floatChannel = this.f4626J;
            float[] fArr = floatChannel.data;
            fArr[i5 + 0] = f;
            fArr[i5 + 1] = f2;
            fArr[i5 + 2] = f3;
            i5 += floatChannel.strideSize;
        }
    }

    public float getPercentComplete() {
        if (this.f4623G < this.f4621E) {
            return 0.0f;
        }
        return Math.min(1.0f, this.f4622F / this.f4620D);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.emitters.Emitter
    public boolean isComplete() {
        if (this.f4623G < this.f4621E || this.f4622F < this.f4620D || this.f4525a.particles.size != 0) {
            return false;
        }
        return true;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.emitters.Emitter, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Json.Serializable
    public void read(Json json, JsonValue jsonValue) {
        super.read(json, jsonValue);
        this.f4624H = ((Boolean) json.readValue("continous", Boolean.TYPE, jsonValue)).booleanValue();
        this.emissionValue = (ScaledNumericValue) json.readValue("emission", ScaledNumericValue.class, jsonValue);
        this.delayValue = (RangedNumericValue) json.readValue("delay", RangedNumericValue.class, jsonValue);
        this.durationValue = (RangedNumericValue) json.readValue("duration", RangedNumericValue.class, jsonValue);
        this.lifeValue = (ScaledNumericValue) json.readValue("life", ScaledNumericValue.class, jsonValue);
        this.lifeOffsetValue = (ScaledNumericValue) json.readValue("lifeOffset", ScaledNumericValue.class, jsonValue);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void start() {
        float f;
        int i;
        RangedNumericValue rangedNumericValue = this.delayValue;
        if (rangedNumericValue.active) {
            f = rangedNumericValue.newLowValue();
        } else {
            f = 0.0f;
        }
        this.f4621E = f;
        this.f4623G = 0.0f;
        this.f4622F = 0.0f;
        float newLowValue = this.durationValue.newLowValue();
        this.f4620D = newLowValue;
        this.percent = this.f4622F / newLowValue;
        this.f4627w = (int) this.emissionValue.newLowValue();
        this.f4628x = (int) this.emissionValue.newHighValue();
        if (!this.emissionValue.isRelative()) {
            this.f4628x -= this.f4627w;
        }
        this.f4618B = (int) this.lifeValue.newLowValue();
        this.f4619C = (int) this.lifeValue.newHighValue();
        if (!this.lifeValue.isRelative()) {
            this.f4619C -= this.f4618B;
        }
        ScaledNumericValue scaledNumericValue = this.lifeOffsetValue;
        if (scaledNumericValue.active) {
            i = (int) scaledNumericValue.newLowValue();
        } else {
            i = 0;
        }
        this.f4630z = i;
        this.f4617A = (int) this.lifeOffsetValue.newHighValue();
        if (!this.lifeOffsetValue.isRelative()) {
            this.f4617A -= this.f4630z;
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void update() {
        boolean z;
        ParticleController particleController;
        int i;
        ParticleController particleController2 = this.f4525a;
        float f = particleController2.deltaTime * 1000.0f;
        float f2 = this.f4623G;
        int i2 = 0;
        if (f2 < this.f4621E) {
            this.f4623G = f2 + f;
        } else {
            EmissionMode emissionMode = this.f4625I;
            if (emissionMode != EmissionMode.Disabled) {
                z = true;
            } else {
                z = false;
            }
            float f3 = this.f4622F;
            float f4 = this.f4620D;
            if (f3 < f4) {
                float f5 = f3 + f;
                this.f4622F = f5;
                this.percent = f5 / f4;
            } else if (this.f4624H && z && emissionMode == EmissionMode.Enabled) {
                particleController2.start();
            } else {
                z = false;
            }
            if (z) {
                this.f4629y = (int) (this.f4629y + f);
                float scale = this.f4627w + (this.f4628x * this.emissionValue.getScale(this.percent));
                if (scale > 0.0f) {
                    float f6 = 1000.0f / scale;
                    int i3 = this.f4629y;
                    if (i3 >= f6) {
                        int min = Math.min((int) (i3 / f6), this.maxParticleCount - this.f4525a.particles.size);
                        this.f4629y = (int) (((int) (this.f4629y - (min * f6))) % f6);
                        m24098a(min);
                    }
                }
                int i4 = this.f4525a.particles.size;
                int i5 = this.minParticleCount;
                if (i4 < i5) {
                    m24098a(i5 - i4);
                }
            }
        }
        int i6 = this.f4525a.particles.size;
        int i7 = 0;
        while (true) {
            particleController = this.f4525a;
            ParallelArray parallelArray = particleController.particles;
            i = parallelArray.size;
            if (i2 >= i) {
                break;
            }
            ParallelArray.FloatChannel floatChannel = this.f4626J;
            float[] fArr = floatChannel.data;
            int i8 = i7 + 0;
            float f7 = fArr[i8] - f;
            fArr[i8] = f7;
            if (f7 <= 0.0f) {
                parallelArray.removeElement(i2);
            } else {
                fArr[i7 + 2] = 1.0f - (f7 / fArr[i7 + 1]);
                i2++;
                i7 += floatChannel.strideSize;
            }
        }
        if (i < i6) {
            particleController.killParticles(i, i6 - i);
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.emitters.Emitter, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void init() {
        super.init();
        this.f4629y = 0;
        this.f4622F = this.f4620D;
    }

    public void set(RegularEmitter regularEmitter) {
        super.set((Emitter) regularEmitter);
        this.delayValue.load(regularEmitter.delayValue);
        this.durationValue.load(regularEmitter.durationValue);
        this.lifeOffsetValue.load(regularEmitter.lifeOffsetValue);
        this.lifeValue.load(regularEmitter.lifeValue);
        this.emissionValue.load(regularEmitter.emissionValue);
        this.f4627w = regularEmitter.f4627w;
        this.f4628x = regularEmitter.f4628x;
        this.f4629y = regularEmitter.f4629y;
        this.f4630z = regularEmitter.f4630z;
        this.f4617A = regularEmitter.f4617A;
        this.f4618B = regularEmitter.f4618B;
        this.f4619C = regularEmitter.f4619C;
        this.f4620D = regularEmitter.f4620D;
        this.f4621E = regularEmitter.f4621E;
        this.f4622F = regularEmitter.f4622F;
        this.f4623G = regularEmitter.f4623G;
        this.f4624H = regularEmitter.f4624H;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.emitters.Emitter, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Json.Serializable
    public void write(Json json) {
        super.write(json);
        json.writeValue("continous", Boolean.valueOf(this.f4624H));
        json.writeValue("emission", this.emissionValue);
        json.writeValue("delay", this.delayValue);
        json.writeValue("duration", this.durationValue);
        json.writeValue("life", this.lifeValue);
        json.writeValue("lifeOffset", this.lifeOffsetValue);
    }

    public RegularEmitter(RegularEmitter regularEmitter) {
        this();
        set(regularEmitter);
    }
}
