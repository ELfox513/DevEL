package com.prineside.tdi2.enemies;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class JetEnemy extends Enemy {
    @NAGS

    /* renamed from: v */
    public float f9178v;
    @NAGS

    /* renamed from: w */
    public Vector2 f9179w;

    /* loaded from: classes2.dex */
    public static class JetEnemyFactory extends Enemy.Factory<JetEnemy> {

        /* renamed from: r */
        public TextureRegion f9180r;

        /* renamed from: s */
        public TextureRegion f9181s;

        /* renamed from: t */
        public TextureRegion f9182t;

        /* renamed from: u */
        public TextureRegion f9183u;

        public JetEnemyFactory() {
            super(EnemyType.JET);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.LIGHT_BLUE.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getEmojiTexture() {
            return this.f9183u;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9182t;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9180r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public JetEnemy create() {
            return new JetEnemy();
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9180r = Game.f8589i.assetManager.getTextureRegion("enemy-type-jet");
            this.f9181s = Game.f8589i.assetManager.getTextureRegion("jet-thrust");
            this.f9182t = Game.f8589i.assetManager.getTextureRegion("enemy-type-jet-hl");
            this.f9183u = Game.f8589i.assetManager.getTextureRegion("enemy-type-jet-emj");
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return true;
    }

    public JetEnemy() {
        super(EnemyType.JET);
        this.f9178v = 0.0f;
        this.f9179w = new Vector2();
    }

    @Override // com.prineside.tdi2.Enemy
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        this.f9178v += f;
        super.drawBatch(spriteBatch, f);
        float sin = (PMath.sin((this.f9178v + 0.25f) / 0.15f) * 0.1f) + 0.9f;
        Vector2 vector2 = this.f9179w;
        Vector2 vector22 = this.drawPosition;
        vector2.f5527x = vector22.f5527x;
        vector2.f5528y = vector22.f5528y;
        PMath.shiftPointByAngle(vector2, this.drawAngle - 180.0f, 16.0f);
        PMath.shiftPointByAngle(this.f9179w, this.drawAngle + 90.0f, 16.0f * sin);
        TextureRegion textureRegion = Game.f8589i.enemyManager.f9783F.JET.f9181s;
        Vector2 vector23 = this.f9179w;
        spriteBatch.draw(textureRegion, vector23.f5527x, vector23.f5528y, 0.0f, 0.0f, ((PMath.sin(this.f9178v / 0.15f) * 0.2f) + 0.8f) * 64.0f, sin * 32.0f, 1.0f, 1.0f, this.drawAngle - 90.0f);
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
        this.f9178v = 0.0f;
        this.f9179w = new Vector2();
    }
}
