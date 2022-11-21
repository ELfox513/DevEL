package com.prineside.tdi2.enemies.bosses;

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
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class SnakeBossHeadEnemy extends Enemy {

    /* renamed from: v */
    public static final Vector2 f9247v = new Vector2();
    public float damageResistance;
    public float defaultMaxSpeed;
    public float defaultMinSpeed;

    /* loaded from: classes2.dex */
    public static class SnakeBossHeadEnemyFactory extends Enemy.Factory<SnakeBossHeadEnemy> {

        /* renamed from: r */
        public TextureRegion f9248r;

        public SnakeBossHeadEnemyFactory() {
            super(EnemyType.SNAKE_BOSS_HEAD);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.LIGHT_GREEN.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9248r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9248r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9248r = Game.f8589i.assetManager.getTextureRegion("enemy-type-boss-snake-head");
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public SnakeBossHeadEnemy create() {
            return new SnakeBossHeadEnemy();
        }
    }

    public static float calculateSwingRotation(float f) {
        return PMath.sin(f * 3.0f) * 15.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean dynamicPathfindingAllowed() {
        return false;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBaseDamage() {
        return 15.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBuffedDamageMultiplier(TowerType towerType, DamageType damageType) {
        return super.getBuffedDamageMultiplier(towerType, damageType) * (1.0f - this.damageResistance);
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return false;
    }

    public SnakeBossHeadEnemy() {
        super(EnemyType.SNAKE_BOSS_HEAD);
        this.defaultMinSpeed = 0.5f;
        this.defaultMaxSpeed = 1.5f;
        this.damageResistance = 1.0f;
    }

    public static void transformPositionToSwing(float f, float f2, Vector2 vector2) {
        float sin = PMath.sin((f * 3.0f) - 45.0f);
        Vector2 vector22 = f9247v;
        vector22.set(12.8f, 0.0f).rotate(f2).scl(-sin);
        vector2.add(vector22);
    }

    @Override // com.prineside.tdi2.Enemy
    public void drawBatch(SpriteBatch spriteBatch, float f) {
        float f2 = this.angle;
        float calculateSwingRotation = calculateSwingRotation(this.passedTiles) + f2;
        this.angle = calculateSwingRotation;
        this.drawAngle = calculateSwingRotation;
        this.drawPosition.set(getPosition());
        super.drawBatch(spriteBatch, f);
        this.angle = f2;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getAbilityVulnerability(AbilityType abilityType) {
        if (abilityType == AbilityType.BALL_LIGHTNING) {
            return 0.1f;
        }
        if (abilityType == AbilityType.LOIC) {
            return 4.0f;
        }
        return 1.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public void onPositionSetToPath() {
        transformPositionToSwing(this.passedTiles, this.angle, getPosition());
        setPosition(getPosition());
    }

    @Override // com.prineside.tdi2.Enemy
    public void drawHealth(SpriteBatch spriteBatch) {
        super.drawHealth(spriteBatch);
        if (this.damageResistance != 0.0f) {
            spriteBatch.setColor(Enemy.HEALTH_BAR_BACKGROUND_COLOR);
            ResourcePack.AtlasTextureRegion blankWhiteTextureRegion = Game.f8589i.assetManager.getBlankWhiteTextureRegion();
            Vector2 vector2 = this.drawPosition;
            spriteBatch.draw(blankWhiteTextureRegion, vector2.f5527x - 28.0f, vector2.f5528y + 58.0f, 56.0f, 8.0f);
            spriteBatch.setColor(MaterialColor.LIGHT_BLUE.P500);
            ResourcePack.AtlasTextureRegion blankWhiteTextureRegion2 = Game.f8589i.assetManager.getBlankWhiteTextureRegion();
            Vector2 vector22 = this.drawPosition;
            spriteBatch.draw(blankWhiteTextureRegion2, vector22.f5527x - 26.0f, vector22.f5528y + 60.0f, (int) (this.damageResistance * 52.0f), 4.0f);
        }
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.defaultMinSpeed = input.readFloat();
        this.defaultMaxSpeed = input.readFloat();
        this.damageResistance = input.readFloat();
    }

    @Override // com.prineside.tdi2.Enemy, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.defaultMinSpeed = 0.5f;
        this.defaultMaxSpeed = 1.5f;
        this.damageResistance = 1.0f;
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.defaultMinSpeed);
        output.writeFloat(this.defaultMaxSpeed);
        output.writeFloat(this.damageResistance);
    }
}
