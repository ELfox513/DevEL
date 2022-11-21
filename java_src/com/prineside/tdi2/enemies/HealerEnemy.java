package com.prineside.tdi2.enemies;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.buffs.RegenerationBuff;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class HealerEnemy extends Enemy {

    /* renamed from: w */
    public static final Color f9165w = MaterialColor.RED.P500;

    /* renamed from: v */
    public float f9166v;

    /* loaded from: classes2.dex */
    public static class HealerEnemyFactory extends Enemy.Factory<HealerEnemy> {

        /* renamed from: r */
        public TextureRegion f9167r;

        /* renamed from: s */
        public TextureRegion f9168s;

        /* renamed from: t */
        public TextureRegion f9169t;

        /* renamed from: u */
        public TextureRegion f9170u;

        public HealerEnemyFactory() {
            super(EnemyType.HEALER);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.RED.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getEmojiTexture() {
            return this.f9170u;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9169t;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9167r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public HealerEnemy create() {
            return new HealerEnemy();
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9167r = Game.f8589i.assetManager.getTextureRegion("enemy-type-healer");
            this.f9168s = Game.f8589i.assetManager.getTextureRegion("aura-range");
            this.f9169t = Game.f8589i.assetManager.getTextureRegion("enemy-type-healer-hl");
            this.f9170u = Game.f8589i.assetManager.getTextureRegion("enemy-type-healer-emj");
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBaseDamage() {
        return 1.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return false;
    }

    public HealerEnemy() {
        super(EnemyType.HEALER);
    }

    @Override // com.prineside.tdi2.Enemy
    public void drawBatchAdditive(SpriteBatch spriteBatch, float f) {
        super.drawBatchAdditive(spriteBatch, f);
        spriteBatch.setColor(f9165w);
        TextureRegion textureRegion = Game.f8589i.enemyManager.f9783F.HEALER.f9168s;
        Vector2 vector2 = this.drawPosition;
        spriteBatch.draw(textureRegion, vector2.f5527x - 128.0f, vector2.f5528y - 128.0f, 256.0f, 256.0f);
        spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f9166v = input.readFloat();
    }

    @Override // com.prineside.tdi2.Enemy, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f9166v = 0.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public void update(float f) {
        DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray;
        super.update(f);
        if (getCurrentTile() != null) {
            float f2 = this.f9166v + f;
            this.f9166v = f2;
            if (f2 > 0.15f) {
                this.f9166v = 0.0f;
                Array<Tile> neighbourTilesAndThis = getCurrentTile().getNeighbourTilesAndThis();
                for (int i = 0; i < neighbourTilesAndThis.size; i++) {
                    Tile tile = neighbourTilesAndThis.items[i];
                    tile.enemies.begin();
                    int i2 = 0;
                    while (true) {
                        delayedRemovalArray = tile.enemies;
                        if (i2 < delayedRemovalArray.size) {
                            Enemy enemy = delayedRemovalArray.items[i2].enemy;
                            if (enemy != null && enemy.type != EnemyType.HEALER && getPosition().dst2(enemy.getPosition()) < 16384.0f) {
                                RegenerationBuff obtain = Game.f8589i.buffManager.f9699F.REGENERATION.obtain();
                                obtain.setup(0.2f, 2.0f, StrictMath.min(enemy.maxHealth, this.maxHealth) * 0.05f, this.f8844S.enemy.getReference(this));
                                this.f8844S.buff.P_REGENERATION.addBuff(enemy, obtain);
                            }
                            i2++;
                        }
                    }
                    delayedRemovalArray.end();
                }
            }
        }
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f9166v);
    }
}
