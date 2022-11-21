package com.prineside.tdi2.enemies;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BossEnemy extends Enemy {

    /* loaded from: classes2.dex */
    public static class BossEnemyFactory extends Enemy.Factory<BossEnemy> {

        /* renamed from: r */
        public TextureRegion f9156r;

        public BossEnemyFactory() {
            super(EnemyType.BOSS);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.YELLOW.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9156r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9156r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9156r = Game.f8589i.assetManager.getTextureRegion("enemy-type-boss");
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public BossEnemy create() {
            return new BossEnemy();
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBaseDamage() {
        return 50.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return false;
    }

    public BossEnemy() {
        super(EnemyType.BOSS);
    }
}
