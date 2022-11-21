package com.badlogic.gdx.graphics.g3d.particles.values;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
/* loaded from: classes.dex */
public class ScaledNumericValue extends RangedNumericValue {

    /* renamed from: k */
    public float f4719k;

    /* renamed from: p */
    public float f4720p;

    /* renamed from: d */
    public float[] f4718d = {1.0f};
    public float[] timeline = {0.0f};

    /* renamed from: q */
    public boolean f4721q = false;

    public float getHighMax() {
        return this.f4720p;
    }

    public float getHighMin() {
        return this.f4719k;
    }

    public float[] getScaling() {
        return this.f4718d;
    }

    public float[] getTimeline() {
        return this.timeline;
    }

    public boolean isRelative() {
        return this.f4721q;
    }

    public float newHighValue() {
        float f = this.f4719k;
        return f + ((this.f4720p - f) * MathUtils.random());
    }

    public void setHigh(float f) {
        this.f4719k = f;
        this.f4720p = f;
    }

    public void setHighMax(float f) {
        this.f4720p = f;
    }

    public void setHighMin(float f) {
        this.f4719k = f;
    }

    public void setRelative(boolean z) {
        this.f4721q = z;
    }

    public void setScaling(float[] fArr) {
        this.f4718d = fArr;
    }

    public void setTimeline(float[] fArr) {
        this.timeline = fArr;
    }

    public float getScale(float f) {
        int length = this.timeline.length;
        int i = 1;
        while (true) {
            if (i < length) {
                if (this.timeline[i] > f) {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        if (i == -1) {
            return this.f4718d[length - 1];
        }
        int i2 = i - 1;
        float[] fArr = this.f4718d;
        float f2 = fArr[i2];
        float[] fArr2 = this.timeline;
        float f3 = fArr2[i2];
        return f2 + ((fArr[i] - f2) * ((f - f3) / (fArr2[i] - f3)));
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.RangedNumericValue, com.badlogic.gdx.graphics.g3d.particles.values.ParticleValue, com.badlogic.gdx.utils.Json.Serializable
    public void read(Json json, JsonValue jsonValue) {
        super.read(json, jsonValue);
        Class cls = Float.TYPE;
        this.f4719k = ((Float) json.readValue("highMin", cls, jsonValue)).floatValue();
        this.f4720p = ((Float) json.readValue("highMax", cls, jsonValue)).floatValue();
        this.f4721q = ((Boolean) json.readValue("relative", Boolean.TYPE, jsonValue)).booleanValue();
        this.f4718d = (float[]) json.readValue("scaling", float[].class, jsonValue);
        this.timeline = (float[]) json.readValue("timeline", float[].class, jsonValue);
    }

    public void load(ScaledNumericValue scaledNumericValue) {
        super.load((RangedNumericValue) scaledNumericValue);
        this.f4720p = scaledNumericValue.f4720p;
        this.f4719k = scaledNumericValue.f4719k;
        float[] fArr = new float[scaledNumericValue.f4718d.length];
        this.f4718d = fArr;
        System.arraycopy(scaledNumericValue.f4718d, 0, fArr, 0, fArr.length);
        float[] fArr2 = new float[scaledNumericValue.timeline.length];
        this.timeline = fArr2;
        System.arraycopy(scaledNumericValue.timeline, 0, fArr2, 0, fArr2.length);
        this.f4721q = scaledNumericValue.f4721q;
    }

    public void setHigh(float f, float f2) {
        this.f4719k = f;
        this.f4720p = f2;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.RangedNumericValue, com.badlogic.gdx.graphics.g3d.particles.values.ParticleValue, com.badlogic.gdx.utils.Json.Serializable
    public void write(Json json) {
        super.write(json);
        json.writeValue("highMin", Float.valueOf(this.f4719k));
        json.writeValue("highMax", Float.valueOf(this.f4720p));
        json.writeValue("relative", Boolean.valueOf(this.f4721q));
        json.writeValue("scaling", this.f4718d);
        json.writeValue("timeline", this.timeline);
    }
}
