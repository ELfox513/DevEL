package com.prineside.tdi2.enemies;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.buffs.RegenerationBuff;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class ToxicEnemy extends Enemy {

    /* renamed from: v */
    public float f9195v;

    /* renamed from: w */
    public float f9196w;

    /* loaded from: classes2.dex */
    public static class ToxicEnemyFactory extends Enemy.Factory<ToxicEnemy> {

        /* renamed from: r */
        public TextureRegion f9197r;

        /* renamed from: s */
        public TextureRegion f9198s;

        /* renamed from: t */
        public TextureRegion f9199t;

        public ToxicEnemyFactory() {
            super(EnemyType.TOXIC);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.LIGHT_GREEN.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getEmojiTexture() {
            return this.f9199t;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9198s;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9197r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public ToxicEnemy create() {
            return new ToxicEnemy();
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9197r = Game.f8589i.assetManager.getTextureRegion("enemy-type-toxic");
            this.f9198s = Game.f8589i.assetManager.getTextureRegion("enemy-type-toxic-hl");
            this.f9199t = Game.f8589i.assetManager.getTextureRegion("enemy-type-toxic-emj");
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public float giveDamage(Tower tower, float f, DamageType damageType) {
        this.f9195v = 0.0f;
        this.f9196w = 9001.0f;
        return super.giveDamage(tower, f, damageType);
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return false;
    }

    public ToxicEnemy() {
        super(EnemyType.TOXIC);
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f9195v = input.readFloat();
        this.f9196w = input.readFloat();
    }

    @Override // com.prineside.tdi2.Enemy, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f9195v = 0.0f;
        this.f9196w = 0.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public void update(float f) {
        super.update(f);
        float f2 = this.f9195v + f;
        this.f9195v = f2;
        this.f9196w += f;
        if (f2 > 3.0f && getHealth() != this.maxHealth && this.f9196w > 0.25f) {
            RegenerationBuff obtain = Game.f8589i.buffManager.f9699F.REGENERATION.obtain();
            obtain.setup(0.5f, 5.0f, this.maxHealth * 0.05f, this.f8844S.enemy.getReference(this));
            this.f8844S.buff.P_REGENERATION.addBuff((Enemy) this, obtain);
            this.f9196w = 0.0f;
        }
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f9195v);
        output.writeFloat(this.f9196w);
    }
}
