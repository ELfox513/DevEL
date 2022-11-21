package com.prineside.tdi2;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.ParticleEmitter;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.Pool;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.ExplosionType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.LimitedParticleType;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.systems.ParticleSystem;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import java.util.Arrays;
@REGS(classOnly = true)
/* loaded from: classes2.dex */
public abstract class Explosion extends Registrable implements Pool.Poolable {

    /* renamed from: t */
    public static final Array<Enemy> f8578t = new Array<>(true, 8, Enemy.class);

    /* renamed from: a */
    public Tower f8579a;

    /* renamed from: b */
    public float f8580b;

    /* renamed from: d */
    public float f8581d;
    public float damage;
    public Ability fromAbility;

    /* renamed from: k */
    public float f8582k;
    public float piercingMultiplier;
    public ExplosionType type;
    public Vector2 position = new Vector2();

    /* renamed from: p */
    public boolean f8583p = false;

    /* renamed from: q */
    public float f8584q = 0.0f;

    /* renamed from: r */
    public float[] f8585r = new float[20];

    /* renamed from: s */
    public DelayedRemovalArray<Enemy.EnemyReference> f8586s = new DelayedRemovalArray<>(false, 8, Enemy.EnemyReference.class);

    /* loaded from: classes2.dex */
    public static abstract class Factory<T extends Explosion> implements Disposable {

        /* renamed from: a */
        public final Pool<T> f8587a = (Pool<T>) new Pool<T>(16, Integer.MAX_VALUE) { // from class: com.prineside.tdi2.Explosion.Factory.1
            @Override // com.badlogic.gdx.utils.Pool
            /* renamed from: c */
            public T newObject() {
                return (T) Factory.this.mo21770a();
            }
        };

        /* renamed from: a */
        public abstract T mo21770a();

        public void clearPool() {
            this.f8587a.clear();
        }

        @Override // com.badlogic.gdx.utils.Disposable
        public void dispose() {
        }

        public void free(Explosion explosion) {
            this.f8587a.free(explosion);
        }

        public final T obtain() {
            return this.f8587a.obtain();
        }

        public void setupAssets() {
        }

        public void setup() {
            if (Game.f8589i.assetManager != null) {
                setupAssets();
            }
        }
    }

    public static float calculateDamage(float f, float f2, float f3) {
        return f * ((f2 * 0.8f) + 0.2f) * f3;
    }

    public static int getRayIndex(Vector2 vector2, Vector2 vector22) {
        return MathUtils.round(PMath.normalizeAngle(PMath.getAngleBetweenPoints(vector2, vector22)) / 18.947369f);
    }

    public Explosion cpy() {
        return null;
    }

    public void enemyAffected(Enemy enemy, float f, float f2) {
        this.f8844S.enemy.giveDamage(enemy, this.f8579a, calculateDamage(this.damage, f, f2), DamageType.EXPLOSION, this.fromAbility, true, null);
    }

    public Tower getTower() {
        return this.f8579a;
    }

    public boolean isDone() {
        return this.f8583p && this.f8584q >= this.f8582k;
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f8579a = null;
        this.f8584q = 0.0f;
        this.f8583p = false;
        this.f8586s.clear();
        this.fromAbility = null;
    }

    /* renamed from: a */
    public void m22014a(Tower tower, float f, float f2, float f3, float f4, float f5, Ability ability) {
        this.f8579a = tower;
        this.position.set(f, f2);
        this.damage = f3;
        this.f8580b = f4;
        this.f8581d = f4 * 128.0f;
        this.f8582k = f5;
        this.fromAbility = ability;
        this.piercingMultiplier = 1.0f;
        Arrays.fill(this.f8585r, 1.0f);
    }

    public void addExplosionParticle(Color color, LimitedParticleType limitedParticleType) {
        boolean z;
        if (this.f8844S._particle != null && Game.f8589i.settingsManager.isExplosionsDrawing()) {
            if (this.f8844S._mapRendering.getDrawMode() != MapRenderingSystem.DrawMode.DETAILED && Game.f8589i.settingsManager.isParticlesDrawing()) {
                z = false;
            } else {
                z = true;
            }
            ParticleEffectPool.PooledEffect obtain = Game.f8589i.explosionManager.particleEffectPool.obtain();
            Array<ParticleEmitter> emitters = obtain.getEmitters();
            float f = (this.f8581d * 2.0f) / 128.0f;
            float f2 = (8.0f * f) + 16.0f;
            ParticleEmitter particleEmitter = emitters.get(1);
            ParticleEmitter.GradientColorValue tint = particleEmitter.getTint();
            float[] colors = tint.getColors();
            colors[0] = color.f3892r;
            colors[1] = color.f3891g;
            colors[2] = color.f3890b;
            tint.setColors(colors);
            particleEmitter.getXScale().setHigh(f2);
            particleEmitter.getYScale().setHigh(f2);
            particleEmitter.getVelocity().setHigh(75.0f * f, 300.0f * f);
            ParticleEmitter particleEmitter2 = emitters.get(2);
            if (z) {
                particleEmitter2.setMinParticleCount(0);
            } else {
                particleEmitter2.setMinParticleCount(3);
                float f3 = 120.0f * f;
                particleEmitter2.getXScale().setHigh(f3);
                particleEmitter2.getYScale().setHigh(f3);
                particleEmitter2.getVelocity().setHigh(15.0f * f, f * 90.0f);
                ParticleEmitter.GradientColorValue tint2 = particleEmitter2.getTint();
                float[] colors2 = tint2.getColors();
                colors2[0] = color.f3892r;
                colors2[1] = color.f3891g;
                colors2[2] = color.f3890b;
                tint2.setColors(colors2);
            }
            Vector2 vector2 = this.position;
            obtain.setPosition(vector2.f5527x, vector2.f5528y);
            ParticleEmitter particleEmitter3 = obtain.getEmitters().get(0);
            ParticleEmitter.GradientColorValue tint3 = particleEmitter3.getTint();
            float[] colors3 = tint3.getColors();
            float f4 = color.f3892r;
            colors3[0] = f4;
            float f5 = color.f3891g;
            colors3[1] = f5;
            float f6 = color.f3890b;
            colors3[2] = f6;
            if (z) {
                colors3[0] = f4 * 0.4f;
                colors3[1] = f5 * 0.4f;
                colors3[2] = f6 * 0.4f;
            }
            tint3.setColors(colors3);
            particleEmitter3.getXScale().setHigh(this.f8581d * 2.0f);
            particleEmitter3.getYScale().setHigh(this.f8581d * 2.0f);
            particleEmitter3.getLife().setHigh(this.f8582k * 1000.0f);
            ParticleSystem particleSystem = this.f8844S._particle;
            Vector2 vector22 = this.position;
            particleSystem.addParticle(obtain, limitedParticleType, vector22.f5527x, vector22.f5528y);
        }
    }

    public void explode() {
        if (!this.f8583p) {
            this.f8583p = true;
            if (this.f8581d <= 0.0f) {
                this.f8586s.clear();
                return;
            }
            Array<Enemy> array = f8578t;
            array.clear();
            MapSystem mapSystem = this.f8844S.map;
            Vector2 vector2 = this.position;
            mapSystem.getEnemiesNearPoint(array, vector2.f5527x, vector2.f5528y, this.f8581d * 1.5f);
            int i = 0;
            while (true) {
                Array<Enemy> array2 = f8578t;
                if (i < array2.size) {
                    this.f8586s.add(this.f8844S.enemy.getReference(array2.items[i]));
                    i++;
                } else {
                    return;
                }
            }
        } else {
            throw new IllegalStateException("Explosion is already triggered");
        }
    }

    public void multiplyDamage(float f, Ability ability) {
        this.damage *= f;
        if (ability != null) {
            this.fromAbility = ability;
        }
    }

    public void update(float f) {
        if (!this.f8583p) {
            return;
        }
        float f2 = this.f8584q + f;
        this.f8584q = f2;
        float f3 = this.f8582k;
        if (f2 > f3) {
            this.f8584q = f3;
        }
        float f4 = this.f8581d;
        if (f4 > 0.0f) {
            float f5 = this.f8584q / f3;
            float f6 = f5 * f4 * f5 * f4;
            float percentValueAsMultiplier = ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.EXPLOSIONS_PIERCING)) * this.piercingMultiplier;
            if (percentValueAsMultiplier > 1.0f) {
                percentValueAsMultiplier = 1.0f;
            }
            if (percentValueAsMultiplier < 0.05f) {
                percentValueAsMultiplier = 0.05f;
            }
            float f7 = 1.0f - ((1.0f - percentValueAsMultiplier) * 0.5f);
            this.f8586s.begin();
            int i = this.f8586s.size;
            for (int i2 = 0; i2 < i; i2++) {
                Enemy enemy = this.f8586s.items[i2].enemy;
                if (enemy != null && this.position.dst2(enemy.getPosition()) < f6) {
                    int rayIndex = getRayIndex(this.position, enemy.getPosition());
                    this.f8586s.removeIndex(i2);
                    float f8 = this.f8585r[rayIndex];
                    if (f8 > 0.05f) {
                        enemyAffected(enemy, 1.0f - f5, f8);
                    }
                    float[] fArr = this.f8585r;
                    fArr[rayIndex] = fArr[rayIndex] * percentValueAsMultiplier;
                    int i3 = (rayIndex + 1) % 20;
                    fArr[i3] = fArr[i3] * f7;
                    int i4 = rayIndex - 1;
                    if (i4 == -1) {
                        i4 = 19;
                    }
                    fArr[i4] = fArr[i4] * f7;
                }
            }
            this.f8586s.end();
        }
    }

    public Explosion(ExplosionType explosionType) {
        this.type = explosionType;
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f8579a = (Tower) kryo.readClassAndObject(input);
        this.type = (ExplosionType) kryo.readObjectOrNull(input, ExplosionType.class);
        this.position = (Vector2) kryo.readObject(input, Vector2.class);
        this.damage = input.readFloat();
        this.f8580b = input.readFloat();
        this.f8581d = input.readFloat();
        this.f8582k = input.readFloat();
        this.fromAbility = (Ability) kryo.readClassAndObject(input);
        this.f8583p = input.readBoolean();
        this.f8584q = input.readFloat();
        this.piercingMultiplier = input.readFloat();
        this.f8585r = (float[]) kryo.readObject(input, float[].class);
        this.f8586s = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeClassAndObject(output, this.f8579a);
        kryo.writeObjectOrNull(output, this.type, ExplosionType.class);
        kryo.writeObject(output, this.position);
        output.writeFloat(this.damage);
        output.writeFloat(this.f8580b);
        output.writeFloat(this.f8581d);
        output.writeFloat(this.f8582k);
        kryo.writeClassAndObject(output, this.fromAbility);
        output.writeBoolean(this.f8583p);
        output.writeFloat(this.f8584q);
        output.writeFloat(this.piercingMultiplier);
        kryo.writeObject(output, this.f8585r);
        kryo.writeObject(output, this.f8586s);
    }
}
