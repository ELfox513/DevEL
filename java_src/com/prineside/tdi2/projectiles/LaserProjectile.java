package com.prineside.tdi2.projectiles;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.managers.ShapeManager;
import com.prineside.tdi2.shapes.MultiLine;
import com.prineside.tdi2.towers.LaserTower;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class LaserProjectile extends Projectile {

    /* renamed from: B */
    public static final Vector2 f10439B = new Vector2();

    /* renamed from: C */
    public static final Vector2 f10440C = new Vector2();

    /* renamed from: D */
    public static final Vector2 f10441D = new Vector2();

    /* renamed from: E */
    public static final Vector2 f10442E = new Vector2();

    /* renamed from: F */
    public static final Vector2 f10443F = new Vector2();

    /* renamed from: G */
    public static final Array<Enemy.EnemyReference> f10444G = new Array<>(true, 8, Enemy.EnemyReference.class);

    /* renamed from: A */
    public float f10445A;
    @NAGS

    /* renamed from: d */
    public MultiLine f10446d;
    @NAGS

    /* renamed from: k */
    public MultiLine f10447k;
    @NAGS

    /* renamed from: p */
    public ParticleEffectPool.PooledEffect f10448p;
    public int penetrationCount;
    @NAGS

    /* renamed from: q */
    public boolean f10449q;

    /* renamed from: r */
    public Tower f10450r;

    /* renamed from: s */
    public float f10451s;

    /* renamed from: t */
    public float f10452t;

    /* renamed from: u */
    public float f10453u;

    /* renamed from: v */
    public float f10454v;

    /* renamed from: w */
    public float f10455w;

    /* renamed from: x */
    public float f10456x;

    /* renamed from: y */
    public float f10457y;

    /* renamed from: z */
    public float f10458z;

    /* loaded from: classes2.dex */
    public static class LaserProjectileFactory extends Projectile.Factory<LaserProjectile> {

        /* renamed from: b */
        public TextureRegion f10459b;

        /* renamed from: d */
        public TextureRegion f10460d;

        /* renamed from: k */
        public ParticleEffectPool f10461k;

        @Override // com.prineside.tdi2.Projectile.Factory
        /* renamed from: b */
        public LaserProjectile mo21367a() {
            return new LaserProjectile();
        }

        @Override // com.prineside.tdi2.Projectile.Factory
        public void setupAssets() {
            this.f10459b = Game.f8589i.assetManager.getTextureRegion("laser");
            this.f10460d = Game.f8589i.assetManager.getTextureRegion("laser-cap");
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.internal("particles/sparkles.prt"), Game.f8589i.assetManager.getTextureRegion("particle-triangle").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f10461k = new ParticleEffectPool(particleEffect, 8, 1024);
        }

        @Override // com.prineside.tdi2.Projectile.Factory
        public void clearPool() {
            super.clearPool();
            ParticleEffectPool particleEffectPool = this.f10461k;
            if (particleEffectPool != null) {
                particleEffectPool.clear();
            }
        }
    }

    /* renamed from: a */
    public final boolean m21375a() {
        return this.f10456x == 0.0f && this.f10457y == 0.0f;
    }

    @Override // com.prineside.tdi2.Projectile
    public void applyDrawInterpolation(float f) {
    }

    @Override // com.prineside.tdi2.Projectile
    public boolean hasReachedTarget() {
        return this.f10458z >= this.f10455w;
    }

    @Override // com.prineside.tdi2.Projectile
    public boolean isDone() {
        return this.f10458z >= this.f10455w;
    }

    public void stop() {
        this.f10458z = this.f10455w;
    }

    public LaserProjectile() {
        super(ProjectileType.LASER);
    }

    public void handleCollisions(float f) {
        float floatValue;
        float ultDamageMultiplier;
        int i;
        Tower tower = this.f10450r;
        LaserTower laserTower = null;
        if (tower != null && !tower.isRegistered()) {
            this.f10450r = null;
        }
        Tower tower2 = this.f10450r;
        if (tower2 != null && tower2.type == TowerType.LASER && tower2.isAbilityInstalled(4)) {
            laserTower = (LaserTower) this.f10450r;
        }
        LaserTower laserTower2 = laserTower;
        if (laserTower2 == null) {
            floatValue = 0.0f;
        } else {
            floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_LASER_A_ULTIMATE_DURATION);
        }
        if (laserTower2 == null) {
            ultDamageMultiplier = 1.0f;
        } else {
            ultDamageMultiplier = laserTower2.getUltDamageMultiplier();
        }
        if (this.f8844S.achievement.isActive()) {
            Game.f8589i.achievementManager.setProgress(AchievementType.DOUBLE_LASER_DAMAGE, (int) ((ultDamageMultiplier - 1.0f) * 100.0f));
        }
        Array<Enemy.EnemyReference> array = f10444G;
        array.clear();
        this.f8844S.map.rayCastEnemies(array, this.f10451s, this.f10452t, this.f10453u, this.f10454v, 1.0f, true);
        if (array.size > 0) {
            boolean z = false;
            int i2 = this.penetrationCount;
            float f2 = 0.0f;
            int i3 = 0;
            while (true) {
                Array<Enemy.EnemyReference> array2 = f10444G;
                if (i3 >= array2.size) {
                    break;
                }
                Enemy enemy = array2.items[i3].enemy;
                if (enemy == null) {
                    i = i3;
                } else {
                    f10443F.set(enemy.getPosition());
                    float squaredSize = enemy.getSquaredSize();
                    if (f != 0.0f) {
                        i = i3;
                        if (this.f8844S.enemy.giveDamage(enemy, this.f10450r, this.f8833a * ultDamageMultiplier * f, DamageType.LASER, this.affectedByAbility, true, this) && laserTower2 != null) {
                            laserTower2.ultDamageBonuses.add(floatValue);
                        }
                    } else {
                        i = i3;
                    }
                    i2--;
                    f2 = squaredSize;
                    if (i2 == 0) {
                        z = true;
                        break;
                    }
                }
                i3 = i + 1;
            }
            if (z) {
                Vector2 vector2 = f10441D;
                vector2.set(this.f10451s, this.f10452t);
                Vector2 vector22 = f10442E;
                vector22.set(this.f10453u, this.f10454v);
                Vector2 vector23 = f10443F;
                Vector2 vector24 = f10439B;
                if (PMath.getLineCircleIntersection(vector2, vector22, vector23, f2, vector24)) {
                    this.f10456x = vector24.f5527x;
                    this.f10457y = vector24.f5528y;
                    this.f10449q = true;
                }
            } else {
                float f3 = this.f10456x;
                float f4 = this.f10453u;
                if (f3 != f4) {
                    this.f10449q = true;
                }
                this.f10456x = f4;
                this.f10457y = this.f10454v;
            }
        } else {
            float f5 = this.f10453u;
            if (f5 != this.f10456x || this.f10454v != this.f10457y) {
                this.f10456x = f5;
                this.f10457y = this.f10454v;
                this.f10449q = true;
            }
        }
        f10444G.clear();
    }

    public void setEndPos(float f, float f2) {
        this.f10453u = f;
        this.f10454v = f2;
        this.f10456x = 0.0f;
        this.f10457y = 0.0f;
        this.f10449q = true;
    }

    public void setStartPos(float f, float f2) {
        this.f10451s = f;
        this.f10452t = f2;
        this.f10456x = 0.0f;
        this.f10457y = 0.0f;
        this.f10449q = true;
    }

    /* renamed from: b */
    public final void m21374b() {
        float floatBits;
        if (!m21375a()) {
            if (this.f10446d == null) {
                ShapeManager shapeManager = Game.f8589i.shapeManager;
                ShapeType shapeType = ShapeType.MULTI_LINE;
                this.f10446d = (MultiLine) shapeManager.getFactory(shapeType).obtain();
                this.f10447k = (MultiLine) Game.f8589i.shapeManager.getFactory(shapeType).obtain();
            }
            if (this.penetrationCount == 1) {
                floatBits = MaterialColor.RED.P500.toFloatBits();
            } else {
                floatBits = MaterialColor.LIGHT_BLUE.P500.toFloatBits();
            }
            this.f10447k.reset();
            this.f10447k.setTextureRegion(Game.f8589i.projectileManager.f9990F.LASER.f10460d, false, false);
            Vector2 vector2 = f10439B;
            vector2.set(this.f10453u - this.f10451s, this.f10454v - this.f10452t);
            vector2.nor().scl(Game.f8589i.projectileManager.f9990F.LASER.f10460d.getRegionWidth());
            float f = floatBits;
            this.f10447k.appendNode(this.f10451s, this.f10452t, 48.0f, f, false);
            this.f10447k.appendNode(this.f10451s + vector2.f5527x, this.f10452t + vector2.f5528y, 48.0f, f, false);
            this.f10447k.updateAllNodes();
            this.f10446d.reset();
            this.f10446d.setTextureRegion(Game.f8589i.projectileManager.f9990F.LASER.f10459b, false, false);
            Vector2 vector22 = f10440C;
            vector22.set(this.f10453u - this.f10451s, this.f10454v - this.f10452t);
            vector22.nor().scl(Game.f8589i.projectileManager.f9990F.LASER.f10459b.getRegionWidth());
            float f2 = this.f10451s + vector2.f5527x;
            float f3 = this.f10452t + vector2.f5528y;
            this.f10446d.appendNode(f2, f3, 48.0f, f, false);
            for (float distanceBetweenPoints = PMath.getDistanceBetweenPoints(this.f10451s, this.f10452t, this.f10456x, this.f10457y) / Game.f8589i.projectileManager.f9990F.LASER.f10459b.getRegionWidth(); distanceBetweenPoints > 0.0f; distanceBetweenPoints -= 1.0f) {
                if (distanceBetweenPoints <= 1.0f) {
                    f2 = this.f10456x;
                    f3 = this.f10457y;
                } else {
                    Vector2 vector23 = f10439B;
                    f2 += vector23.f5527x;
                    f3 += vector23.f5528y;
                }
                this.f10446d.appendNode(f2, f3, 48.0f, floatBits, false);
            }
            this.f10446d.updateAllNodes();
            if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
                if (this.f10456x != 0.0f && this.f10457y != 0.0f) {
                    if (this.f10448p == null && !this.f8844S._particle.willParticleBeSkipped()) {
                        this.f10448p = Game.f8589i.projectileManager.f9990F.LASER.f10461k.obtain();
                        float angleBetweenPoints = PMath.getAngleBetweenPoints(this.f10451s, this.f10452t, this.f10453u, this.f10454v) - 90.0f;
                        this.f10448p.getEmitters().first().getAngle().setHigh(angleBetweenPoints - 60.0f, angleBetweenPoints + 60.0f);
                        this.f8844S._particle.addParticle(this.f10448p, true);
                    }
                    this.f10448p.setPosition(this.f10456x, this.f10457y);
                } else {
                    ParticleEffectPool.PooledEffect pooledEffect = this.f10448p;
                    if (pooledEffect != null) {
                        pooledEffect.allowCompletion();
                        this.f10448p = null;
                    }
                }
            }
            this.f10449q = false;
            return;
        }
        throw new IllegalStateException("Collision point is not calculated");
    }

    @Override // com.prineside.tdi2.Projectile
    public void draw(SpriteBatch spriteBatch, float f) {
        if (m21375a()) {
            return;
        }
        if (this.f10449q || this.f10446d == null) {
            m21374b();
        }
        float f2 = this.f10458z;
        float f3 = f2 / 0.15f;
        float f4 = this.f10455w;
        if (f4 - f2 < 0.15f) {
            f3 = (f4 - f2) / 0.15f;
        }
        if (f3 > 1.0f) {
            f3 = 1.0f;
        }
        MultiLine multiLine = this.f10447k;
        Color color = Color.WHITE;
        multiLine.setTint(color, f3);
        this.f10447k.draw(spriteBatch);
        this.f10446d.setTint(color, f3);
        this.f10446d.draw(spriteBatch);
    }

    @Override // com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f10450r = (Tower) kryo.readClassAndObject(input);
        this.f10451s = input.readFloat();
        this.f10452t = input.readFloat();
        this.f10453u = input.readFloat();
        this.f10454v = input.readFloat();
        this.penetrationCount = input.readVarInt(true);
        this.f10455w = input.readFloat();
        this.f10456x = input.readFloat();
        this.f10457y = input.readFloat();
        this.f10458z = input.readFloat();
        this.f10445A = input.readFloat();
    }

    @Override // com.prineside.tdi2.Projectile, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f10450r = null;
        this.f10458z = 0.0f;
        this.f10445A = 0.0f;
        this.f10456x = 0.0f;
        this.f10457y = 0.0f;
        this.f10451s = 0.0f;
        this.f10452t = 0.0f;
        this.f10453u = 0.0f;
        this.f10454v = 0.0f;
        this.f10455w = 0.0f;
        this.penetrationCount = 0;
        this.f10449q = true;
        if (this.f10446d != null) {
            ((MultiLine.MultiLineFactory) Game.f8589i.shapeManager.getFactory(ShapeType.MULTI_LINE)).free(this.f10446d);
            this.f10446d = null;
        }
        if (this.f10447k != null) {
            ((MultiLine.MultiLineFactory) Game.f8589i.shapeManager.getFactory(ShapeType.MULTI_LINE)).free(this.f10447k);
            this.f10447k = null;
        }
        f10444G.clear();
        ParticleEffectPool.PooledEffect pooledEffect = this.f10448p;
        if (pooledEffect != null) {
            pooledEffect.allowCompletion();
            this.f10448p = null;
        }
    }

    public void setup(Tower tower, float f, float f2, float f3, float f4, float f5, float f6, int i) {
        super.setup();
        this.f10450r = tower;
        this.f8833a = f2;
        this.f10451s = f3;
        this.f10452t = f4;
        this.f10453u = f5;
        this.f10454v = f6;
        this.penetrationCount = i;
        this.f10455w = f;
        this.f10449q = true;
    }

    @Override // com.prineside.tdi2.Projectile
    public void update(float f) {
        if (isDone()) {
            return;
        }
        this.f10458z += f;
        float f2 = this.f10445A + f;
        this.f10445A = f2;
        if (f2 > 0.17f || (this.f10456x == 0.0f && this.f10457y == 0.0f)) {
            handleCollisions(f2);
            this.f10445A = 0.0f;
        }
    }

    @Override // com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeClassAndObject(output, this.f10450r);
        output.writeFloat(this.f10451s);
        output.writeFloat(this.f10452t);
        output.writeFloat(this.f10453u);
        output.writeFloat(this.f10454v);
        output.writeVarInt(this.penetrationCount, true);
        output.writeFloat(this.f10455w);
        output.writeFloat(this.f10456x);
        output.writeFloat(this.f10457y);
        output.writeFloat(this.f10458z);
        output.writeFloat(this.f10445A);
    }
}
