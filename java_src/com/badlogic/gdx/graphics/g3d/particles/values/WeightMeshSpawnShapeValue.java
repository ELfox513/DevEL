package com.badlogic.gdx.graphics.g3d.particles.values;

import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.graphics.g3d.particles.values.MeshSpawnShapeValue;
import com.badlogic.gdx.math.CumulativeDistribution;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector3;
/* loaded from: classes.dex */
public final class WeightMeshSpawnShapeValue extends MeshSpawnShapeValue {

    /* renamed from: d */
    public CumulativeDistribution<MeshSpawnShapeValue.Triangle> f4728d;

    public WeightMeshSpawnShapeValue(WeightMeshSpawnShapeValue weightMeshSpawnShapeValue) {
        super(weightMeshSpawnShapeValue);
        this.f4728d = new CumulativeDistribution<>();
        load(weightMeshSpawnShapeValue);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue
    public SpawnShapeValue copy() {
        return new WeightMeshSpawnShapeValue(this);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue
    public void init() {
        calculateWeights();
    }

    public void calculateWeights() {
        this.f4728d.clear();
        VertexAttributes vertexAttributes = this.f4695a.getVertexAttributes();
        int numIndices = this.f4695a.getNumIndices();
        int numVertices = this.f4695a.getNumVertices();
        short s = (short) (vertexAttributes.vertexSize / 4);
        short s2 = (short) (vertexAttributes.findByUsage(1).offset / 4);
        float[] fArr = new float[numVertices * s];
        this.f4695a.getVertices(fArr);
        int i = 0;
        if (numIndices > 0) {
            short[] sArr = new short[numIndices];
            this.f4695a.getIndices(sArr);
            while (i < numIndices) {
                int i2 = (sArr[i] * s) + s2;
                int i3 = (sArr[i + 1] * s) + s2;
                int i4 = (sArr[i + 2] * s) + s2;
                float f = fArr[i2];
                float f2 = fArr[i2 + 1];
                float f3 = fArr[i2 + 2];
                float f4 = fArr[i3];
                float f5 = fArr[i3 + 1];
                float f6 = fArr[i3 + 2];
                float f7 = fArr[i4];
                float f8 = fArr[i4 + 1];
                float f9 = fArr[i4 + 2];
                this.f4728d.add(new MeshSpawnShapeValue.Triangle(f, f2, f3, f4, f5, f6, f7, f8, f9), Math.abs(((((f5 - f8) * f) + ((f8 - f2) * f4)) + ((f2 - f5) * f7)) / 2.0f));
                i += 3;
            }
        } else {
            while (i < numVertices) {
                int i5 = i + s2;
                int i6 = i5 + s;
                int i7 = i6 + s;
                float f10 = fArr[i5];
                float f11 = fArr[i5 + 1];
                float f12 = fArr[i5 + 2];
                float f13 = fArr[i6];
                float f14 = fArr[i6 + 1];
                float f15 = fArr[i6 + 2];
                float f16 = fArr[i7];
                float f17 = fArr[i7 + 1];
                float f18 = fArr[i7 + 2];
                this.f4728d.add(new MeshSpawnShapeValue.Triangle(f10, f11, f12, f13, f14, f15, f16, f17, f18), Math.abs(((((f14 - f17) * f10) + ((f17 - f11) * f13)) + ((f11 - f14) * f16)) / 2.0f));
                i += s;
            }
        }
        this.f4728d.generateNormalized();
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue
    public void spawnAux(Vector3 vector3, float f) {
        MeshSpawnShapeValue.Triangle value = this.f4728d.value();
        float random = MathUtils.random();
        float random2 = MathUtils.random();
        float f2 = value.f4697a;
        float f3 = value.f4698b;
        float f4 = value.f4699c;
        vector3.set(((value.f4700d - f2) * random) + f2 + ((value.f4703g - f2) * random2), ((value.f4701e - f3) * random) + f3 + ((value.f4704h - f3) * random2), (random * (value.f4702f - f4)) + f4 + (random2 * (value.f4705i - f4)));
    }

    public WeightMeshSpawnShapeValue() {
        this.f4728d = new CumulativeDistribution<>();
    }
}
