package com.prineside.tdi2.abilities;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.shapes.ChainLightning;
import com.prineside.tdi2.utils.EntityUtils;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class ThunderAbility extends Ability {

    /* renamed from: r */
    public static final int[] f9050r = {100, 125, 150, 175, 250, 300, HttpStatus.SC_BAD_REQUEST, 550, 700, 800, 850};

    /* renamed from: s */
    public static final int[][] f9051s = {new int[]{5, 10, 25, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 5, 15, 30, 0, 0, 0, 0, 0, 250}, new int[]{0, 0, 0, 0, 10, 25, 40, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 10, 20, 60, 0, 150}, new int[]{0, 0, 0, 0, 0, 0, 0, 10, 20, 75, 0}};

    /* renamed from: b */
    public int f9052b;

    /* renamed from: d */
    public int f9053d;

    /* renamed from: k */
    public float f9054k;

    /* renamed from: p */
    public float f9055p;
    @NAGS

    /* renamed from: q */
    public final ChainLightning[] f9056q;

    /* loaded from: classes2.dex */
    public static class ThunderAbilityFactory extends Ability.Factory<ThunderAbility> {

        /* renamed from: c */
        public ParticleEffectPool f9057c;
        public TextureRegion lightningTexture;

        public ThunderAbilityFactory(AbilityType abilityType) {
            super(abilityType);
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getColor() {
            return MaterialColor.INDIGO.P400;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getDarkerColor() {
            return MaterialColor.INDIGO.P600;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public TextureRegionDrawable getIconDrawable() {
            return Game.f8589i.assetManager.getDrawable("icon-thunder");
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInGreenPapers(int i) {
            return ThunderAbility.f9050r[StrictMath.min(i, ThunderAbility.f9050r.length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInResources(ResourceType resourceType, int i) {
            return ThunderAbility.f9051s[resourceType.ordinal()][StrictMath.min(i, ThunderAbility.f9051s[0].length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public boolean requiresMapPointing() {
            return false;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public ThunderAbility create() {
            return new ThunderAbility();
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            int intValue = gameValueProvider.getIntValue(GameValueType.ABILITY_THUNDER_CHARGES_COUNT);
            int intValue2 = gameValueProvider.getIntValue(GameValueType.ABILITY_THUNDER_DAMAGE);
            int round = (int) StrictMath.round(gameValueProvider.getPercentValueAsMultiplier(GameValueType.ABILITY_THUNDER_COINS) * 100.0d);
            String format = Game.f8589i.localeManager.i18n.format("ability_description_THUNDER", Integer.valueOf(intValue), Integer.valueOf(intValue2));
            String format2 = Game.f8589i.localeManager.i18n.format("ability_coins_for_killed_enemies", Integer.valueOf(round));
            return format + "\n" + format2;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public void setupAssets() {
            this.lightningTexture = Game.f8589i.assetManager.getTextureRegion("chain-lightning-wide");
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.internal("particles/sparks.prt"), Game.f8589i.assetManager.getTextureRegion("particle-default").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f9057c = new ParticleEffectPool(particleEffect, 8, 32);
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public void clearPool() {
            super.clearPool();
            ParticleEffectPool particleEffectPool = this.f9057c;
            if (particleEffectPool != null) {
                particleEffectPool.clear();
            }
        }
    }

    @Override // com.prineside.tdi2.Ability
    public void draw(SpriteBatch spriteBatch, float f) {
    }

    @Override // com.prineside.tdi2.Ability
    public void drawBatchAdditive(SpriteBatch spriteBatch, float f) {
        int i = 0;
        while (true) {
            ChainLightning[] chainLightningArr = this.f9056q;
            if (i < chainLightningArr.length) {
                ChainLightning chainLightning = chainLightningArr[i];
                if (chainLightning != null) {
                    chainLightning.update(f);
                    this.f9056q[i].draw(spriteBatch);
                    if (this.f9056q[i].isFinished()) {
                        this.f9056q[i].free();
                        this.f9056q[i] = null;
                    }
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Ability
    public boolean isDone() {
        return this.f9052b >= this.f9053d && this.f9054k > 1.0f;
    }

    public ThunderAbility() {
        super(AbilityType.THUNDER);
        this.f9052b = 0;
        this.f9054k = 0.0f;
        this.f9056q = new ChainLightning[64];
    }

    @Override // com.prineside.tdi2.Ability
    public void start(int i, int i2) {
        this.f8398a = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_THUNDER_COINS);
        this.f9055p = (float) (this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_THUNDER_DAMAGE) * this.f8844S.enemy.getTowersMaxDps());
        int intValue = this.f8844S.gameValue.getIntValue(GameValueType.ABILITY_THUNDER_CHARGES_COUNT);
        this.f9053d = intValue;
        if (intValue < 64) {
            return;
        }
        throw new IllegalStateException("Max charges can't be > 64");
    }

    @Override // com.prineside.tdi2.Ability
    public void update(float f) {
        if (this.f9052b < this.f9053d) {
            EntityUtils.removeNullRefs(this.f8844S.map.spawnedEnemies);
            GameSystemProvider gameSystemProvider = this.f8844S;
            DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = gameSystemProvider.map.spawnedEnemies;
            int i = delayedRemovalArray.size;
            if (i != 0) {
                Enemy enemy = delayedRemovalArray.items[gameSystemProvider.gameState.randomInt(i)].enemy;
                boolean[] zArr = this.f8844S.enemy.enemyDamageVulnerability[enemy.type.ordinal()];
                DamageType damageType = DamageType.ELECTRICITY;
                if (zArr[damageType.ordinal()]) {
                    if (Game.f8589i.shapeManager != null && !this.f8844S.gameState.canSkipMediaUpdate()) {
                        ChainLightning chainLightning = (ChainLightning) Game.f8589i.shapeManager.getFactory(ShapeType.CHAIN_LIGHTNING).obtain();
                        chainLightning.setTexture(Game.f8589i.abilityManager.f9538F.THUNDER.lightningTexture, true, true);
                        chainLightning.setColor(MaterialColor.LIGHT_BLUE.P200);
                        this.f9056q[this.f9052b] = chainLightning;
                        chainLightning.setup(enemy.getPosition().f5527x, enemy.getPosition().f5528y + 4096.0f, enemy.getPosition().f5527x, enemy.getPosition().f5528y, 1.0f, 0.15f, true, 30.72f, 128.0f, 25.6f);
                    }
                    if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
                        ParticleEffectPool.PooledEffect obtain = Game.f8589i.abilityManager.f9538F.THUNDER.f9057c.obtain();
                        obtain.setPosition(enemy.getPosition().f5527x, enemy.getPosition().f5528y);
                        this.f8844S._particle.addParticle(obtain, false);
                    }
                    this.f8844S.enemy.giveDamage(enemy, null, this.f9055p, damageType, this, true, null);
                    this.f9052b++;
                    return;
                }
                return;
            }
            return;
        }
        this.f9054k += f;
    }

    @Override // com.prineside.tdi2.Ability, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f9052b = input.readVarInt(true);
        this.f9053d = input.readVarInt(true);
        this.f9054k = input.readFloat();
        this.f9055p = input.readFloat();
    }

    @Override // com.prineside.tdi2.Ability, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeVarInt(this.f9052b, true);
        output.writeVarInt(this.f9053d, true);
        output.writeFloat(this.f9054k);
        output.writeFloat(this.f9055p);
    }
}
