package com.badlogic.gdx.graphics.g3d.particles.influencers;

import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
import com.badlogic.gdx.graphics.g3d.particles.ParticleChannels;
import com.badlogic.gdx.graphics.g3d.particles.values.ScaledNumericValue;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
/* loaded from: classes.dex */
public abstract class SimpleInfluencer extends Influencer {
    public ScaledNumericValue value;

    /* renamed from: w */
    public ParallelArray.FloatChannel f4680w;

    /* renamed from: x */
    public ParallelArray.FloatChannel f4681x;

    /* renamed from: y */
    public ParallelArray.FloatChannel f4682y;

    /* renamed from: z */
    public ParallelArray.ChannelDescriptor f4683z;

    public SimpleInfluencer() {
        ScaledNumericValue scaledNumericValue = new ScaledNumericValue();
        this.value = scaledNumericValue;
        scaledNumericValue.setHigh(1.0f);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Json.Serializable
    public void read(Json json, JsonValue jsonValue) {
        this.value = (ScaledNumericValue) json.readValue("value", ScaledNumericValue.class, jsonValue);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Json.Serializable
    public void write(Json json) {
        json.writeValue("value", this.value);
    }

    /* renamed from: a */
    public final void m24097a(SimpleInfluencer simpleInfluencer) {
        this.value.load(simpleInfluencer.value);
        this.f4683z = simpleInfluencer.f4683z;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void activateParticles(int i, int i2) {
        if (!this.value.isRelative()) {
            int i3 = this.f4680w.strideSize;
            int i4 = i * i3;
            int i5 = i * this.f4681x.strideSize;
            int i6 = (i2 * i3) + i4;
            while (i4 < i6) {
                float newLowValue = this.value.newLowValue();
                float newHighValue = this.value.newHighValue() - newLowValue;
                float[] fArr = this.f4681x.data;
                fArr[i5 + 0] = newLowValue;
                fArr[i5 + 1] = newHighValue;
                this.f4680w.data[i4] = newLowValue + (newHighValue * this.value.getScale(0.0f));
                i4 += this.f4680w.strideSize;
                i5 += this.f4681x.strideSize;
            }
            return;
        }
        int i7 = this.f4680w.strideSize;
        int i8 = i * i7;
        int i9 = i * this.f4681x.strideSize;
        int i10 = (i2 * i7) + i8;
        while (i8 < i10) {
            float newLowValue2 = this.value.newLowValue();
            float newHighValue2 = this.value.newHighValue();
            float[] fArr2 = this.f4681x.data;
            fArr2[i9 + 0] = newLowValue2;
            fArr2[i9 + 1] = newHighValue2;
            this.f4680w.data[i8] = newLowValue2 + (newHighValue2 * this.value.getScale(0.0f));
            i8 += this.f4680w.strideSize;
            i9 += this.f4681x.strideSize;
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void allocateChannels() {
        this.f4680w = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(this.f4683z);
        ParallelArray.ChannelDescriptor channelDescriptor = ParticleChannels.Interpolation;
        channelDescriptor.f4502id = this.f4525a.particleChannels.newId();
        this.f4681x = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(channelDescriptor);
        this.f4682y = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Life);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void update() {
        int i = 0;
        int i2 = (this.f4525a.particles.size * this.f4680w.strideSize) + 0;
        int i3 = 0;
        int i4 = 2;
        while (i < i2) {
            float[] fArr = this.f4680w.data;
            float[] fArr2 = this.f4681x.data;
            fArr[i] = fArr2[i3 + 0] + (fArr2[i3 + 1] * this.value.getScale(this.f4682y.data[i4]));
            i += this.f4680w.strideSize;
            i3 += this.f4681x.strideSize;
            i4 += this.f4682y.strideSize;
        }
    }

    public SimpleInfluencer(SimpleInfluencer simpleInfluencer) {
        this();
        m24097a(simpleInfluencer);
    }
}
