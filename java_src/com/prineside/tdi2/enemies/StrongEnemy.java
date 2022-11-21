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
public class StrongEnemy extends Enemy {

    /* loaded from: classes2.dex */
    public static class StrongEnemyFactory extends Enemy.Factory<StrongEnemy> {

        /* renamed from: r */
        public TextureRegion f9192r;

        /* renamed from: s */
        public TextureRegion f9193s;

        /* renamed from: t */
        public TextureRegion f9194t;

        public StrongEnemyFactory() {
            super(EnemyType.STRONG);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.DEEP_ORANGE.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getEmojiTexture() {
            return this.f9194t;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9193s;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9192r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public StrongEnemy create() {
            return new StrongEnemy();
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9192r = Game.f8589i.assetManager.getTextureRegion("enemy-type-strong");
            this.f9193s = Game.f8589i.assetManager.getTextureRegion("enemy-type-strong-hl");
            this.f9194t = Game.f8589i.assetManager.getTextureRegion("enemy-type-strong-emj");
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return false;
    }

    public StrongEnemy() {
        super(EnemyType.STRONG);
    }
}
