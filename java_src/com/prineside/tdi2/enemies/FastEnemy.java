package com.prineside.tdi2.enemies;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class FastEnemy extends Enemy {

    /* loaded from: classes2.dex */
    public static class FastEnemyFactory extends Enemy.Factory<FastEnemy> {

        /* renamed from: r */
        public TextureRegion f9157r;

        /* renamed from: s */
        public TextureRegion f9158s;

        /* renamed from: t */
        public TextureRegion f9159t;

        public FastEnemyFactory() {
            super(EnemyType.FAST);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.AMBER.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getEmojiTexture() {
            return this.f9159t;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9158s;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9157r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public FastEnemy create() {
            return new FastEnemy();
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9157r = Game.f8589i.assetManager.getTextureRegion("enemy-type-fast");
            this.f9158s = Game.f8589i.assetManager.getTextureRegion("enemy-type-fast-hl");
            this.f9159t = Game.f8589i.assetManager.getTextureRegion("enemy-type-fast-emj");
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return false;
    }

    public FastEnemy() {
        super(EnemyType.FAST);
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBuffedSpeed() {
        DelayedRemovalArray[] delayedRemovalArrayArr = this.buffsByType;
        float f = 1.0f;
        if (delayedRemovalArrayArr != null) {
            f = 1.0f - (delayedRemovalArrayArr[BuffType.POISON.ordinal()].size * 0.05f);
        }
        if (f < 0.25f) {
            f = 0.25f;
        }
        return super.getBuffedSpeed() * f;
    }
}
