package com.badlogic.gdx.graphics.g3d.particles.values;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.g3d.Model;
import com.badlogic.gdx.graphics.g3d.particles.ResourceData;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public abstract class MeshSpawnShapeValue extends SpawnShapeValue {

    /* renamed from: a */
    public Mesh f4695a;

    /* renamed from: b */
    public Model f4696b;

    public MeshSpawnShapeValue(MeshSpawnShapeValue meshSpawnShapeValue) {
        super(meshSpawnShapeValue);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue, com.badlogic.gdx.graphics.g3d.particles.values.ParticleValue
    public void load(ParticleValue particleValue) {
        super.load(particleValue);
        MeshSpawnShapeValue meshSpawnShapeValue = (MeshSpawnShapeValue) particleValue;
        setMesh(meshSpawnShapeValue.f4695a, meshSpawnShapeValue.f4696b);
    }

    public void setMesh(Mesh mesh, Model model) {
        if (mesh.getVertexAttribute(1) != null) {
            this.f4696b = model;
            this.f4695a = mesh;
            return;
        }
        throw new GdxRuntimeException("Mesh vertices must have Usage.Position");
    }

    /* loaded from: classes.dex */
    public static class Triangle {

        /* renamed from: a */
        public float f4697a;

        /* renamed from: b */
        public float f4698b;

        /* renamed from: c */
        public float f4699c;

        /* renamed from: d */
        public float f4700d;

        /* renamed from: e */
        public float f4701e;

        /* renamed from: f */
        public float f4702f;

        /* renamed from: g */
        public float f4703g;

        /* renamed from: h */
        public float f4704h;

        /* renamed from: i */
        public float f4705i;

        public static Vector3 pick(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, Vector3 vector3) {
            float random = MathUtils.random();
            float random2 = MathUtils.random();
            return vector3.set(((f4 - f) * random) + f + ((f7 - f) * random2), ((f5 - f2) * random) + f2 + ((f8 - f2) * random2), (random * (f6 - f3)) + f3 + (random2 * (f9 - f3)));
        }

        public Triangle(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
            this.f4697a = f;
            this.f4698b = f2;
            this.f4699c = f3;
            this.f4700d = f4;
            this.f4701e = f5;
            this.f4702f = f6;
            this.f4703g = f7;
            this.f4704h = f8;
            this.f4705i = f9;
        }

        public Vector3 pick(Vector3 vector3) {
            float random = MathUtils.random();
            float random2 = MathUtils.random();
            float f = this.f4697a;
            float f2 = this.f4698b;
            float f3 = this.f4699c;
            return vector3.set(((this.f4700d - f) * random) + f + ((this.f4703g - f) * random2), ((this.f4701e - f2) * random) + f2 + ((this.f4704h - f2) * random2), (random * (this.f4702f - f3)) + f3 + (random2 * (this.f4705i - f3)));
        }
    }

    public MeshSpawnShapeValue() {
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue, com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void save(AssetManager assetManager, ResourceData resourceData) {
        if (this.f4696b != null) {
            ResourceData.SaveData createSaveData = resourceData.createSaveData();
            createSaveData.saveAsset(assetManager.getAssetFileName(this.f4696b), Model.class);
            createSaveData.save("index", Integer.valueOf(this.f4696b.meshes.indexOf(this.f4695a, true)));
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue, com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void load(AssetManager assetManager, ResourceData resourceData) {
        ResourceData.SaveData saveData = resourceData.getSaveData();
        AssetDescriptor loadAsset = saveData.loadAsset();
        if (loadAsset != null) {
            Model model = (Model) assetManager.get(loadAsset);
            setMesh(model.meshes.get(((Integer) saveData.load("index")).intValue()), model);
        }
    }

    public void setMesh(Mesh mesh) {
        setMesh(mesh, null);
    }
}
