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
public class SnakeBossTailEnemy extends Enemy {

    /* loaded from: classes2.dex */
    public static class SnakeBossTailEnemyFactory extends Enemy.Factory<SnakeBossTailEnemy> {

        /* renamed from: r */
        public TextureRegion f9249r;

        public SnakeBossTailEnemyFactory() {
            super(EnemyType.SNAKE_BOSS_TAIL);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.LIGHT_GREEN.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9249r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9249r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9249r = Game.f8589i.assetManager.getTextureRegion("enemy-type-boss-snake-tail");
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public SnakeBossTailEnemy create() {
            return new SnakeBossTailEnemy();
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
        return 10.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return false;
    }

    public SnakeBossTailEnemy() {
        super(EnemyType.SNAKE_BOSS_TAIL);
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
    public void onPositionSetToPath() {
        SnakeBossHeadEnemy.transformPositionToSwing(this.passedTiles, this.angle, getPosition());
        setPosition(getPosition());
    }
}
