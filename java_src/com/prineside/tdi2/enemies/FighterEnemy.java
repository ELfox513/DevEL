package com.prineside.tdi2.enemies;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class FighterEnemy extends Enemy {

    /* renamed from: v */
    public boolean f9160v;

    /* loaded from: classes2.dex */
    public static class FighterEnemyFactory extends Enemy.Factory<FighterEnemy> {

        /* renamed from: r */
        public TextureRegion f9161r;

        /* renamed from: s */
        public TextureRegion f9162s;

        /* renamed from: t */
        public TextureRegion f9163t;

        /* renamed from: u */
        public TextureRegion f9164u;

        public FighterEnemyFactory() {
            super(EnemyType.FIGHTER);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.PURPLE.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getEmojiTexture() {
            return this.f9164u;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9163t;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9161r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public FighterEnemy create() {
            return new FighterEnemy();
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9161r = Game.f8589i.assetManager.getTextureRegion("enemy-type-fighter");
            this.f9162s = Game.f8589i.assetManager.getTextureRegion("enemy-type-fighter-small");
            this.f9163t = Game.f8589i.assetManager.getTextureRegion("enemy-type-fighter-hl");
            this.f9164u = Game.f8589i.assetManager.getTextureRegion("enemy-type-fighter-emj");
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBaseDamage() {
        return this.f9160v ? 0.5f : 2.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getSize() {
        return this.f9160v ? 17.92f : 30.72f;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getSquaredSize() {
        return 943.7184f;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return false;
    }

    public FighterEnemy() {
        super(EnemyType.FIGHTER);
    }

    @Override // com.prineside.tdi2.Enemy
    public TextureRegion getEmojiTexture() {
        if (this.f9160v) {
            return Game.f8589i.enemyManager.f9783F.FIGHTER.f9162s;
        }
        return Game.f8589i.enemyManager.f9783F.FIGHTER.getEmojiTexture();
    }

    @Override // com.prineside.tdi2.Enemy
    public TextureRegion getHighlightTexture() {
        if (this.f9160v) {
            return Game.f8589i.enemyManager.f9783F.FIGHTER.f9162s;
        }
        return Game.f8589i.enemyManager.f9783F.FIGHTER.f9163t;
    }

    @Override // com.prineside.tdi2.Enemy
    public TextureRegion getTexture() {
        if (this.f9160v) {
            return Game.f8589i.enemyManager.f9783F.FIGHTER.f9162s;
        }
        return Game.f8589i.enemyManager.f9783F.FIGHTER.f9161r;
    }

    @Override // com.prineside.tdi2.Enemy
    public void onPreDie() {
        super.onPreDie();
        if (!this.f9160v && this.graphPath != null) {
            for (int i = 0; i < 3; i++) {
                FighterEnemy fighterEnemy = (FighterEnemy) Game.f8589i.enemyManager.getFactory(EnemyType.FIGHTER).obtain();
                fighterEnemy.f9160v = true;
                fighterEnemy.setMaxHealth(this.maxHealth * 0.5f);
                fighterEnemy.bounty = this.bounty * 0.33f;
                fighterEnemy.setKillExp(getKillExp() * 0.33f);
                fighterEnemy.killScore = (int) (this.killScore * 0.33f);
                fighterEnemy.setSpeed(getSpeed());
                fighterEnemy.setHealth(this.maxHealth * 0.33f);
                this.f8844S.enemy.addEnemy(fighterEnemy, this.spawnTile, this.graphPath, -1, this.wave, this.passedTiles);
            }
        }
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f9160v = input.readBoolean();
    }

    @Override // com.prineside.tdi2.Enemy, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f9160v = false;
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeBoolean(this.f9160v);
    }
}
