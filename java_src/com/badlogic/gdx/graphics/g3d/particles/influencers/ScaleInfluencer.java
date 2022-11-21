package com.badlogic.gdx.graphics.g3d.particles.influencers;

import com.badlogic.gdx.graphics.g3d.particles.ParticleChannels;
import com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent;
/* loaded from: classes.dex */
public class ScaleInfluencer extends SimpleInfluencer {
    public ScaleInfluencer() {
        this.f4683z = ParticleChannels.Scale;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public ParticleControllerComponent copy() {
        return new ScaleInfluencer(this);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.influencers.SimpleInfluencer, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void activateParticles(int i, int i2) {
        if (this.value.isRelative()) {
            int i3 = this.f4680w.strideSize;
            int i4 = i * i3;
            int i5 = i * this.f4681x.strideSize;
            int i6 = (i2 * i3) + i4;
            while (i4 < i6) {
                float newLowValue = this.value.newLowValue() * this.f4525a.scale.f5533x;
                float newHighValue = this.value.newHighValue() * this.f4525a.scale.f5533x;
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
            float newLowValue2 = this.value.newLowValue() * this.f4525a.scale.f5533x;
            float newHighValue2 = (this.value.newHighValue() * this.f4525a.scale.f5533x) - newLowValue2;
            float[] fArr2 = this.f4681x.data;
            fArr2[i9 + 0] = newLowValue2;
            fArr2[i9 + 1] = newHighValue2;
            this.f4680w.data[i8] = newLowValue2 + (newHighValue2 * this.value.getScale(0.0f));
            i8 += this.f4680w.strideSize;
            i9 += this.f4681x.strideSize;
        }
    }

    public ScaleInfluencer(ScaleInfluencer scaleInfluencer) {
        super(scaleInfluencer);
    }
}
