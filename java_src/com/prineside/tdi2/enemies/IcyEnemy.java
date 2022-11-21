package com.prineside.tdi2.enemies;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class IcyEnemy extends Enemy {
    public float shieldHealth;
    public float shieldMaxHealth;

    /* loaded from: classes2.dex */
    public static class IcyEnemyFactory extends Enemy.Factory<IcyEnemy> {

        /* renamed from: r */
        public TextureRegion f9175r;

        /* renamed from: s */
        public TextureRegion f9176s;

        /* renamed from: t */
        public TextureRegion f9177t;

        public IcyEnemyFactory() {
            super(EnemyType.ICY);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.BLUE.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getEmojiTexture() {
            return this.f9177t;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9176s;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9175r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public IcyEnemy create() {
            return new IcyEnemy();
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9175r = Game.f8589i.assetManager.getTextureRegion("enemy-type-icy");
            this.f9176s = Game.f8589i.assetManager.getTextureRegion("enemy-type-icy-hl");
            this.f9177t = Game.f8589i.assetManager.getTextureRegion("enemy-type-icy-emj");
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBaseDamage() {
        return 0.5f;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return false;
    }

    public IcyEnemy() {
        super(EnemyType.ICY);
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBuffVulnerability(BuffType buffType) {
        if (buffType != BuffType.STUN && buffType != BuffType.SNOWBALL && buffType != BuffType.BLIZZARD && buffType != BuffType.FREEZING) {
            return super.getBuffVulnerability(buffType);
        }
        if (this.shieldHealth > 0.0f) {
            return 0.0f;
        }
        return super.getBuffVulnerability(buffType);
    }

    @Override // com.prineside.tdi2.Enemy
    public void drawHealth(SpriteBatch spriteBatch) {
        super.drawHealth(spriteBatch);
        float f = this.shieldHealth;
        if (f != 0.0f) {
            float f2 = f / this.shieldMaxHealth;
            spriteBatch.setColor(Enemy.HEALTH_BAR_BACKGROUND_COLOR);
            ResourcePack.AtlasTextureRegion blankWhiteTextureRegion = Game.f8589i.assetManager.getBlankWhiteTextureRegion();
            Vector2 vector2 = this.drawPosition;
            spriteBatch.draw(blankWhiteTextureRegion, vector2.f5527x - 28.0f, vector2.f5528y + 58.0f, 56.0f, 8.0f);
            spriteBatch.setColor(MaterialColor.LIGHT_BLUE.P500);
            ResourcePack.AtlasTextureRegion blankWhiteTextureRegion2 = Game.f8589i.assetManager.getBlankWhiteTextureRegion();
            Vector2 vector22 = this.drawPosition;
            spriteBatch.draw(blankWhiteTextureRegion2, vector22.f5527x - 26.0f, vector22.f5528y + 60.0f, (int) (f2 * 52.0f), 4.0f);
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public float giveDamage(Tower tower, float f, DamageType damageType) {
        float f2;
        float f3;
        float giveDamage = super.giveDamage(tower, f, damageType);
        float f4 = this.shieldHealth;
        DamageType damageType2 = DamageType.BULLET;
        if (damageType != damageType2) {
            f2 = 0.2f * giveDamage;
            f3 = 5.0f * f4;
        } else {
            f2 = giveDamage;
            f3 = f4;
        }
        float f5 = f4 - f2;
        this.shieldHealth = f5;
        if (f5 < 0.0f) {
            f3 -= -f5;
            this.shieldHealth = 0.0f;
        }
        if (damageType == damageType2 && f3 != 0.0f) {
            float min = StrictMath.min(giveDamage, f3);
            setHealth(getHealth() + min);
            return giveDamage - min;
        }
        return giveDamage;
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.shieldHealth = input.readFloat();
        this.shieldMaxHealth = input.readFloat();
    }

    @Override // com.prineside.tdi2.Enemy, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.shieldHealth = 0.0f;
        this.shieldMaxHealth = 0.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public void setMaxHealth(float f) {
        super.setMaxHealth(f);
        float f2 = f * 0.25f;
        this.shieldHealth = f2;
        this.shieldMaxHealth = f2;
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.shieldHealth);
        output.writeFloat(this.shieldMaxHealth);
    }
}
