package com.badlogic.gdx.graphics.g3d.particles.values;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
/* loaded from: classes.dex */
public class GradientColorValue extends ParticleValue {

    /* renamed from: b */
    public static float[] f4693b = new float[3];

    /* renamed from: a */
    public float[] f4694a = {1.0f, 1.0f, 1.0f};
    public float[] timeline = {0.0f};

    public float[] getColor(float f) {
        getColor(f, f4693b, 0);
        return f4693b;
    }

    public float[] getColors() {
        return this.f4694a;
    }

    public float[] getTimeline() {
        return this.timeline;
    }

    public void setColors(float[] fArr) {
        this.f4694a = fArr;
    }

    public void setTimeline(float[] fArr) {
        this.timeline = fArr;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.ParticleValue, com.badlogic.gdx.utils.Json.Serializable
    public void read(Json json, JsonValue jsonValue) {
        super.read(json, jsonValue);
        this.f4694a = (float[]) json.readValue("colors", float[].class, jsonValue);
        this.timeline = (float[]) json.readValue("timeline", float[].class, jsonValue);
    }

    public void getColor(float f, float[] fArr, int i) {
        float[] fArr2 = this.timeline;
        int length = fArr2.length;
        int i2 = 1;
        int i3 = 0;
        while (true) {
            if (i2 >= length) {
                i2 = -1;
                break;
            } else if (fArr2[i2] > f) {
                break;
            } else {
                i3 = i2;
                i2++;
            }
        }
        float f2 = fArr2[i3];
        int i4 = i3 * 3;
        float[] fArr3 = this.f4694a;
        float f3 = fArr3[i4];
        float f4 = fArr3[i4 + 1];
        float f5 = fArr3[i4 + 2];
        if (i2 == -1) {
            fArr[i] = f3;
            fArr[i + 1] = f4;
            fArr[i + 2] = f5;
            return;
        }
        float f6 = (f - f2) / (fArr2[i2] - f2);
        int i5 = i2 * 3;
        fArr[i] = f3 + ((fArr3[i5] - f3) * f6);
        fArr[i + 1] = f4 + ((fArr3[i5 + 1] - f4) * f6);
        fArr[i + 2] = f5 + ((fArr3[i5 + 2] - f5) * f6);
    }

    public void load(GradientColorValue gradientColorValue) {
        super.load((ParticleValue) gradientColorValue);
        float[] fArr = new float[gradientColorValue.f4694a.length];
        this.f4694a = fArr;
        System.arraycopy(gradientColorValue.f4694a, 0, fArr, 0, fArr.length);
        float[] fArr2 = new float[gradientColorValue.timeline.length];
        this.timeline = fArr2;
        System.arraycopy(gradientColorValue.timeline, 0, fArr2, 0, fArr2.length);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.ParticleValue, com.badlogic.gdx.utils.Json.Serializable
    public void write(Json json) {
        super.write(json);
        json.writeValue("colors", this.f4694a);
        json.writeValue("timeline", this.timeline);
    }
}
