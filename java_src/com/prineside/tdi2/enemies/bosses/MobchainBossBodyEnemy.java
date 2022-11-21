package com.prineside.tdi2.enemies.bosses;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class MobchainBossBodyEnemy extends Enemy {

    /* loaded from: classes2.dex */
    public static class MobchainBossBodyEnemyFactory extends Enemy.Factory<MobchainBossBodyEnemy> {

        /* renamed from: r */
        public TextureRegion f9243r;

        public MobchainBossBodyEnemyFactory() {
            super(EnemyType.SNAKE_BOSS_BODY);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.DEEP_PURPLE.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9243r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9243r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9243r = Game.f8589i.assetManager.getTextureRegion("enemy-type-boss-mobchain-body");
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public MobchainBossBodyEnemy create() {
            return new MobchainBossBodyEnemy();
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean dynamicPathfindingAllowed() {
        return false;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getAbilityVulnerability(AbilityType abilityType) {
        return abilityType == AbilityType.BALL_LIGHTNING ? 0.1f : 1.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBaseDamage() {
        return 2.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return false;
    }

    public MobchainBossBodyEnemy() {
        super(EnemyType.MOBCHAIN_BOSS_BODY);
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBuffedDamageMultiplier(TowerType towerType, DamageType damageType) {
        float health = getHealth() / this.maxHealth;
        float f = 0.1f;
        if (health >= 0.66f || health <= 0.33f ? health > 0.33f || (towerType != TowerType.VENOM && towerType != TowerType.TESLA && towerType != TowerType.LASER && towerType != TowerType.FREEZING && towerType != TowerType.FLAMETHROWER && towerType != TowerType.BLAST) : towerType != TowerType.SPLASH && towerType != TowerType.SNIPER && towerType != TowerType.MULTISHOT && towerType != TowerType.MINIGUN && towerType != TowerType.MISSILE && towerType != TowerType.CANNON && towerType != TowerType.BASIC) {
            f = 1.0f;
        }
        return f * super.getBuffedDamageMultiplier(towerType, damageType);
    }
}
