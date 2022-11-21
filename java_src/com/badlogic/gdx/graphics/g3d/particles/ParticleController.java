package com.badlogic.gdx.graphics.g3d.particles;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
import com.badlogic.gdx.graphics.g3d.particles.ResourceData;
import com.badlogic.gdx.graphics.g3d.particles.emitters.Emitter;
import com.badlogic.gdx.graphics.g3d.particles.influencers.Influencer;
import com.badlogic.gdx.graphics.g3d.particles.renderers.ParticleControllerRenderer;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Quaternion;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.collision.BoundingBox;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.reflect.ClassReflection;
/* loaded from: classes.dex */
public class ParticleController implements Json.Serializable, ResourceData.Configurable {

    /* renamed from: a */
    public BoundingBox f4514a;
    public float deltaTime;
    public float deltaTimeSqr;
    public Emitter emitter;
    public Array<Influencer> influencers;
    public String name;
    public ParticleChannels particleChannels;
    public ParallelArray particles;
    public ParticleControllerRenderer<?, ?> renderer;
    public Vector3 scale;
    public Matrix4 transform;

    public ParticleController() {
        this.transform = new Matrix4();
        this.scale = new Vector3(1.0f, 1.0f, 1.0f);
        this.influencers = new Array<>(true, 3, Influencer.class);
        m24116e(0.016666668f);
    }

    /* renamed from: d */
    public final <K extends Influencer> int m24117d(Class<K> cls) {
        int i = 0;
        while (true) {
            Array<Influencer> array = this.influencers;
            if (i < array.size) {
                if (ClassReflection.isAssignableFrom(cls, array.get(i).getClass())) {
                    return i;
                }
                i++;
            } else {
                return -1;
            }
        }
    }

    public void getTransform(Matrix4 matrix4) {
        matrix4.set(this.transform);
    }

    public boolean isComplete() {
        return this.emitter.isComplete();
    }

    public void rotate(Quaternion quaternion) {
        this.transform.rotate(quaternion);
    }

    public void scale(float f, float f2, float f3) {
        this.transform.scale(f, f2, f3);
        this.transform.getScale(this.scale);
    }

    public void setTransform(Matrix4 matrix4) {
        this.transform.set(matrix4);
        matrix4.getScale(this.scale);
    }

    public void setTranslation(Vector3 vector3) {
        this.transform.setTranslation(vector3);
    }

    public void translate(Vector3 vector3) {
        this.transform.translate(vector3);
    }

    public void update() {
        update(Gdx.graphics.getDeltaTime());
    }

    /* renamed from: a */
    public void m24120a(int i) {
        this.particles = new ParallelArray(i);
        this.emitter.allocateChannels();
        Array.ArrayIterator<Influencer> it = this.influencers.iterator();
        while (it.hasNext()) {
            it.next().allocateChannels();
        }
        this.renderer.allocateChannels();
    }

    public void activateParticles(int i, int i2) {
        this.emitter.activateParticles(i, i2);
        Array.ArrayIterator<Influencer> it = this.influencers.iterator();
        while (it.hasNext()) {
            it.next().activateParticles(i, i2);
        }
    }

    /* renamed from: b */
    public void m24119b() {
        this.emitter.set(this);
        Array.ArrayIterator<Influencer> it = this.influencers.iterator();
        while (it.hasNext()) {
            it.next().set(this);
        }
        this.renderer.set(this);
    }

    /* renamed from: c */
    public void m24118c() {
        this.f4514a.clr();
        ParallelArray.FloatChannel floatChannel = (ParallelArray.FloatChannel) this.particles.getChannel(ParticleChannels.Position);
        int i = floatChannel.strideSize * this.particles.size;
        for (int i2 = 0; i2 < i; i2 += floatChannel.strideSize) {
            BoundingBox boundingBox = this.f4514a;
            float[] fArr = floatChannel.data;
            boundingBox.ext(fArr[i2 + 0], fArr[i2 + 1], fArr[i2 + 2]);
        }
    }

    public ParticleController copy() {
        Emitter emitter = (Emitter) this.emitter.copy();
        Array<Influencer> array = this.influencers;
        Influencer[] influencerArr = new Influencer[array.size];
        Array.ArrayIterator<Influencer> it = array.iterator();
        int i = 0;
        while (it.hasNext()) {
            influencerArr[i] = (Influencer) it.next().copy();
            i++;
        }
        return new ParticleController(new String(this.name), emitter, (ParticleControllerRenderer) this.renderer.copy(), influencerArr);
    }

    public void dispose() {
        this.emitter.dispose();
        Array.ArrayIterator<Influencer> it = this.influencers.iterator();
        while (it.hasNext()) {
            it.next().dispose();
        }
    }

    public void draw() {
        if (this.particles.size > 0) {
            this.renderer.update();
        }
    }

    /* renamed from: e */
    public final void m24116e(float f) {
        this.deltaTime = f;
        this.deltaTimeSqr = f * f;
    }

    public void end() {
        Array.ArrayIterator<Influencer> it = this.influencers.iterator();
        while (it.hasNext()) {
            it.next().end();
        }
        this.emitter.end();
    }

    public BoundingBox getBoundingBox() {
        if (this.f4514a == null) {
            this.f4514a = new BoundingBox();
        }
        m24118c();
        return this.f4514a;
    }

    public void killParticles(int i, int i2) {
        this.emitter.killParticles(i, i2);
        Array.ArrayIterator<Influencer> it = this.influencers.iterator();
        while (it.hasNext()) {
            it.next().killParticles(i, i2);
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void load(AssetManager assetManager, ResourceData resourceData) {
        this.emitter.load(assetManager, resourceData);
        Array.ArrayIterator<Influencer> it = this.influencers.iterator();
        while (it.hasNext()) {
            it.next().load(assetManager, resourceData);
        }
        this.renderer.load(assetManager, resourceData);
    }

    public void mul(Matrix4 matrix4) {
        this.transform.mul(matrix4);
        this.transform.getScale(this.scale);
    }

    @Override // com.badlogic.gdx.utils.Json.Serializable
    public void read(Json json, JsonValue jsonValue) {
        this.name = (String) json.readValue("name", String.class, jsonValue);
        this.emitter = (Emitter) json.readValue("emitter", Emitter.class, jsonValue);
        this.influencers.addAll((Array) json.readValue("influencers", (Class<Object>) Array.class, Influencer.class, jsonValue));
        this.renderer = (ParticleControllerRenderer) json.readValue("renderer", ParticleControllerRenderer.class, jsonValue);
    }

    public void rotate(Vector3 vector3, float f) {
        this.transform.rotate(vector3, f);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void save(AssetManager assetManager, ResourceData resourceData) {
        this.emitter.save(assetManager, resourceData);
        Array.ArrayIterator<Influencer> it = this.influencers.iterator();
        while (it.hasNext()) {
            it.next().save(assetManager, resourceData);
        }
        this.renderer.save(assetManager, resourceData);
    }

    public void start() {
        this.emitter.start();
        Array.ArrayIterator<Influencer> it = this.influencers.iterator();
        while (it.hasNext()) {
            it.next().start();
        }
    }

    public void update(float f) {
        m24116e(f);
        this.emitter.update();
        Array.ArrayIterator<Influencer> it = this.influencers.iterator();
        while (it.hasNext()) {
            it.next().update();
        }
    }

    @Override // com.badlogic.gdx.utils.Json.Serializable
    public void write(Json json) {
        json.writeValue("name", this.name);
        json.writeValue("emitter", this.emitter, Emitter.class);
        json.writeValue("influencers", this.influencers, Array.class, Influencer.class);
        json.writeValue("renderer", this.renderer, ParticleControllerRenderer.class);
    }

    public <K extends Influencer> K findInfluencer(Class<K> cls) {
        int m24117d = m24117d(cls);
        if (m24117d > -1) {
            return (K) this.influencers.get(m24117d);
        }
        return null;
    }

    public void init() {
        m24119b();
        if (this.particles != null) {
            end();
            this.particleChannels.m24121a();
        }
        m24120a(this.emitter.maxParticleCount);
        this.emitter.init();
        Array.ArrayIterator<Influencer> it = this.influencers.iterator();
        while (it.hasNext()) {
            it.next().init();
        }
        this.renderer.init();
    }

    public <K extends Influencer> void removeInfluencer(Class<K> cls) {
        int m24117d = m24117d(cls);
        if (m24117d > -1) {
            this.influencers.removeIndex(m24117d);
        }
    }

    public <K extends Influencer> boolean replaceInfluencer(Class<K> cls, K k) {
        int m24117d = m24117d(cls);
        if (m24117d > -1) {
            this.influencers.insert(m24117d, k);
            this.influencers.removeIndex(m24117d + 1);
            return true;
        }
        return false;
    }

    public void reset() {
        end();
        start();
    }

    public void scale(Vector3 vector3) {
        scale(vector3.f5533x, vector3.f5534y, vector3.f5535z);
    }

    public void setTransform(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        this.transform.set(f, f2, f3, f4, f5, f6, f7, f8, f8, f8);
        this.scale.set(f8, f8, f8);
    }

    public ParticleController(String str, Emitter emitter, ParticleControllerRenderer<?, ?> particleControllerRenderer, Influencer... influencerArr) {
        this();
        this.name = str;
        this.emitter = emitter;
        this.renderer = particleControllerRenderer;
        this.particleChannels = new ParticleChannels();
        this.influencers = new Array<>(influencerArr);
    }
}
