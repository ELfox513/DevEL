package com.prineside.tdi2.abilities;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ProjectileType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.projectiles.BulletWallProjectile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BulletWallAbility extends Ability {

    /* renamed from: b */
    public static final int[] f8983b = {100, 125, 150, 175, 250, 300, HttpStatus.SC_BAD_REQUEST, 550, 700, 800, 850};

    /* renamed from: d */
    public static final int[][] f8984d = {new int[]{5, 10, 25, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 5, 10, 30, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 10, 20, 40, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 10, 25, 50, 0, 100}, new int[]{0, 0, 0, 0, 0, 0, 0, 10, 25, 80, 150}};

    /* renamed from: k */
    public static final Vector2 f8985k = new Vector2();

    /* renamed from: p */
    public static final Vector2 f8986p = new Vector2();

    /* loaded from: classes2.dex */
    public static class BulletWallAbilityFactory extends Ability.Factory<BulletWallAbility> {
        public BulletWallAbilityFactory(AbilityType abilityType) {
            super(abilityType);
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getColor() {
            return MaterialColor.TEAL.P500;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public Color getDarkerColor() {
            return MaterialColor.TEAL.P800;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public TextureRegionDrawable getIconDrawable() {
            return Game.f8589i.assetManager.getDrawable("icon-bullet-wall");
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInGreenPapers(int i) {
            return BulletWallAbility.f8983b[StrictMath.min(i, BulletWallAbility.f8983b.length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public int getPriceInResources(ResourceType resourceType, int i) {
            return BulletWallAbility.f8984d[resourceType.ordinal()][StrictMath.min(i, BulletWallAbility.f8984d[0].length - 1)];
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public boolean requiresMapPointing() {
            return false;
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public void setupAssets() {
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public BulletWallAbility create() {
            return new BulletWallAbility();
        }

        @Override // com.prineside.tdi2.Ability.Factory
        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            int round = (int) StrictMath.round(gameValueProvider.getPercentValueAsMultiplier(GameValueType.ABILITY_BULLET_WALL_COINS) * 100.0d);
            String format = Game.f8589i.localeManager.i18n.format("ability_description_BULLET_WALL", Float.valueOf(MathUtils.round(gameValueProvider.getFloatValue(GameValueType.ABILITY_BULLET_WALL_DENSITY) * 10.0f) / 10.0f), Float.valueOf(MathUtils.round(((float) gameValueProvider.getPercentValueAsMultiplier(GameValueType.ABILITY_BULLET_WALL_DAMAGE)) * 1000.0f) / 10.0f));
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
    public void update(float f) {
    }

    public BulletWallAbility() {
        super(AbilityType.BULLET_WALL);
    }

    @Override // com.prineside.tdi2.Ability
    public void start(int i, int i2) {
        this.f8398a = (float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_BULLET_WALL_COINS);
        float round = MathUtils.round(this.f8844S.gameValue.getFloatValue(GameValueType.ABILITY_BULLET_WALL_DENSITY) * 10.0f) / 10.0f;
        float towersMaxDps = ((float) this.f8844S.enemy.getTowersMaxDps()) * ((float) this.f8844S.gameValue.getPercentValueAsMultiplier(GameValueType.ABILITY_BULLET_WALL_DAMAGE));
        int i3 = 0;
        for (float f = 0.0f; f < this.f8844S.map.getMap().heightTiles; f += 1.0f / round) {
            BulletWallProjectile bulletWallProjectile = (BulletWallProjectile) Game.f8589i.projectileManager.getFactory(ProjectileType.BULLET_WALL).obtain();
            this.f8844S.projectile.register(bulletWallProjectile);
            Vector2 vector2 = f8985k;
            float f2 = f * 128.0f;
            vector2.set(0.0f, f2);
            Vector2 vector22 = f8986p;
            vector22.set((this.f8844S.map.getMap().widthTiles + 1.0f) * 128.0f, f2);
            bulletWallProjectile.setup(towersMaxDps, vector2, vector22, (PMath.sin(i3 * 10) * 0.5f) + 5.0f, this);
            i3++;
        }
    }
}
