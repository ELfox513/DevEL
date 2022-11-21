package com.prineside.tdi2.enemies.bosses;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class SnakeBossBodyEnemy extends Enemy {

    /* loaded from: classes2.dex */
    public static class SnakeBossBodyEnemyFactory extends Enemy.Factory<SnakeBossBodyEnemy> {

        /* renamed from: r */
        public TextureRegion f9246r;

        public SnakeBossBodyEnemyFactory() {
            super(EnemyType.SNAKE_BOSS_BODY);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.LIGHT_GREEN.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9246r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9246r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9246r = Game.f8589i.assetManager.getTextureRegion("enemy-type-boss-snake-body");
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public SnakeBossBodyEnemy create() {
            return new SnakeBossBodyEnemy();
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean dynamicPathfindingAllowed() {
        return false;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBaseDamage() {
        return 2.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return false;
    }

    public SnakeBossBodyEnemy() {
        super(EnemyType.SNAKE_BOSS_BODY);
    }

    @Override // com.prineside.tdi2.Enemy
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        float f2 = this.angle;
        float calculateSwingRotation = SnakeBossHeadEnemy.calculateSwingRotation(this.passedTiles) + f2;
        this.angle = calculateSwingRotation;
        this.drawAngle = calculateSwingRotation;
        this.drawPosition.set(getPosition());
        super.drawBatch(spriteBatch, f);
        this.angle = f2;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getAbilityVulnerability(AbilityType abilityType) {
        if (abilityType == AbilityType.BALL_LIGHTNING) {
            return 0.1f;
        }
        if (abilityType == AbilityType.LOIC) {
            return 4.0f;
        }
        return 1.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public void onPositionSetToPath() {
        SnakeBossHeadEnemy.transformPositionToSwing(this.passedTiles, this.angle, getPosition());
        setPosition(getPosition());
    }
}
