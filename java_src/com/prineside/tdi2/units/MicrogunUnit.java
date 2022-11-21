package com.prineside.tdi2.units;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.Sprite;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Unit;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.shapes.BulletSmokeMultiLine;
import com.prineside.tdi2.shapes.RangeCircle;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.systems.ParticleSystem;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.towers.MinigunTower;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class MicrogunUnit extends Unit {

    /* renamed from: s */
    public static final Vector2 f15046s = new Vector2();

    /* renamed from: a */
    public float f15047a;

    /* renamed from: b */
    public float f15048b;

    /* renamed from: d */
    public Enemy.EnemyReference f15049d;
    @NAGS

    /* renamed from: k */
    public final Vector2 f15050k;
    @NAGS

    /* renamed from: p */
    public final Vector2 f15051p;
    public MinigunTower parent;
    @NAGS

    /* renamed from: q */
    public float f15052q;
    @NAGS

    /* renamed from: r */
    public float f15053r;

    /* loaded from: classes2.dex */
    public static class MicrogunUnitFactory extends Unit.Factory.BasicAbstractFactory<MicrogunUnit> {

        /* renamed from: b */
        public TextureRegion f15054b;

        /* renamed from: d */
        public TextureRegion f15055d;
        public ParticleEffectPool highlightParticles;

        @Override // com.prineside.tdi2.Unit.Factory
        public Color getColor() {
            return MaterialColor.PURPLE.P300;
        }

        @Override // com.prineside.tdi2.Unit.Factory
        public MicrogunUnit create() {
            return new MicrogunUnit();
        }

        @Override // com.prineside.tdi2.Unit.Factory.BasicAbstractFactory
        public void setupAssets() {
            this.f15054b = Game.f8589i.assetManager.getTextureRegion("tower-minigun-microgun-base");
            this.f15055d = Game.f8589i.assetManager.getTextureRegion("tower-minigun-microgun-weapon");
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.internal("particles/building-highlight.prt"), Game.f8589i.assetManager.getTextureRegion("tower-basic-base").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            particleEffect.getEmitters().first().setSprites(new Array<>(new Sprite[]{new Sprite(this.f15054b)}));
            this.highlightParticles = new ParticleEffectPool(particleEffect, 2, 64);
        }
    }

    /* renamed from: a */
    public final float m19860a() {
        return this.parent.rangeInPixels * ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MINIGUN_A_MICROGUN_RANGE));
    }

    @Override // com.prineside.tdi2.Unit
    public float getSize() {
        return 32.0f;
    }

    public void rotateTo(float f, float f2, float f3, float f4) {
        Vector2 vector2 = this.position;
        rotateTo(PMath.getAngleBetweenPoints(vector2.f5527x, vector2.f5528y, f, f2), f3, f4);
    }

    public MicrogunUnit() {
        super(3);
        this.f15049d = Enemy.EnemyReference.NULL;
        this.f15050k = new Vector2();
        this.f15051p = new Vector2();
    }

    /* renamed from: b */
    public final void m19859b(int i) {
        boolean z;
        Enemy enemy = this.f15049d.enemy;
        if (enemy == null) {
            return;
        }
        this.f15050k.set(this.position);
        PMath.shiftPointByAngle(this.f15050k, this.angle, 38.0f);
        PMath.shiftPointByAngle(this.f15050k, this.angle + 90.0f, 4.0f);
        this.f15051p.f5527x = enemy.getPosition().f5527x + (FastRandom.getFloat() * 4.0f);
        this.f15051p.f5528y = enemy.getPosition().f5528y + (FastRandom.getFloat() * 4.0f);
        EnemySystem enemySystem = this.f8844S.enemy;
        MinigunTower minigunTower = this.parent;
        enemySystem.giveDamage(enemy, minigunTower, minigunTower.damage * i, DamageType.BULLET, null, true, null);
        if (this.f8844S._projectileTrail != null && Game.f8589i.settingsManager.isProjectileTrailsDrawing() && !this.f8844S.gameState.canSkipMediaUpdate() && (PMath.getDistanceBetweenAngles(this.f15052q, this.angle) > 4.0f || this.f15053r > 0.2f)) {
            this.f15052q = this.angle;
            this.f15053r = 0.0f;
            BulletSmokeMultiLine obtain = Game.f8589i.shapeManager.f10141F.BULLET_SMOKE_MULTI_LINE.obtain();
            Vector2 vector2 = this.position;
            float f = vector2.f5527x;
            float f2 = vector2.f5528y;
            float f3 = this.angle;
            Vector2 vector22 = f15046s;
            PMath.getPointByAngleFromPoint(f, f2, f3, 36.0f, vector22);
            TextureRegion textureRegion = Game.f8589i.towerManager.f10174F.MINIGUN.bulletTraceTexture;
            if (FastRandom.getFloat() < 0.5f) {
                z = true;
            } else {
                z = false;
            }
            obtain.setTexture(textureRegion, false, z);
            obtain.setColor(MaterialColor.PURPLE.P200);
            obtain.maxSegmentWidth = 32.0f;
            obtain.nodesDisperseTime = 0.7f;
            obtain.maxAlpha = 0.56f;
            float f4 = vector22.f5527x;
            float f5 = vector22.f5528y;
            Vector2 vector23 = this.f15051p;
            obtain.setup(f4, f5, vector23.f5527x, vector23.f5528y);
            this.f8844S._projectileTrail.addTrail(obtain);
        }
        if (this.f8844S._particle != null) {
            Vector2 vector24 = f15046s;
            Vector2 vector25 = this.position;
            vector24.set(vector25.f5527x, vector25.f5528y);
            PMath.shiftPointByAngle(vector24, this.angle, 35.0f);
            this.f8844S._particle.addFlashParticle(Game.f8589i.assetManager.f9555TR.muzzleFlashSmall, vector24.f5527x, vector24.f5528y, 10.4f, 3.8999999f, 20.8f, 31.199999f, this.angle);
        }
        SoundSystem soundSystem = this.f8844S._sound;
        if (soundSystem != null) {
            soundSystem.playShotSound(StaticSoundType.SHOT_MINIGUN, this.parent);
        }
    }

    public void destroy(Enemy enemy) {
        ParticleSystem particleSystem = this.f8844S._particle;
        if (particleSystem != null) {
            TextureRegion textureRegion = Game.f8589i.unitManager.f10234F.MICROGUN.f15054b;
            Vector2 vector2 = this.position;
            particleSystem.addShatterParticle(textureRegion, vector2.f5527x, vector2.f5528y, 60.0f, 0.0f, 1.0f);
        }
        this.f8844S.unit.killUnit(this, enemy);
    }

    @Override // com.prineside.tdi2.Unit
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        TextureRegion textureRegion = Game.f8589i.unitManager.f10234F.MICROGUN.f15054b;
        Vector2 vector2 = this.drawPosition;
        spriteBatch.draw(textureRegion, vector2.f5527x - 30.0f, vector2.f5528y - 30.0f, 60.0f, 60.0f);
        TextureRegion textureRegion2 = Game.f8589i.unitManager.f10234F.MICROGUN.f15055d;
        Vector2 vector22 = this.drawPosition;
        spriteBatch.draw(textureRegion2, vector22.f5527x - 12.0f, vector22.f5528y - 12.0f, 12.0f, 12.0f, 24.0f, 48.0f, 1.0f, 1.0f, this.angle);
    }

    public void drawRange(Batch batch, RangeCircle rangeCircle) {
        Vector2 vector2 = this.position;
        float f = vector2.f5527x;
        float f2 = vector2.f5528y;
        float m19860a = m19860a();
        if (rangeCircle.getX() != f || rangeCircle.getY() != f2 || rangeCircle.getMinRadius() != 0.0f || rangeCircle.getMaxRadius() != m19860a) {
            rangeCircle.setup(f, f2, 0.0f, m19860a, MapSystem.TOWER_RANGE_HOVER_COLOR);
        }
        rangeCircle.draw(batch);
    }

    public void rotateTo(float f, float f2, float f3) {
        float f4 = this.angle;
        if (f == f4) {
            return;
        }
        float distanceBetweenAngles = PMath.getDistanceBetweenAngles(f4, f);
        float f5 = f2 * f3;
        if (f5 >= StrictMath.abs(distanceBetweenAngles)) {
            this.angle = f;
        } else if (distanceBetweenAngles < 0.0f) {
            this.angle -= f5;
        } else {
            this.angle += f5;
        }
    }

    public void setup(MinigunTower minigunTower, float f, float f2) {
        this.parent = minigunTower;
        this.angle = 0.0f;
        this.staticPosition = true;
        this.position.set(f, f2);
    }

    @Override // com.prineside.tdi2.Unit
    public void update(float f) {
        if (!this.parent.isRegistered()) {
            destroy(null);
            return;
        }
        boolean z = false;
        int i = 0;
        while (true) {
            DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = this.currentTile.enemies;
            if (i < delayedRemovalArray.size) {
                Enemy enemy = delayedRemovalArray.items[i].enemy;
                if (enemy != null && this.position.dst2(enemy.getPosition()) < 1024.0f) {
                    destroy(enemy);
                    return;
                }
                i++;
            } else {
                this.f15053r += f;
                if (this.f15049d.enemy == null) {
                    float f2 = this.f15047a + f;
                    this.f15047a = f2;
                    if (f2 > 0.15f) {
                        this.f15047a = 0.0f;
                        this.f15049d = this.f8844S.enemy.getReference(findTarget());
                    }
                }
                Enemy enemy2 = this.f15049d.enemy;
                if (enemy2 != null) {
                    Vector2 vector2 = this.position;
                    float squareDistanceBetweenPoints = PMath.getSquareDistanceBetweenPoints(vector2.f5527x, vector2.f5528y, enemy2.getPosition().f5527x, enemy2.getPosition().f5528y);
                    float m19860a = m19860a();
                    double d = this.parent.attackSpeed;
                    double percentValueAsMultiplier = this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_MINIGUN_A_MICROGUN_ATTACK_SPEED);
                    Double.isNaN(d);
                    float f3 = 1.0f / ((float) (d * percentValueAsMultiplier));
                    if (squareDistanceBetweenPoints < m19860a * m19860a) {
                        if (!this.parent.isOutOfOrder()) {
                            rotateTo(enemy2.getPosition().f5527x, enemy2.getPosition().f5528y, f, this.parent.rotationSpeed);
                            if (StrictMath.abs(PMath.getDistanceBetweenAngles(this.angle, PMath.getAngleBetweenPoints(this.position, enemy2.getPosition()))) < 3.0f) {
                                int i2 = (int) (this.f15048b / f3);
                                if (i2 > 0) {
                                    m19859b(i2);
                                    float f4 = this.f15048b - (i2 * f3);
                                    this.f15048b = f4;
                                    if (f4 < 0.0f) {
                                        this.f15048b = 0.0f;
                                    }
                                }
                                z = true;
                            }
                        }
                    } else {
                        this.f15049d = Enemy.EnemyReference.NULL;
                    }
                    float f5 = this.f15048b + f;
                    this.f15048b = f5;
                    if (!z && f5 > f3) {
                        this.f15048b = f3;
                        return;
                    }
                    return;
                }
                return;
            }
        }
    }

    public final Enemy findTarget() {
        float m19860a = m19860a();
        float f = m19860a * m19860a;
        Enemy enemy = null;
        float f2 = Float.MAX_VALUE;
        int i = 0;
        while (true) {
            DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = this.f8844S.map.spawnedEnemies;
            if (i < delayedRemovalArray.size) {
                Enemy enemy2 = delayedRemovalArray.items[i].enemy;
                if (enemy2 != null) {
                    float dst2 = this.position.dst2(enemy2.getPosition());
                    if (dst2 < f && this.parent.canAttackEnemy(enemy2) && f2 > dst2) {
                        enemy = enemy2;
                        f2 = dst2;
                    }
                }
                i++;
            } else {
                return enemy;
            }
        }
    }

    @Override // com.prineside.tdi2.Unit, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.parent = (MinigunTower) kryo.readClassAndObject(input);
        this.f15049d = (Enemy.EnemyReference) kryo.readObject(input, Enemy.EnemyReference.class);
        this.f15047a = input.readFloat();
        this.f15048b = input.readFloat();
    }

    @Override // com.prineside.tdi2.Unit, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeClassAndObject(output, this.parent);
        kryo.writeObject(output, this.f15049d);
        output.writeFloat(this.f15047a);
        output.writeFloat(this.f15048b);
    }
}
