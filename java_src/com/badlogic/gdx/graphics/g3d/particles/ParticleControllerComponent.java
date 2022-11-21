package com.badlogic.gdx.graphics.g3d.particles;

import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.graphics.g3d.particles.ResourceData;
import com.badlogic.gdx.math.Matrix3;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Quaternion;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
/* loaded from: classes.dex */
public abstract class ParticleControllerComponent implements Disposable, Json.Serializable, ResourceData.Configurable {

    /* renamed from: b */
    public static final Vector3 f4515b = new Vector3();

    /* renamed from: d */
    public static final Vector3 f4516d = new Vector3();

    /* renamed from: k */
    public static final Vector3 f4517k = new Vector3();

    /* renamed from: p */
    public static final Vector3 f4518p = new Vector3();

    /* renamed from: q */
    public static final Vector3 f4519q = new Vector3();

    /* renamed from: r */
    public static final Vector3 f4520r = new Vector3();

    /* renamed from: s */
    public static final Quaternion f4521s = new Quaternion();

    /* renamed from: t */
    public static final Quaternion f4522t = new Quaternion();

    /* renamed from: u */
    public static final Matrix3 f4523u = new Matrix3();

    /* renamed from: v */
    public static final Matrix4 f4524v = new Matrix4();

    /* renamed from: a */
    public ParticleController f4525a;

    public void activateParticles(int i, int i2) {
    }

    public void allocateChannels() {
    }

    public abstract ParticleControllerComponent copy();

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public void end() {
    }

    public void init() {
    }

    public void killParticles(int i, int i2) {
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void load(AssetManager assetManager, ResourceData resourceData) {
    }

    @Override // com.badlogic.gdx.utils.Json.Serializable
    public void read(Json json, JsonValue jsonValue) {
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void save(AssetManager assetManager, ResourceData resourceData) {
    }

    public void set(ParticleController particleController) {
        this.f4525a = particleController;
    }

    public void start() {
    }

    public void update() {
    }

    @Override // com.badlogic.gdx.utils.Json.Serializable
    public void write(Json json) {
    }
}
