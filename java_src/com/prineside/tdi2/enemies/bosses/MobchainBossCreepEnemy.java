package com.prineside.tdi2.enemies.bosses;

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
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class MobchainBossCreepEnemy extends Enemy {
    @NAGS
    public Color color;
    public TowerType vulnerableTo;

    /* loaded from: classes2.dex */
    public static class MobchainBossCreepEnemyFactory extends Enemy.Factory<MobchainBossCreepEnemy> {

        /* renamed from: r */
        public TextureRegion f9244r;

        public MobchainBossCreepEnemyFactory() {
            super(EnemyType.MOBCHAIN_BOSS_CREEP);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.DEEP_PURPLE.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9244r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9244r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9244r = Game.f8589i.assetManager.getTextureRegion("enemy-type-boss-mobchain-creep");
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public MobchainBossCreepEnemy create() {
            return new MobchainBossCreepEnemy();
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        super.drawBatch(spriteBatch, f, this.color);
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean dynamicPathfindingAllowed() {
        return true;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getAbilityVulnerability(AbilityType abilityType) {
        return 0.1f;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBaseDamage() {
        return 0.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return false;
    }

    public MobchainBossCreepEnemy() {
        super(EnemyType.MOBCHAIN_BOSS_CREEP);
        this.color = Color.WHITE;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBuffedDamageMultiplier(TowerType towerType, DamageType damageType) {
        float f;
        if (this.vulnerableTo == towerType) {
            f = 1.0f;
        } else {
            f = 0.05f;
        }
        return f * super.getBuffedDamageMultiplier(towerType, damageType);
    }

    @Override // com.prineside.tdi2.Enemy
    public void drawHealth(SpriteBatch spriteBatch) {
        super.drawHealth(spriteBatch);
        if (this.vulnerableTo != null) {
            spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
            ResourcePack.AtlasTextureRegion atlasTextureRegion = Game.f8589i.assetManager.f9555TR.enemyDialog;
            Vector2 vector2 = this.drawPosition;
            spriteBatch.draw(atlasTextureRegion, vector2.f5527x - 44.0f, vector2.f5528y + 56.0f, 88.0f, 80.0f);
            TextureRegion iconTexture = Game.f8589i.towerManager.getFactory(this.vulnerableTo).getIconTexture();
            Vector2 vector22 = this.drawPosition;
            spriteBatch.draw(iconTexture, vector22.f5527x - 32.0f, vector22.f5528y + 66.0f, 64.0f, 64.0f);
        }
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.vulnerableTo = (TowerType) kryo.readObjectOrNull(input, TowerType.class);
    }

    @Override // com.prineside.tdi2.Enemy, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.vulnerableTo = null;
        this.color = Color.WHITE;
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObjectOrNull(output, this.vulnerableTo, TowerType.class);
    }
}
