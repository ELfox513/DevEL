package com.badlogic.gdx.graphics.g3d.particles.values;

import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.g3d.Model;
import com.badlogic.gdx.graphics.g3d.particles.values.MeshSpawnShapeValue;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector3;
/* loaded from: classes.dex */
public final class UnweightedMeshSpawnShapeValue extends MeshSpawnShapeValue {

    /* renamed from: d */
    public float[] f4722d;

    /* renamed from: k */
    public short[] f4723k;

    /* renamed from: p */
    public int f4724p;

    /* renamed from: q */
    public int f4725q;

    /* renamed from: r */
    public int f4726r;

    /* renamed from: s */
    public int f4727s;

    public UnweightedMeshSpawnShapeValue(UnweightedMeshSpawnShapeValue unweightedMeshSpawnShapeValue) {
        super(unweightedMeshSpawnShapeValue);
        load(unweightedMeshSpawnShapeValue);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue
    public SpawnShapeValue copy() {
        return new UnweightedMeshSpawnShapeValue(this);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue
    public void spawnAux(Vector3 vector3, float f) {
        if (this.f4723k == null) {
            int random = MathUtils.random(this.f4726r - 3);
            int i = this.f4725q;
            int i2 = (random * i) + this.f4724p;
            int i3 = i2 + i;
            int i4 = i + i3;
            float[] fArr = this.f4722d;
            MeshSpawnShapeValue.Triangle.pick(fArr[i2], fArr[i2 + 1], fArr[i2 + 2], fArr[i3], fArr[i3 + 1], fArr[i3 + 2], fArr[i4], fArr[i4 + 1], fArr[i4 + 2], vector3);
            return;
        }
        int random2 = MathUtils.random(this.f4727s - 1) * 3;
        short[] sArr = this.f4723k;
        short s = sArr[random2];
        int i5 = this.f4725q;
        int i6 = this.f4724p;
        int i7 = (s * i5) + i6;
        int i8 = (sArr[random2 + 1] * i5) + i6;
        int i9 = (sArr[random2 + 2] * i5) + i6;
        float[] fArr2 = this.f4722d;
        MeshSpawnShapeValue.Triangle.pick(fArr2[i7], fArr2[i7 + 1], fArr2[i7 + 2], fArr2[i8], fArr2[i8 + 1], fArr2[i8 + 2], fArr2[i9], fArr2[i9 + 1], fArr2[i9 + 2], vector3);
    }

    public UnweightedMeshSpawnShapeValue() {
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.MeshSpawnShapeValue
    public void setMesh(Mesh mesh, Model model) {
        super.setMesh(mesh, model);
        this.f4725q = mesh.getVertexSize() / 4;
        this.f4724p = mesh.getVertexAttribute(1).offset / 4;
        int numIndices = mesh.getNumIndices();
        if (numIndices > 0) {
            short[] sArr = new short[numIndices];
            this.f4723k = sArr;
            mesh.getIndices(sArr);
            this.f4727s = this.f4723k.length / 3;
        } else {
            this.f4723k = null;
        }
        int numVertices = mesh.getNumVertices();
        this.f4726r = numVertices;
        float[] fArr = new float[numVertices * this.f4725q];
        this.f4722d = fArr;
        mesh.getVertices(fArr);
    }
}
