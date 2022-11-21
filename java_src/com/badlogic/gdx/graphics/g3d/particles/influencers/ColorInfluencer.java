package com.badlogic.gdx.graphics.g3d.particles.influencers;

import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
import com.badlogic.gdx.graphics.g3d.particles.ParticleChannels;
import com.badlogic.gdx.graphics.g3d.particles.values.GradientColorValue;
import com.badlogic.gdx.graphics.g3d.particles.values.ScaledNumericValue;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
/* loaded from: classes.dex */
public abstract class ColorInfluencer extends Influencer {

    /* renamed from: w */
    public ParallelArray.FloatChannel f4632w;

    /* loaded from: classes.dex */
    public static class Random extends ColorInfluencer {

        /* renamed from: x */
        public ParallelArray.FloatChannel f4633x;

        @Override // com.badlogic.gdx.graphics.g3d.particles.influencers.ColorInfluencer, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void allocateChannels() {
            this.f4633x = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Color);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void activateParticles(int i, int i2) {
            int i3 = this.f4633x.strideSize;
            int i4 = i * i3;
            int i5 = (i2 * i3) + i4;
            while (i4 < i5) {
                this.f4633x.data[i4 + 0] = MathUtils.random();
                this.f4633x.data[i4 + 1] = MathUtils.random();
                this.f4633x.data[i4 + 2] = MathUtils.random();
                this.f4633x.data[i4 + 3] = MathUtils.random();
                i4 += this.f4633x.strideSize;
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public Random copy() {
            return new Random();
        }
    }

    /* loaded from: classes.dex */
    public static class Single extends ColorInfluencer {
        public ScaledNumericValue alphaValue;
        public GradientColorValue colorValue;

        /* renamed from: x */
        public ParallelArray.FloatChannel f4634x;

        /* renamed from: y */
        public ParallelArray.FloatChannel f4635y;

        public Single() {
            this.colorValue = new GradientColorValue();
            ScaledNumericValue scaledNumericValue = new ScaledNumericValue();
            this.alphaValue = scaledNumericValue;
            scaledNumericValue.setHigh(1.0f);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void activateParticles(int i, int i2) {
            int i3 = this.f4632w.strideSize;
            int i4 = i * i3;
            int i5 = this.f4634x.strideSize * i;
            int i6 = (i * this.f4635y.strideSize) + 2;
            int i7 = (i2 * i3) + i4;
            while (i4 < i7) {
                float newLowValue = this.alphaValue.newLowValue();
                float newHighValue = this.alphaValue.newHighValue() - newLowValue;
                this.colorValue.getColor(0.0f, this.f4632w.data, i4);
                this.f4632w.data[i4 + 3] = (this.alphaValue.getScale(this.f4635y.data[i6]) * newHighValue) + newLowValue;
                ParallelArray.FloatChannel floatChannel = this.f4634x;
                float[] fArr = floatChannel.data;
                fArr[i5 + 0] = newLowValue;
                fArr[i5 + 1] = newHighValue;
                i4 += this.f4632w.strideSize;
                i5 += floatChannel.strideSize;
                i6 += this.f4635y.strideSize;
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public Single copy() {
            return new Single(this);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Json.Serializable
        public void read(Json json, JsonValue jsonValue) {
            this.alphaValue = (ScaledNumericValue) json.readValue("alpha", ScaledNumericValue.class, jsonValue);
            this.colorValue = (GradientColorValue) json.readValue("color", GradientColorValue.class, jsonValue);
        }

        public void set(Single single) {
            this.colorValue.load(single.colorValue);
            this.alphaValue.load(single.alphaValue);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void update() {
            int i = 0;
            int i2 = (this.f4525a.particles.size * this.f4632w.strideSize) + 0;
            int i3 = 0;
            int i4 = 2;
            while (i < i2) {
                float f = this.f4635y.data[i4];
                this.colorValue.getColor(f, this.f4632w.data, i);
                float[] fArr = this.f4634x.data;
                this.f4632w.data[i + 3] = fArr[i3 + 0] + (fArr[i3 + 1] * this.alphaValue.getScale(f));
                i += this.f4632w.strideSize;
                i3 += this.f4634x.strideSize;
                i4 += this.f4635y.strideSize;
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Json.Serializable
        public void write(Json json) {
            json.writeValue("alpha", this.alphaValue);
            json.writeValue("color", this.colorValue);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.influencers.ColorInfluencer, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void allocateChannels() {
            super.allocateChannels();
            ParallelArray.ChannelDescriptor channelDescriptor = ParticleChannels.Interpolation;
            channelDescriptor.f4502id = this.f4525a.particleChannels.newId();
            this.f4634x = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(channelDescriptor);
            this.f4635y = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Life);
        }

        public Single(Single single) {
            this();
            set(single);
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void allocateChannels() {
        this.f4632w = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Color);
    }
}
