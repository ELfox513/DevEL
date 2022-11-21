package com.prineside.tdi2.enemies.bosses;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Animation;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.Vector2;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class MetaphorBossCreepEnemy extends Enemy {

    /* renamed from: x */
    public static final Color f9210x = new Color();

    /* renamed from: v */
    public Kind f9211v;

    /* renamed from: w */
    public float f9212w;

    @REGS
    /* loaded from: classes2.dex */
    public enum Kind {
        LOW_HP,
        HIGH_HP,
        RANDOM_SPEED,
        FRONT,
        REAR,
        BIG,
        SMALL;
        
        public static final Kind[] values = values();
    }

    /* loaded from: classes2.dex */
    public static class MetaphorBossCreepEnemyFactory extends Enemy.Factory<MetaphorBossCreepEnemy> {

        /* renamed from: r */
        public TextureRegion f9214r;

        /* renamed from: s */
        public Animation<ResourcePack.AtlasTextureRegion> f9215s;

        public MetaphorBossCreepEnemyFactory() {
            super(EnemyType.MOBCHAIN_BOSS_CREEP);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.RED.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9214r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9214r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public MetaphorBossCreepEnemy create() {
            return new MetaphorBossCreepEnemy();
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9214r = Game.f8589i.assetManager.getTextureRegions("enemy-type-boss-metaphor-creep").first();
            this.f9215s = new Animation<>(0.07f, Game.f8589i.assetManager.getTextureRegions("enemy-type-boss-metaphor-creep"));
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean dynamicPathfindingAllowed() {
        return true;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBaseDamage() {
        return 0.0f;
    }

    public Kind getKind() {
        return this.f9211v;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getSize() {
        return super.getSize() * this.f9212w;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getSquaredSize() {
        return super.getSize() * this.f9212w * super.getSize() * this.f9212w;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return false;
    }

    public MetaphorBossCreepEnemy() {
        super(EnemyType.METAPHOR_BOSS_CREEP);
        this.f9211v = Kind.RANDOM_SPEED;
        this.f9212w = 1.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public void drawBatch(SpriteBatch spriteBatch, float f, Color color) {
        Color color2 = f9210x;
        color2.set(color);
        float f2 = this.existsTime;
        float f3 = 1.0f;
        if (f2 < 1.0f) {
            f3 = Interpolation.pow2Out.apply(f2);
        }
        float f4 = f3 * this.f9212w * 0.75f;
        spriteBatch.setColor(color2);
        ResourcePack.AtlasTextureRegion keyFrame = Game.f8589i.enemyManager.f9783F.METAPHOR_BOSS_CREEP.f9215s.getKeyFrame(this.passedTiles, true);
        float regionWidth = keyFrame.getRegionWidth() * f4;
        Vector2 vector2 = this.drawPosition;
        float f5 = regionWidth * 0.5f;
        spriteBatch.draw(keyFrame, vector2.f5527x - f5, vector2.f5528y - f5, f5, f5, regionWidth, regionWidth, 1.0f, 1.0f, this.drawAngle);
        if (this.buffBlizzardActive || this.buffSnowballActive) {
            TextureRegion iceOverlayTexture = Game.f8589i.enemyManager.getIceOverlayTexture(this.f8552id % 2);
            Vector2 vector22 = this.drawPosition;
            spriteBatch.draw(iceOverlayTexture, vector22.f5527x - f5, vector22.f5528y - f5, regionWidth, regionWidth);
        }
    }

    public void setKind(Kind kind) {
        this.f9211v = kind;
        if (kind == Kind.BIG) {
            this.f9212w = 1.25f;
        } else if (kind == Kind.SMALL) {
            this.f9212w = 0.8f;
        } else {
            this.f9212w = 1.0f;
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public float getTowerDamageMultiplier(TowerType towerType) {
        float f;
        float towerDamageMultiplier = super.getTowerDamageMultiplier(towerType);
        Kind kind = this.f9211v;
        if (kind == Kind.HIGH_HP) {
            f = 5.0f;
        } else if (kind == Kind.LOW_HP) {
            f = 0.2f;
        } else {
            return towerDamageMultiplier;
        }
        return towerDamageMultiplier * f;
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f9211v = (Kind) kryo.readObject(input, Kind.class);
        this.f9212w = input.readFloat();
    }

    @Override // com.prineside.tdi2.Enemy, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f9211v = Kind.RANDOM_SPEED;
        this.f9212w = 1.0f;
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.f9211v);
        output.writeFloat(this.f9212w);
    }
}
