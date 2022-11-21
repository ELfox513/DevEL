package com.prineside.tdi2.abilities;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.IntSet;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.systems.ProjectileSystem;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class MagnetAbility extends Ability {

    /* renamed from: u */
    public static final int[] f9009u = {100, 125, 150, 175, 250, 300, HttpStatus.SC_BAD_REQUEST, 550, 750, 875, CoreTile.FIXED_LEVEL_XP_REQUIREMENT};

    /* renamed from: v */
    public static final int[][] f9010v = {new int[]{5, 10, 25, 0, 0, 0, 0, 0, 0, 0, 300}, new int[]{0, 0, 5, 10, 30, 0, 0, 0, 0, 0, 250}, new int[]{0, 0, 0, 0, 10, 20, 50, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 10, 25, 45, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 0, 10, 25, 75, 0}};

    /* renamed from: b */
    public float f9011b;

    /* renamed from: d */
    public Enemy.EnemyReference f9012d;

    /* renamed from: k */
    public IntSet f9013k;

    /* renamed from: p */
    public float f9014p;

    /* renamed from: q */
    public _ProjectileSystemListener f9015q;
    @NAGS

    /* renamed from: r */
    public ParticleEffectPool.PooledEffect f9016r;
    @NAGS

    /* renamed from: s */
    public boolean f9017s;
    @NAGS

    /* renamed from: t */
    public boolean f9018t;

    /* loaded from: classes2.dex */
    public static class MagnetAbilityFactory extends Ability.Factory<MagnetAbility> {

        /* renamed from: c */
        public ParticleEffectPool f9019c;

        public MagnetAbilityFactory(AbilityType abilityType) {
            super(abilityType);
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getColor() {
            return MaterialColor.PINK.P500;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getDarkerColor() {
            return MaterialColor.PINK.P800;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public TextureRegionDrawable getIconDrawable() {
            return Game.f8589i.assetManager.getDrawable("icon-magnet");
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInGreenPapers(int i) {
            return MagnetAbility.f9009u[StrictMath.min(i, MagnetAbility.f9009u.length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInResources(ResourceType resourceType, int i) {
            return MagnetAbility.f9010v[resourceType.ordinal()][StrictMath.min(i, MagnetAbility.f9010v[0].length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public boolean requiresMapPointing() {
            return false;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public MagnetAbility create() {
            return new MagnetAbility();
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            int round = (int) StrictMath.round(gameValueProvider.getPercentValueAsMultiplier(GameValueType.ABILITY_MAGNET_COINS) * 100.0d);
            String format = Game.f8589i.localeManager.i18n.format("ability_description_MAGNET", Float.valueOf(MathUtils.round(((float) gameValueProvider.getPercentValueAsMultiplier(GameValueType.ABILITY_MAGNET_DAMAGE_MULTIPLIER)) * 1000.0f) / 10.0f));
            String format2 = Game.f8589i.localeManager.i18n.format("ability_coins_for_killed_enemies", Integer.valueOf(round));
            return format + "\n" + format2;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public void setupAssets() {
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.internal("particles/ability-magnet.prt"), Game.f8589i.assetManager.getTextureRegion("particle-default").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f9019c = new ParticleEffectPool(particleEffect, 1, 4);
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public void clearPool() {
            super.clearPool();
            ParticleEffectPool particleEffectPool = this.f9019c;
            if (particleEffectPool != null) {
                particleEffectPool.clear();
            }
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _ProjectileSystemListener extends ProjectileSystem.ProjectileSystemListener.ProjectileSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public MagnetAbility f9020a;

        @Override // com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 90980712;
        }

        @Override // com.prineside.tdi2.systems.ProjectileSystem.ProjectileSystemListener.ProjectileSystemListenerAdapter, com.prineside.tdi2.systems.ProjectileSystem.ProjectileSystemListener
        public void projectileUnregistered(Projectile projectile) {
            this.f9020a.f9013k.remove(projectile.f8834id);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f9020a = (MagnetAbility) kryo.readObjectOrNull(input, MagnetAbility.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f9020a, MagnetAbility.class);
        }

        @Deprecated
        public _ProjectileSystemListener() {
        }

        public _ProjectileSystemListener(MagnetAbility magnetAbility) {
            this.f9020a = magnetAbility;
        }
    }

    @Override // com.prineside.tdi2.Ability
    public void draw(SpriteBatch spriteBatch, float f) {
    }

    @Override // com.prineside.tdi2.Ability
    public boolean isDone() {
        return this.f9011b > 6.7f;
    }

    public MagnetAbility() {
        super(AbilityType.MAGNET);
        this.f9012d = Enemy.EnemyReference.NULL;
        this.f9013k = new IntSet();
    }

    /* renamed from: e */
    public final void m21863e() {
        this.f9012d = Enemy.EnemyReference.NULL;
        int i = 0;
        while (true) {
            DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = this.f8844S.map.spawnedEnemies;
            if (i < delayedRemovalArray.size) {
                Enemy.EnemyReference enemyReference = delayedRemovalArray.items[i];
                Enemy enemy = enemyReference.enemy;
                if (enemy != null && (this.f9012d.enemy == null || enemy.getHealth() > this.f9012d.enemy.getHealth())) {
                    this.f9012d = enemyReference;
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Registrable
    public void setUnregistered() {
        this.f9012d = Enemy.EnemyReference.NULL;
        this.f8844S.projectile.listeners.remove(this.f9015q);
        this.f9013k.clear();
        ParticleEffectPool.PooledEffect pooledEffect = this.f9016r;
        if (pooledEffect != null) {
            pooledEffect.allowCompletion();
            this.f9016r = null;
        }
        super.setUnregistered();
    }

    @Override // com.prineside.tdi2.Ability
    public void start(int i, int i2) {
        this.f8398a = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_MAGNET_COINS);
        if (this.f9015q == null) {
            this.f9015q = new _ProjectileSystemListener();
        }
        this.f8844S.projectile.listeners.add(this.f9015q);
        this.f9014p = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_MAGNET_DAMAGE_MULTIPLIER);
        this.f9011b = 0.0f;
        if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
            this.f9016r = Game.f8589i.abilityManager.f9538F.MAGNET.f9019c.obtain();
        }
        m21863e();
    }

    @Override // com.prineside.tdi2.Ability
    public void update(float f) {
        ParticleEffectPool.PooledEffect pooledEffect;
        float f2 = this.f9011b + f;
        this.f9011b = f2;
        if (f2 <= 5.0f) {
            if (this.f9012d.enemy == null) {
                m21863e();
            }
            if (this.f9012d.enemy != null) {
                int i = 0;
                while (true) {
                    DelayedRemovalArray<Projectile> delayedRemovalArray = this.f8844S.projectile.projectiles;
                    if (i >= delayedRemovalArray.size) {
                        break;
                    }
                    Projectile projectile = delayedRemovalArray.items[i];
                    if (!this.f9013k.contains(projectile.f8834id)) {
                        this.f9013k.add(projectile.f8834id);
                        projectile.multiplyDamage(this.f9014p, this);
                    }
                    projectile.flyOnEnemy(this.f9012d.enemy);
                    i++;
                }
            }
        } else {
            ParticleEffectPool.PooledEffect pooledEffect2 = this.f9016r;
            if (pooledEffect2 != null && !this.f9018t) {
                pooledEffect2.allowCompletion();
                this.f9018t = true;
            }
        }
        Enemy enemy = this.f9012d.enemy;
        if (enemy != null && (pooledEffect = this.f9016r) != null) {
            pooledEffect.setPosition(enemy.getPosition().f5527x, this.f9012d.enemy.getPosition().f5528y);
            if (!this.f9017s) {
                this.f9017s = true;
                this.f8844S._particle.addParticle(this.f9016r, false);
            }
        }
    }

    @Override // com.prineside.tdi2.Ability, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f9011b = input.readFloat();
        this.f9012d = (Enemy.EnemyReference) kryo.readObject(input, Enemy.EnemyReference.class);
        this.f9013k = (IntSet) kryo.readObject(input, IntSet.class);
        this.f9014p = input.readFloat();
        this.f9015q = (_ProjectileSystemListener) kryo.readObjectOrNull(input, _ProjectileSystemListener.class);
    }

    @Override // com.prineside.tdi2.Ability, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f9011b);
        kryo.writeObject(output, this.f9012d);
        kryo.writeObject(output, this.f9013k);
        output.writeFloat(this.f9014p);
        kryo.writeObjectOrNull(output, this.f9015q, _ProjectileSystemListener.class);
    }
}
