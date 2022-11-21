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
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.EnemyFollowingProjectile;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.buffs.ChainReactionBuff;
import com.prineside.tdi2.buffs.PoisonBuff;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.towers.VenomTower;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class VenomProjectile extends EnemyFollowingProjectile {

    /* renamed from: B */
    public static final Color f10511B;

    /* renamed from: A */
    public PoisonBuff f10512A;
    @NAGS

    /* renamed from: x */
    public ParticleEffectPool.PooledEffect f10513x;

    /* renamed from: y */
    public boolean f10514y;

    /* renamed from: z */
    public VenomTower f10515z;

    /* loaded from: classes2.dex */
    public static class VenomProjectileFactory extends Projectile.Factory<VenomProjectile> {

        /* renamed from: b */
        public TextureRegion f10516b;

        /* renamed from: d */
        public TextureRegion f10517d;

        /* renamed from: k */
        public ParticleEffectPool f10518k;

        @Override // com.prineside.tdi2.Projectile.Factory
        /* renamed from: b */
        public VenomProjectile mo21367a() {
            return new VenomProjectile();
        }

        @Override // com.prineside.tdi2.Projectile.Factory
        public void setupAssets() {
            this.f10516b = Game.f8589i.assetManager.getTextureRegion("projectile-venom");
            this.f10517d = Game.f8589i.assetManager.getTextureRegion("bullet-trace-thin");
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.internal("particles/venom-projectile.prt"), Game.f8589i.assetManager.getTextureRegion("small-circle").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f10518k = new ParticleEffectPool(particleEffect, 8, 1024);
        }

        @Override // com.prineside.tdi2.Projectile.Factory
        public void clearPool() {
            super.clearPool();
            ParticleEffectPool particleEffectPool = this.f10518k;
            if (particleEffectPool != null) {
                particleEffectPool.clear();
            }
        }
    }

    static {
        Color color = MaterialColor.LIGHT_GREEN.P500;
        f10511B = new Color(color.f3892r, color.f3891g, color.f3890b, 0.56f);
    }

    public VenomProjectile() {
        super(ProjectileType.VENOM);
    }

    @Override // com.prineside.tdi2.Projectile
    public void draw(SpriteBatch spriteBatch, float f) {
        TextureRegion textureRegion = Game.f8589i.projectileManager.f9990F.VENOM.f10516b;
        Vector2 vector2 = this.drawPosition;
        spriteBatch.draw(textureRegion, vector2.f5527x - 9.0f, vector2.f5528y - 9.0f, 9.0f, 9.0f, 18.0f, 18.0f, 1.0f, 1.0f, this.drawAngle);
        ParticleEffectPool.PooledEffect pooledEffect = this.f10513x;
        if (pooledEffect != null) {
            Vector2 vector22 = this.drawPosition;
            pooledEffect.setPosition(vector22.f5527x, vector22.f5528y);
        }
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile
    public void update(float f) {
        VenomTower venomTower;
        if (!this.f10514y && getTarget() == null && (venomTower = this.f10515z) != null && venomTower.isRegistered()) {
            VenomTower venomTower2 = this.f10515z;
            if (venomTower2.type == TowerType.VENOM && venomTower2.isAbilityInstalled(2)) {
                Array<Enemy> array = Projectile.f8832b;
                array.clear();
                this.f8844S.map.getEnemiesNearPoint(array, getPosition().f5527x, getPosition().f5528y, 384.0f);
                for (int i = array.size - 1; i >= 0; i--) {
                    Array<Enemy> array2 = Projectile.f8832b;
                    Enemy enemy = array2.items[i];
                    if (!this.f10515z.canAttackEnemy(enemy) || !enemy.isRegistered()) {
                        array2.removeIndex(i);
                    }
                }
                Array<Enemy> array3 = Projectile.f8832b;
                int i2 = array3.size;
                if (i2 != 0) {
                    setTarget(array3.items[this.f8844S.gameState.randomInt(i2)]);
                } else {
                    this.f10514y = true;
                }
                array3.clear();
            }
        }
        super.update(f);
    }

    @Override // com.prineside.tdi2.Projectile
    public void hit() {
        super.hit();
        Enemy target = getTarget();
        if (target != null) {
            this.f8844S.buff.P_POISON.addBuff(target, this.f10512A);
            VenomTower venomTower = this.f10515z;
            if (venomTower != null && venomTower.isRegistered()) {
                VenomTower venomTower2 = this.f10515z;
                if (venomTower2.type == TowerType.VENOM && venomTower2.isAbilityInstalled(4)) {
                    VenomTower venomTower3 = this.f10515z;
                    if (!target.hasBuffsByType(BuffType.CHAIN_REACTION)) {
                        ChainReactionBuff obtain = Game.f8589i.buffManager.f9699F.CHAIN_REACTION.obtain();
                        float floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_VENOM_A_CHAIN_DURATION);
                        obtain.setup(floatValue, floatValue * 10.0f, venomTower3.getUltimateChance(), this.f8844S.gameValue.getFloatValue(GameValueType.TOWER_VENOM_A_CHAIN_RANGE), ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.TOWER_VENOM_A_CHAIN_PROLONG)) + 1.0f);
                        this.f8844S.buff.P_CHAIN_REACTION.addBuff(target, obtain);
                    }
                }
            }
            EnemySystem enemySystem = this.f8844S.enemy;
            PoisonBuff poisonBuff = this.f10512A;
            enemySystem.giveDamage(target, poisonBuff.tower, poisonBuff.hitDamage, DamageType.POISON, this.affectedByAbility, true, this);
            Tower tower = this.f10512A.tower;
            if (tower != null && tower.getTarget() == target) {
                this.f10512A.tower.setTarget(null);
            }
        }
    }

    @Override // com.prineside.tdi2.Projectile
    public void multiplyDamage(float f, Ability ability) {
        super.multiplyDamage(f, ability);
        PoisonBuff poisonBuff = this.f10512A;
        poisonBuff.hitDamage *= f;
        poisonBuff.poisonDamage *= f;
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f10514y = input.readBoolean();
        this.f10515z = (VenomTower) kryo.readObjectOrNull(input, VenomTower.class);
        this.f10512A = (PoisonBuff) kryo.readObjectOrNull(input, PoisonBuff.class);
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f10514y = false;
        this.f10512A = null;
        this.f10515z = null;
        ParticleEffectPool.PooledEffect pooledEffect = this.f10513x;
        if (pooledEffect != null) {
            pooledEffect.allowCompletion();
            this.f10513x = null;
        }
    }

    public void setup(VenomTower venomTower, Enemy enemy, PoisonBuff poisonBuff, Vector2 vector2, float f) {
        super.setup(vector2, enemy, f);
        this.f10515z = venomTower;
        this.f10512A = poisonBuff;
        this.f10514y = false;
        if (this.f8844S._particle != null && Game.f8589i.settingsManager.isProjectileTrailsDrawing() && !this.f8844S._particle.willParticleBeSkipped()) {
            ParticleEffectPool.PooledEffect obtain = Game.f8589i.projectileManager.f9990F.VENOM.f10518k.obtain();
            this.f10513x = obtain;
            obtain.setPosition(vector2.f5527x, vector2.f5528y);
            this.f8844S._particle.addParticle(this.f10513x, true);
        }
    }

    @Override // com.prineside.tdi2.EnemyFollowingProjectile, com.prineside.tdi2.Projectile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeBoolean(this.f10514y);
        kryo.writeObjectOrNull(output, this.f10515z, VenomTower.class);
        kryo.writeObjectOrNull(output, this.f10512A, PoisonBuff.class);
    }
}
