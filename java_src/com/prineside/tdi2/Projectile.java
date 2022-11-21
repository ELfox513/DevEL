package com.prineside.tdi2;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.Pool;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.utils.REGS;
@REGS(classOnly = true)
/* loaded from: classes2.dex */
public abstract class Projectile extends Registrable implements Pool.Poolable {
    public static final float RAYCAST_INTERVAL_MAX = 69.12f;
    public static final float RAYCAST_INTERVAL_MIN = 32.0f;

    /* renamed from: b */
    public static final Array<Enemy> f8832b = new Array<>(false, 1, Enemy.class);

    /* renamed from: a */
    public float f8833a;
    public Ability affectedByAbility;

    /* renamed from: id */
    public int f8834id = 0;
    public Vector2 position = new Vector2();
    public ProjectileType type;

    /* loaded from: classes2.dex */
    public static abstract class Factory<T extends Projectile> implements Disposable {

        /* renamed from: a */
        public final Pool<T> f8835a = (Pool<T>) new Pool<T>(16, Integer.MAX_VALUE) { // from class: com.prineside.tdi2.Projectile.Factory.1
            @Override // com.badlogic.gdx.utils.Pool
            /* renamed from: c */
            public T newObject() {
                return (T) Factory.this.mo21367a();
            }
        };

        /* renamed from: a */
        public abstract T mo21367a();

        public void clearPool() {
            this.f8835a.clear();
        }

        public void clearPools() {
            this.f8835a.clear();
        }

        @Override // com.badlogic.gdx.utils.Disposable
        public void dispose() {
        }

        public void free(Projectile projectile) {
            this.f8835a.free(projectile);
        }

        public final T obtain() {
            return this.f8835a.obtain();
        }

        public void setupAssets() {
        }

        public void setup() {
            if (Game.f8589i.assetManager != null) {
                setupAssets();
            }
        }
    }

    public abstract void applyDrawInterpolation(float f);

    public abstract void draw(SpriteBatch spriteBatch, float f);

    public void flyOnEnemy(Enemy enemy) {
    }

    public Vector2 getPosition() {
        return this.position;
    }

    public abstract boolean hasReachedTarget();

    public void hit() {
    }

    public abstract boolean isDone();

    public void reset() {
        this.f8833a = 0.0f;
        this.affectedByAbility = null;
        this.f8834id = 0;
        this.position.setZero();
    }

    public abstract void update(float f);

    public void multiplyDamage(float f, Ability ability) {
        this.f8833a *= f;
        if (ability != null) {
            this.affectedByAbility = ability;
        }
    }

    public Projectile(ProjectileType projectileType) {
        this.type = projectileType;
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.type = (ProjectileType) kryo.readObjectOrNull(input, ProjectileType.class);
        this.f8834id = input.readInt();
        this.f8833a = input.readFloat();
        this.position = (Vector2) kryo.readObject(input, Vector2.class);
        this.affectedByAbility = (Ability) kryo.readClassAndObject(input);
    }

    public void setup() {
        if (isRegistered()) {
            return;
        }
        throw new IllegalStateException("Projectile must be registered by ProjectileSystem before it can be set up");
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObjectOrNull(output, this.type, ProjectileType.class);
        output.writeInt(this.f8834id);
        output.writeFloat(this.f8833a);
        kryo.writeObject(output, this.position);
        kryo.writeClassAndObject(output, this.affectedByAbility);
    }
}
