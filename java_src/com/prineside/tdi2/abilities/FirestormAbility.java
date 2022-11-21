package com.prineside.tdi2.abilities;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.MathUtils;
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
import com.prineside.tdi2.buffs.BurnBuff;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.p036ui.actors.ParticlesCanvas;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class FirestormAbility extends Ability {

    /* renamed from: k */
    public static final int[] f8989k = {100, 125, 170, 250, 350, 475, 600, 725, 850, CoreTile.FIXED_LEVEL_XP_REQUIREMENT, 1200};

    /* renamed from: p */
    public static final int[][] f8990p = {new int[]{7, 15, 35, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 7, 15, 30, 0, 0, 0, 0, 0, 250}, new int[]{0, 0, 0, 0, 10, 25, 50, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 15, 35, 60, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 0, 15, 35, 80, 100}};

    /* renamed from: b */
    public float f8991b;
    @NAGS

    /* renamed from: d */
    public ParticlesCanvas.ParticleConfig f8992d;

    /* loaded from: classes2.dex */
    public static class FirestormAbilityFactory extends Ability.Factory<FirestormAbility> {

        /* renamed from: c */
        public ParticleEffectPool f8993c;

        /* renamed from: d */
        public ParticleEffectPool f8994d;

        /* renamed from: e */
        public ParticleEffectPool f8995e;

        public FirestormAbilityFactory(AbilityType abilityType) {
            super(abilityType);
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getColor() {
            return MaterialColor.RED.P500;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getDarkerColor() {
            return MaterialColor.RED.P800;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public TextureRegionDrawable getIconDrawable() {
            return Game.f8589i.assetManager.getDrawable("icon-firestorm");
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInGreenPapers(int i) {
            return FirestormAbility.f8989k[StrictMath.min(i, FirestormAbility.f8989k.length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInResources(ResourceType resourceType, int i) {
            return FirestormAbility.f8990p[resourceType.ordinal()][StrictMath.min(i, FirestormAbility.f8990p[0].length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public boolean requiresMapPointing() {
            return false;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public FirestormAbility create() {
            return new FirestormAbility();
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            float floatValue = gameValueProvider.getFloatValue(GameValueType.ABILITY_FIRESTORM_DURATION);
            int round = (int) StrictMath.round(gameValueProvider.getPercentValueAsMultiplier(GameValueType.ABILITY_FIRESTORM_COINS) * 100.0d);
            String format = Game.f8589i.localeManager.i18n.format("ability_description_FIRESTORM", Float.valueOf(MathUtils.round(((float) gameValueProvider.getPercentValueAsMultiplier(GameValueType.ABILITY_FIRESTORM_DAMAGE)) * 1000.0f) * 0.1f), Float.valueOf(floatValue));
            String format2 = Game.f8589i.localeManager.i18n.format("ability_coins_for_killed_enemies", Integer.valueOf(round));
            return format + "\n" + format2;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public void setupAssets() {
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.internal("particles/screen-sparks-bottom-left.prt"), Game.f8589i.assetManager.getTextureRegion("particle-default").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f8993c = new ParticleEffectPool(particleEffect, 1, 16);
            ParticleEffect particleEffect2 = new ParticleEffect();
            particleEffect2.load(Gdx.files.internal("particles/screen-sparks-bottom-right.prt"), Game.f8589i.assetManager.getTextureRegion("particle-default").getAtlas());
            particleEffect2.setEmittersCleanUpBlendFunction(false);
            this.f8994d = new ParticleEffectPool(particleEffect2, 1, 16);
            ParticleEffect particleEffect3 = new ParticleEffect();
            particleEffect3.load(Gdx.files.internal("particles/fire-2.prt"), Game.f8589i.assetManager.getTextureRegion("particle-default").getAtlas());
            particleEffect3.setEmittersCleanUpBlendFunction(false);
            this.f8995e = new ParticleEffectPool(particleEffect3, 1, 16);
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public void clearPool() {
            super.clearPool();
            ParticleEffectPool particleEffectPool = this.f8993c;
            if (particleEffectPool != null) {
                particleEffectPool.clear();
                this.f8994d.clear();
            }
        }
    }

    @Override // com.prineside.tdi2.Ability
    public void draw(SpriteBatch spriteBatch, float f) {
    }

    @Override // com.prineside.tdi2.Ability
    public boolean isDone() {
        return this.f8991b >= 1.0f;
    }

    public FirestormAbility() {
        super(AbilityType.FIRESTORM);
    }

    @Override // com.prineside.tdi2.Ability
    public void onDone() {
        ParticlesCanvas.ParticleConfig particleConfig = this.f8992d;
        if (particleConfig != null) {
            particleConfig.effect.allowCompletion();
            this.f8992d = null;
        }
    }

    @Override // com.prineside.tdi2.Ability
    public void start(int i, int i2) {
        this.f8398a = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_FIRESTORM_COINS);
        float floatValue = this.f8844S.gameValue.getFloatValue(GameValueType.ABILITY_FIRESTORM_DURATION);
        float percentValueAsMultiplier = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_FIRESTORM_DAMAGE);
        float towersMaxDps = (float) this.f8844S.enemy.getTowersMaxDps();
        this.f8844S.map.spawnedEnemies.begin();
        int i3 = 0;
        while (true) {
            DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = this.f8844S.map.spawnedEnemies;
            if (i3 < delayedRemovalArray.size) {
                Enemy enemy = delayedRemovalArray.items[i3].enemy;
                if (enemy != null) {
                    BurnBuff obtain = Game.f8589i.buffManager.f9699F.BURN.obtain();
                    obtain.setup(null, floatValue, floatValue * 10.0f, percentValueAsMultiplier * towersMaxDps, this);
                    this.f8844S.buff.P_BURN.addBuff(enemy, obtain);
                }
                i3++;
            } else {
                delayedRemovalArray.end();
                this.f8991b = 0.0f;
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Ability
    public void startEffects() {
        m22215a(1.5f);
        if (Game.f8589i.settingsManager.isParticlesDrawing()) {
            GameSystemProvider gameSystemProvider = this.f8844S;
            if (gameSystemProvider._graphics != null && !gameSystemProvider.gameState.canSkipMediaUpdate()) {
                this.f8844S._graphics.mainUi.particlesCanvas.addParticle(Game.f8589i.abilityManager.f9538F.FIRESTORM.f8993c.obtain(), 0.0f, 0.0f);
                this.f8844S._graphics.mainUi.particlesCanvas.addParticle(Game.f8589i.abilityManager.f9538F.FIRESTORM.f8994d.obtain(), Game.f8589i.uiManager.viewport.getWorldWidth(), 0.0f);
                this.f8992d = this.f8844S._graphics.mainUi.particlesCanvas.addParticle(Game.f8589i.abilityManager.f9538F.FIRESTORM.f8995e.obtain(), 0.0f, 0.0f);
            }
        }
    }

    @Override // com.prineside.tdi2.Ability
    public void update(float f) {
        this.f8991b += f * 0.5f;
        ParticlesCanvas.ParticleConfig particleConfig = this.f8992d;
        if (particleConfig != null) {
            particleConfig.f12661x = Game.f8589i.uiManager.viewport.getWorldWidth() * this.f8991b;
        }
    }

    @Override // com.prineside.tdi2.Ability, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f8991b = input.readFloat();
    }

    @Override // com.prineside.tdi2.Ability, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f8991b);
    }
}
