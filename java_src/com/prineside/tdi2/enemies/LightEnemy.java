package com.prineside.tdi2.enemies;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class LightEnemy extends Enemy {

    /* renamed from: v */
    public float f9184v;

    /* renamed from: w */
    public DamageType f9185w;

    /* loaded from: classes2.dex */
    public static class LightEnemyFactory extends Enemy.Factory<LightEnemy> {

        /* renamed from: r */
        public TextureRegion f9186r;

        /* renamed from: s */
        public TextureRegion f9187s;

        /* renamed from: t */
        public TextureRegion f9188t;

        public LightEnemyFactory() {
            super(EnemyType.LIGHT);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.CYAN.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getEmojiTexture() {
            return this.f9188t;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9187s;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9186r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public LightEnemy create() {
            return new LightEnemy();
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9186r = Game.f8589i.assetManager.getTextureRegion("enemy-type-light");
            this.f9187s = Game.f8589i.assetManager.getTextureRegion("enemy-type-light-hl");
            this.f9188t = Game.f8589i.assetManager.getTextureRegion("enemy-type-light-emj");
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return false;
    }

    public LightEnemy() {
        super(EnemyType.LIGHT);
        this.f9184v = 10.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        super.drawBatch(spriteBatch, f);
        DamageType damageType = this.f9185w;
        if (damageType != null) {
            TextureRegion damageTypeIcon = Game.f8589i.enemyManager.getDamageTypeIcon(damageType);
            spriteBatch.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            Vector2 vector2 = this.drawPosition;
            spriteBatch.draw(damageTypeIcon, vector2.f5527x - 10.0f, vector2.f5528y - 14.0f, 24.0f, 24.0f);
            Color color = Config.WHITE_COLOR_CACHED_FLOAT_BITS;
            spriteBatch.setColor(color);
            Vector2 vector22 = this.drawPosition;
            spriteBatch.draw(damageTypeIcon, vector22.f5527x - 12.0f, vector22.f5528y - 12.0f, 24.0f, 24.0f);
            float f2 = this.f9184v;
            if (f2 < 0.5f) {
                float f3 = f2 / 0.5f;
                float f4 = (42.0f * f3) + 24.0f;
                spriteBatch.setColor(1.0f, 1.0f, 1.0f, 1.0f - f3);
                Vector2 vector23 = this.drawPosition;
                float f5 = 0.5f * f4;
                spriteBatch.draw(damageTypeIcon, vector23.f5527x - f5, vector23.f5528y - f5, f4, f4);
            }
            spriteBatch.setColor(color);
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBuffedDamageMultiplier(TowerType towerType, DamageType damageType) {
        float buffedDamageMultiplier = super.getBuffedDamageMultiplier(towerType, damageType);
        DamageType damageType2 = this.f9185w;
        if (damageType2 != null && damageType2 == damageType) {
            return buffedDamageMultiplier * 0.25f;
        }
        return buffedDamageMultiplier;
    }

    @Override // com.prineside.tdi2.Enemy
    public float giveDamage(Tower tower, float f, DamageType damageType) {
        float giveDamage = super.giveDamage(tower, f, damageType);
        if (giveDamage != 0.0f && this.f9184v > 10.0f) {
            this.f9185w = damageType;
            this.f9184v = 0.0f;
        }
        return giveDamage;
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f9184v = input.readFloat();
        this.f9185w = (DamageType) kryo.readObjectOrNull(input, DamageType.class);
    }

    @Override // com.prineside.tdi2.Enemy, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f9184v = 10.0f;
        this.f9185w = null;
    }

    @Override // com.prineside.tdi2.Enemy
    public void update(float f) {
        super.update(f);
        float f2 = this.f9184v + f;
        this.f9184v = f2;
        if (this.f9185w != null && f2 > 6.0f) {
            this.f9185w = null;
        }
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f9184v);
        kryo.writeObjectOrNull(output, this.f9185w, DamageType.class);
    }
}
