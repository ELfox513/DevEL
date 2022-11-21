package com.prineside.tdi2.buffs.processors;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Buff;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.buffs.ChainReactionBuff;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.projectiles.BuffProjectile;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class ChainReactionBuffProcessor extends BuffProcessor<ChainReactionBuff> {
    public static final int MAX_BUFFS_PER_ENEMY = 2;

    /* renamed from: k */
    public static final Array<Buff> f9129k = new Array<>(Buff.class);

    /* renamed from: d */
    public _EnemySystemListener f9130d;

    @REGS
    /* loaded from: classes2.dex */
    public static class _EnemySystemListener extends EnemySystem.EnemySystemListener.EnemySystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f9131a;

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 918915;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f9131a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f9131a, GameSystemProvider.class);
        }

        @Deprecated
        public _EnemySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyDie(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile) {
            DelayedRemovalArray buffsByTypeOrNull = enemy.getBuffsByTypeOrNull(BuffType.CHAIN_REACTION);
            if (buffsByTypeOrNull != null && buffsByTypeOrNull.size != 0) {
                ChainReactionBuff chainReactionBuff = (ChainReactionBuff) buffsByTypeOrNull.first();
                float f = chainReactionBuff.rangeInTiles;
                float f2 = f * f * 128.0f * 128.0f;
                float f3 = chainReactionBuff.chance;
                int i = 0;
                if (f < 1.75f && enemy.getCurrentTile() != null) {
                    Array<Tile> neighbourTilesAndThis = enemy.getCurrentTile().getNeighbourTilesAndThis();
                    for (int i2 = 0; i2 < neighbourTilesAndThis.size; i2++) {
                        Tile tile = neighbourTilesAndThis.items[i2];
                        int i3 = 0;
                        while (true) {
                            DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = tile.enemies;
                            if (i3 < delayedRemovalArray.size) {
                                Enemy enemy2 = delayedRemovalArray.items[i3].enemy;
                                if (enemy2 != null && enemy2 != enemy && enemy2.getPosition().dst2(enemy.getPosition()) < f2 && !enemy2.hasBuffsByType(BuffType.CHAIN_REACTION) && this.f9131a.gameState.randomFloat() <= f3) {
                                    ChainReactionBuffProcessor.m21830d(this.f9131a, enemy, enemy2, chainReactionBuff.durationMultiplier);
                                }
                                i3++;
                            }
                        }
                    }
                    return;
                }
                this.f9131a.map.spawnedEnemies.begin();
                while (true) {
                    DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray2 = this.f9131a.map.spawnedEnemies;
                    if (i < delayedRemovalArray2.size) {
                        Enemy enemy3 = delayedRemovalArray2.items[i].enemy;
                        if (enemy3 != null && enemy3 != enemy && enemy3.getPosition().dst2(enemy.getPosition()) < f2 && !enemy3.hasBuffsByType(BuffType.CHAIN_REACTION) && this.f9131a.gameState.randomFloat() <= f3) {
                            ChainReactionBuffProcessor.m21830d(this.f9131a, enemy, enemy3, chainReactionBuff.durationMultiplier);
                        }
                        i++;
                    } else {
                        delayedRemovalArray2.end();
                        return;
                    }
                }
            }
        }

        public _EnemySystemListener(GameSystemProvider gameSystemProvider) {
            this.f9131a = gameSystemProvider;
        }
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public StatisticsType getBuffCountStatistic() {
        return StatisticsType.EB_CR;
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public float getUpdateInterval() {
        return 0.0f;
    }

    /* renamed from: d */
    public static void m21830d(GameSystemProvider gameSystemProvider, Enemy enemy, Enemy enemy2, float f) {
        if (enemy2.wasAimedAtWithChainReactionBuff) {
            return;
        }
        enemy2.wasAimedAtWithChainReactionBuff = true;
        f9129k.clear();
        for (BuffType buffType : BuffType.values) {
            DelayedRemovalArray delayedRemovalArray = enemy.buffsByType[buffType.ordinal()];
            for (int i = 0; i < delayedRemovalArray.size; i++) {
                Buff cpy = ((Buff[]) delayedRemovalArray.items)[i].cpy(f);
                if (cpy != null) {
                    f9129k.add(cpy);
                }
            }
        }
        BuffProjectile obtain = Game.f8589i.projectileManager.f9990F.BUFF.obtain();
        gameSystemProvider.projectile.register(obtain);
        obtain.setup(enemy2, f9129k, enemy.getPosition(), 1.75f);
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public boolean addBuff(Enemy enemy, ChainReactionBuff chainReactionBuff) {
        BuffType buffType = BuffType.CHAIN_REACTION;
        DelayedRemovalArray buffsByTypeOrNull = enemy.getBuffsByTypeOrNull(buffType);
        if (buffsByTypeOrNull != null && buffsByTypeOrNull.size != 0) {
            if (((ChainReactionBuff[]) buffsByTypeOrNull.items)[0].chance > chainReactionBuff.chance) {
                chainReactionBuff.free();
                return false;
            }
            removeBuff(enemy, buffType, 0);
        }
        return super.addBuff(enemy, (Enemy) chainReactionBuff);
    }

    @Override // com.prineside.tdi2.Registrable
    public void setUnregistered() {
        this.f8844S.enemy.listeners.remove(this.f9130d);
        super.setUnregistered();
    }

    @Override // com.prineside.tdi2.BuffProcessor, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f9130d = (_EnemySystemListener) kryo.readObjectOrNull(input, _EnemySystemListener.class);
    }

    @Override // com.prineside.tdi2.Registrable
    public void setRegistered(GameSystemProvider gameSystemProvider) {
        super.setRegistered(gameSystemProvider);
        if (this.f9130d == null) {
            this.f9130d = new _EnemySystemListener(this.f8844S);
        }
        this.f8844S.enemy.listeners.add(this.f9130d);
    }

    @Override // com.prineside.tdi2.BuffProcessor, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObjectOrNull(output, this.f9130d, _EnemySystemListener.class);
    }
}
