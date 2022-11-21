package com.prineside.tdi2.enemies;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class RegularEnemy extends Enemy {

    /* loaded from: classes2.dex */
    public static class RegularEnemyFactory extends Enemy.Factory<RegularEnemy> {

        /* renamed from: r */
        public TextureRegion f9189r;

        /* renamed from: s */
        public TextureRegion f9190s;

        /* renamed from: t */
        public TextureRegion f9191t;

        public RegularEnemyFactory() {
            super(EnemyType.REGULAR);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.GREEN.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getEmojiTexture() {
            return this.f9190s;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9191t;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9189r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public RegularEnemy create() {
            return new RegularEnemy();
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9189r = Game.f8589i.assetManager.getTextureRegion("enemy-type-regular");
            this.f9191t = Game.f8589i.assetManager.getTextureRegion("enemy-type-regular-hl");
            this.f9190s = Game.f8589i.assetManager.getTextureRegion("enemy-type-regular-emj");
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public float getTowerDamageMultiplier(TowerType towerType) {
        return super.getTowerDamageMultiplier(towerType);
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return false;
    }

    public RegularEnemy() {
        super(EnemyType.REGULAR);
    }
}
