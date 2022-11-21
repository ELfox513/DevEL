package com.prineside.tdi2.enemies;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.SpecialDamageType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
import java.util.Arrays;
@REGS
/* loaded from: classes2.dex */
public class GenericEnemy extends Enemy {
    public float[] abilityVulnerability;
    public boolean allowsDynamicPathfinding;
    public int baseDamage;
    public float[] buffVulnerability;
    public Color color;
    public boolean[] damageVulnerability;
    public boolean drawPriority;
    public boolean isFlying;
    public boolean mayHaveRandomSideShift;
    public float size;
    public boolean[] specialDamageVulnerability;
    @NAGS
    public TextureRegion texture;
    public float[] towerDamageMultiplier;

    /* loaded from: classes2.dex */
    public static class GenericEnemyFactory extends Enemy.Factory<GenericEnemy> {
        public GenericEnemyFactory() {
            super(EnemyType.GENERIC);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.GREY.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getEmojiTexture() {
            return Game.f8589i.assetManager.getBlankWhiteTextureRegion();
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return Game.f8589i.assetManager.getBlankWhiteTextureRegion();
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return Game.f8589i.assetManager.getBlankWhiteTextureRegion();
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public GenericEnemy create() {
            return new GenericEnemy();
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean canHaveRandomSideShift() {
        return this.mayHaveRandomSideShift;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean dynamicPathfindingAllowed() {
        return this.allowsDynamicPathfinding;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getAbilityVulnerability(AbilityType abilityType) {
        float[] fArr = this.abilityVulnerability;
        return fArr == null ? super.getAbilityVulnerability(abilityType) : fArr[abilityType.ordinal()];
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBaseDamage() {
        return this.baseDamage;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBuffVulnerability(BuffType buffType) {
        float[] fArr = this.buffVulnerability;
        return fArr == null ? this.f8844S.enemy.enemyBuffVulnerability[this.type.ordinal()][buffType.ordinal()] : fArr[buffType.ordinal()];
    }

    @Override // com.prineside.tdi2.Enemy
    public Color getColor() {
        Color color = this.color;
        return color == null ? MaterialColor.GREY.P500 : color;
    }

    @Override // com.prineside.tdi2.Enemy
    public TextureRegion getEmojiTexture() {
        return getTexture();
    }

    @Override // com.prineside.tdi2.Enemy
    public TextureRegion getHighlightTexture() {
        return getTexture();
    }

    @Override // com.prineside.tdi2.Enemy
    public float getSize() {
        return this.size;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getSquaredSize() {
        float f = this.size;
        return f * f;
    }

    @Override // com.prineside.tdi2.Enemy
    public TextureRegion getTexture() {
        TextureRegion textureRegion = this.texture;
        return textureRegion == null ? Game.f8589i.enemyManager.getFactory(this.type).getTexture() : textureRegion;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getTowerDamageMultiplier(TowerType towerType) {
        float[] fArr = this.towerDamageMultiplier;
        return fArr == null ? this.f8844S.tower.towerEnemyDamageMultiplier[this.type.ordinal()][towerType.ordinal()] : fArr[towerType.ordinal()];
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return this.drawPriority;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean isAir() {
        return this.isFlying;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean isVulnerableTo(DamageType damageType) {
        boolean[] zArr = this.damageVulnerability;
        return zArr == null ? this.f8844S.enemy.enemyDamageVulnerability[this.type.ordinal()][damageType.ordinal()] : zArr[damageType.ordinal()];
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean isVulnerableToSpecial(SpecialDamageType specialDamageType) {
        boolean[] zArr = this.specialDamageVulnerability;
        return zArr == null ? this.f8844S.enemy.enemySpecialDamageVulnerability[this.type.ordinal()][specialDamageType.ordinal()] : zArr[specialDamageType.ordinal()];
    }

    public GenericEnemy() {
        super(EnemyType.GENERIC);
        this.size = 25.6f;
        this.mayHaveRandomSideShift = true;
        this.drawPriority = false;
        this.baseDamage = 1;
        this.isFlying = false;
        this.allowsDynamicPathfinding = true;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean canBeAttackedBy(Tower tower) {
        if (getTowerDamageMultiplier(tower.type) <= 0.0f) {
            return false;
        }
        return super.canBeAttackedBy(tower);
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.size = input.readFloat();
        this.mayHaveRandomSideShift = input.readBoolean();
        this.drawPriority = input.readBoolean();
        this.towerDamageMultiplier = (float[]) kryo.readObjectOrNull(input, float[].class);
        this.baseDamage = input.readVarInt(true);
        this.buffVulnerability = (float[]) kryo.readObjectOrNull(input, float[].class);
        this.damageVulnerability = (boolean[]) kryo.readObjectOrNull(input, boolean[].class);
        this.specialDamageVulnerability = (boolean[]) kryo.readObjectOrNull(input, boolean[].class);
        this.abilityVulnerability = (float[]) kryo.readObjectOrNull(input, float[].class);
        this.isFlying = input.readBoolean();
        this.allowsDynamicPathfinding = input.readBoolean();
        this.color = (Color) kryo.readObjectOrNull(input, Color.class);
    }

    public void setAbilityVulnerability(AbilityType abilityType, float f) {
        if (this.abilityVulnerability == null) {
            float[] fArr = new float[AbilityType.values.length];
            this.abilityVulnerability = fArr;
            Arrays.fill(fArr, 1.0f);
        }
        this.abilityVulnerability[abilityType.ordinal()] = f;
    }

    public void setBuffVulnerability(BuffType buffType, float f) {
        if (this.buffVulnerability == null) {
            this.buffVulnerability = new float[BuffType.values.length];
            float[] fArr = this.f8844S.enemy.enemyBuffVulnerability[this.type.ordinal()];
            float[] fArr2 = this.buffVulnerability;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        }
        this.buffVulnerability[buffType.ordinal()] = f;
    }

    public void setDamageVulnerability(DamageType damageType, boolean z) {
        if (this.damageVulnerability == null) {
            this.damageVulnerability = new boolean[DamageType.values.length];
            boolean[] zArr = this.f8844S.enemy.enemyDamageVulnerability[this.type.ordinal()];
            boolean[] zArr2 = this.damageVulnerability;
            System.arraycopy(zArr, 0, zArr2, 0, zArr2.length);
        }
        this.damageVulnerability[damageType.ordinal()] = z;
    }

    public void setSpecialDamageVulnerability(SpecialDamageType specialDamageType, boolean z) {
        if (this.specialDamageVulnerability == null) {
            this.specialDamageVulnerability = new boolean[SpecialDamageType.values.length];
            boolean[] zArr = this.f8844S.enemy.enemySpecialDamageVulnerability[this.type.ordinal()];
            boolean[] zArr2 = this.specialDamageVulnerability;
            System.arraycopy(zArr, 0, zArr2, 0, zArr2.length);
        }
        this.specialDamageVulnerability[specialDamageType.ordinal()] = z;
    }

    public void setTowerDamageMultiplier(TowerType towerType, float f) {
        if (this.towerDamageMultiplier == null) {
            this.towerDamageMultiplier = new float[TowerType.values.length];
            float[] fArr = this.f8844S.tower.towerEnemyDamageMultiplier[this.type.ordinal()];
            float[] fArr2 = this.towerDamageMultiplier;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        }
        this.towerDamageMultiplier[towerType.ordinal()] = f;
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.size);
        output.writeBoolean(this.mayHaveRandomSideShift);
        output.writeBoolean(this.drawPriority);
        kryo.writeObjectOrNull(output, this.towerDamageMultiplier, float[].class);
        output.writeVarInt(this.baseDamage, true);
        kryo.writeObjectOrNull(output, this.buffVulnerability, float[].class);
        kryo.writeObjectOrNull(output, this.damageVulnerability, boolean[].class);
        kryo.writeObjectOrNull(output, this.specialDamageVulnerability, boolean[].class);
        kryo.writeObjectOrNull(output, this.abilityVulnerability, float[].class);
        output.writeBoolean(this.isFlying);
        output.writeBoolean(this.allowsDynamicPathfinding);
        kryo.writeObjectOrNull(output, this.color, Color.class);
    }

    @Override // com.prineside.tdi2.Enemy
    public ParticleEffectPool.PooledEffect getBreakParticle() {
        ParticleEffectPool.PooledEffect breakParticle = super.getBreakParticle();
        Color color = getColor();
        float[] colors = breakParticle.getEmitters().first().getTint().getColors();
        colors[0] = color.f3892r;
        colors[1] = color.f3891g;
        colors[2] = color.f3890b;
        return breakParticle;
    }

    @Override // com.prineside.tdi2.Enemy
    public ParticleEffectPool.PooledEffect getHitParticle() {
        ParticleEffectPool.PooledEffect hitParticle = super.getHitParticle();
        Color color = getColor();
        float[] colors = hitParticle.getEmitters().first().getTint().getColors();
        colors[0] = color.f3892r;
        colors[1] = color.f3891g;
        colors[2] = color.f3890b;
        return hitParticle;
    }

    @Override // com.prineside.tdi2.Enemy, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.size = 25.6f;
        this.mayHaveRandomSideShift = true;
        this.drawPriority = false;
        this.baseDamage = 1;
        this.towerDamageMultiplier = null;
        this.buffVulnerability = null;
        this.damageVulnerability = null;
        this.specialDamageVulnerability = null;
        this.abilityVulnerability = null;
        this.isFlying = false;
        this.allowsDynamicPathfinding = true;
        this.color = null;
        this.texture = null;
    }
}
