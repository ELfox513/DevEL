package com.prineside.tdi2.abilities;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.CameraController;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class NukeAbility extends Ability {

    /* renamed from: k */
    public static final int[] f9021k = {100, 125, 170, 250, 350, 475, 600, 725, 850, CoreTile.FIXED_LEVEL_XP_REQUIREMENT, 1200};

    /* renamed from: p */
    public static final int[][] f9022p = {new int[]{10, 20, 45, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 15, 25, 60, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 15, 35, 70, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 15, 35, 60, 0, 150}, new int[]{0, 0, 0, 0, 0, 0, 0, 15, 35, 80, 100}};
    @NAGS

    /* renamed from: b */
    public float f9023b;
    @NAGS

    /* renamed from: d */
    public float f9024d;

    /* loaded from: classes2.dex */
    public static class NukeAbilityFactory extends Ability.Factory<NukeAbility> {

        /* renamed from: c */
        public ParticleEffectPool f9025c;

        public NukeAbilityFactory(AbilityType abilityType) {
            super(abilityType);
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getColor() {
            return MaterialColor.PURPLE.P500;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getDarkerColor() {
            return MaterialColor.PURPLE.P700;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public TextureRegionDrawable getIconDrawable() {
            return Game.f8589i.assetManager.getDrawable("icon-nuke");
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInGreenPapers(int i) {
            return NukeAbility.f9021k[StrictMath.min(i, NukeAbility.f9021k.length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInResources(ResourceType resourceType, int i) {
            return NukeAbility.f9022p[resourceType.ordinal()][StrictMath.min(i, NukeAbility.f9022p[0].length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public CharSequence getTitle() {
            return Game.f8589i.localeManager.i18n.get("ability_name_NUKE");
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public boolean requiresMapPointing() {
            return false;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public NukeAbility create() {
            return new NukeAbility();
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            int intValue = gameValueProvider.getIntValue(GameValueType.ABILITY_NUKE_DAMAGE);
            int round = (int) StrictMath.round(gameValueProvider.getPercentValueAsMultiplier(GameValueType.ABILITY_NUKE_COINS) * 100.0d);
            String format = Game.f8589i.localeManager.i18n.format("ability_description_NUKE", Integer.valueOf(intValue));
            String format2 = Game.f8589i.localeManager.i18n.format("ability_coins_for_killed_enemies", Integer.valueOf(round));
            return format + "\n" + format2;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public void setupAssets() {
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.external("particles/nuke-explosion.prt"), Game.f8589i.assetManager.getTextureRegion("particle-shockwave").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f9025c = new ParticleEffectPool(particleEffect, 1, 8);
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public void clearPool() {
            super.clearPool();
            ParticleEffectPool particleEffectPool = this.f9025c;
            if (particleEffectPool != null) {
                particleEffectPool.clear();
            }
        }
    }

    @Override // com.prineside.tdi2.Ability
    public void draw(SpriteBatch spriteBatch, float f) {
    }

    @Override // com.prineside.tdi2.Ability
    public boolean isDone() {
        return true;
    }

    @Override // com.prineside.tdi2.Ability
    public void update(float f) {
    }

    public NukeAbility() {
        super(AbilityType.NUKE);
    }

    @Override // com.prineside.tdi2.Ability
    public void start(int i, int i2) {
        DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray;
        this.f8398a = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_NUKE_COINS);
        this.f9023b = i;
        this.f9024d = i2;
        float towersMaxDps = ((float) this.f8844S.enemy.getTowersMaxDps()) * this.f8844S.gameValue.getIntValue(GameValueType.ABILITY_NUKE_DAMAGE) * 0.01f;
        this.f8844S.map.spawnedEnemies.begin();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            GameSystemProvider gameSystemProvider = this.f8844S;
            delayedRemovalArray = gameSystemProvider.map.spawnedEnemies;
            if (i3 >= delayedRemovalArray.size) {
                break;
            }
            Enemy enemy = delayedRemovalArray.items[i3].enemy;
            if (enemy != null && gameSystemProvider.enemy.giveDamage(enemy, null, towersMaxDps, DamageType.EXPLOSION, this, false, null)) {
                i4++;
            }
            i3++;
        }
        delayedRemovalArray.end();
        if (this.f8844S.achievement.isActive()) {
            Game.f8589i.achievementManager.setProgress(AchievementType.HUNDRED_KILLS_NUKE, i4);
        }
    }

    @Override // com.prineside.tdi2.Ability
    public void startEffects() {
        m22215a(1.0f);
        if (this.f8844S._particle != null) {
            ParticleEffectPool.PooledEffect obtain = Game.f8589i.abilityManager.f9538F.NUKE.f9025c.obtain();
            obtain.setPosition(this.f9023b, this.f9024d);
            this.f8844S._particle.addParticle(obtain, false);
        }
        if (this.f8844S._input != null && Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.CAMERA_SHAKE_ENABLED) == 1.0d) {
            this.f8844S._input.cameraController.animate(new CameraController.ShakeAnimation(35.0f, 2.5f));
            this.f8844S._graphics.screenBorderGradient.fullscreenFlash(Color.WHITE.cpy().mul(1.0f, 1.0f, 1.0f, 0.78f), 2.0f, Interpolation.pow2In);
            this.f8844S.gameState.animateSpeed(0.35f, 4.0f);
        }
    }
}
