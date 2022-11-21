package com.prineside.tdi2.enemies;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class HeliEnemy extends Enemy {
    @NAGS

    /* renamed from: v */
    public float f9171v;

    /* loaded from: classes2.dex */
    public static class HeliEnemyFactory extends Enemy.Factory<HeliEnemy> {

        /* renamed from: r */
        public TextureRegion f9172r;

        /* renamed from: s */
        public TextureRegion f9173s;

        /* renamed from: t */
        public TextureRegion f9174t;

        public HeliEnemyFactory() {
            super(EnemyType.HELI);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.LIGHT_BLUE.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getEmojiTexture() {
            return this.f9174t;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9173s;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9172r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public HeliEnemy create() {
            return new HeliEnemy();
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9172r = Game.f8589i.assetManager.getTextureRegion("enemy-type-heli");
            this.f9173s = Game.f8589i.assetManager.getTextureRegion("enemy-type-heli-hl");
            this.f9174t = Game.f8589i.assetManager.getTextureRegion("enemy-type-heli-emj");
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return true;
    }

    public HeliEnemy() {
        super(EnemyType.HELI);
        this.f9171v = 0.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        float f2 = this.f9171v + f;
        this.f9171v = f2;
        float f3 = this.drawAngle;
        this.drawAngle = ((f2 % 0.5f) / 0.5f) * 360.0f;
        super.drawBatch(spriteBatch, f);
        this.drawAngle = f3;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBuffedSpeed() {
        float buffedSpeed = super.getBuffedSpeed();
        boolean[] zArr = this.buffsAppliedByType;
        if (zArr != null && zArr[BuffType.BURN.ordinal()]) {
            return buffedSpeed * 0.65f;
        }
        return buffedSpeed;
    }

    @Override // com.prineside.tdi2.Enemy, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f9171v = 0.0f;
    }
}
