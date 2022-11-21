package com.prineside.tdi2.abilities;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.ExplosionType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.explosions.FireballExplosion;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class FireballAbility extends Ability {

    /* renamed from: b */
    public static final int[] f8987b = {100, 125, 150, 175, 250, 300, HttpStatus.SC_BAD_REQUEST, 550, 750, 875, CoreTile.FIXED_LEVEL_XP_REQUIREMENT};

    /* renamed from: d */
    public static final int[][] f8988d = {new int[]{4, 8, 20, 25, 0, 0, 0, 0, 0, 0, 300}, new int[]{0, 0, 4, 8, 20, 35, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 8, 20, 45, 0, 0, 0, HttpStatus.SC_OK}, new int[]{0, 0, 0, 0, 0, 0, 10, 20, 55, 80, 0}, new int[]{0, 0, 0, 0, 0, 0, 0, 10, 25, 60, 0}};

    /* loaded from: classes2.dex */
    public static class FireballAbilityFactory extends Ability.Factory<FireballAbility> {
        public FireballAbilityFactory(AbilityType abilityType) {
            super(abilityType);
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getColor() {
            return MaterialColor.DEEP_ORANGE.P500;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getDarkerColor() {
            return MaterialColor.DEEP_ORANGE.P700;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public TextureRegionDrawable getIconDrawable() {
            return Game.f8589i.assetManager.getDrawable("icon-fireball");
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInGreenPapers(int i) {
            return FireballAbility.f8987b[StrictMath.min(i, FireballAbility.f8987b.length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInResources(ResourceType resourceType, int i) {
            return FireballAbility.f8988d[resourceType.ordinal()][StrictMath.min(i, FireballAbility.f8988d[0].length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public CharSequence getTitle() {
            return Game.f8589i.localeManager.i18n.get("ability_name_FIREBALL");
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public boolean requiresMapPointing() {
            return true;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public FireballAbility create() {
            return new FireballAbility();
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            int intValue = gameValueProvider.getIntValue(GameValueType.ABILITY_FIREBALL_DAMAGE);
            int intValue2 = gameValueProvider.getIntValue(GameValueType.ABILITY_FIREBALL_FIRE_DAMAGE);
            int round = (int) StrictMath.round(gameValueProvider.getPercentValueAsMultiplier(GameValueType.ABILITY_FIREBALL_COINS) * 100.0d);
            String format = Game.f8589i.localeManager.i18n.format("ability_description_FIREBALL", Integer.valueOf(intValue), Integer.valueOf(intValue2));
            String format2 = Game.f8589i.localeManager.i18n.format("ability_coins_for_killed_enemies", Integer.valueOf(round));
            return format + "\n" + format2;
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
    public void startEffects() {
        m22215a(1.0f);
    }

    @Override // com.prineside.tdi2.Ability
    public void update(float f) {
    }

    public FireballAbility() {
        super(AbilityType.FIREBALL);
    }

    @Override // com.prineside.tdi2.Ability
    public void start(int i, int i2) {
        this.f8398a = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_FIREBALL_COINS);
        float towersMaxDps = (float) this.f8844S.enemy.getTowersMaxDps();
        FireballExplosion fireballExplosion = (FireballExplosion) Game.f8589i.explosionManager.getFactory(ExplosionType.FIREBALL).obtain();
        fireballExplosion.setup(i, i2, ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_FIREBALL_DAMAGE)) * towersMaxDps, ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_FIREBALL_FIRE_DAMAGE)) * 0.1f * towersMaxDps, 4.0f, this);
        this.f8844S.explosion.register(fireballExplosion);
        fireballExplosion.explode();
    }
}
