package com.prineside.tdi2.enemies.bosses;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class MobchainBossHeadEnemy extends Enemy {
    public boolean vulnerable;

    /* loaded from: classes2.dex */
    public static class MobchainBossHeadEnemyFactory extends Enemy.Factory<MobchainBossHeadEnemy> {

        /* renamed from: r */
        public TextureRegion f9245r;

        public MobchainBossHeadEnemyFactory() {
            super(EnemyType.MOBCHAIN_BOSS_HEAD);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.DEEP_PURPLE.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9245r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9245r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9245r = Game.f8589i.assetManager.getTextureRegion("enemy-type-boss-mobchain-head");
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public MobchainBossHeadEnemy create() {
            return new MobchainBossHeadEnemy();
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean dynamicPathfindingAllowed() {
        return false;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getAbilityVulnerability(AbilityType abilityType) {
        return abilityType == AbilityType.BALL_LIGHTNING ? 0.1f : 1.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBaseDamage() {
        return 15.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return false;
    }

    public MobchainBossHeadEnemy() {
        super(EnemyType.MOBCHAIN_BOSS_HEAD);
        this.vulnerable = false;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean canBeAttackedBy(Tower tower) {
        if (!this.vulnerable) {
            return false;
        }
        return super.canBeAttackedBy(tower);
    }

    @Override // com.prineside.tdi2.Enemy
    public void drawHealth(SpriteBatch spriteBatch) {
        if (this.vulnerable) {
            super.drawHealth(spriteBatch);
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBuffedDamageMultiplier(TowerType towerType, DamageType damageType) {
        if (!this.vulnerable) {
            return 0.0f;
        }
        return super.getBuffedDamageMultiplier(towerType, damageType);
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.vulnerable = input.readBoolean();
    }

    @Override // com.prineside.tdi2.Enemy, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.vulnerable = false;
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeBoolean(this.vulnerable);
    }
}
