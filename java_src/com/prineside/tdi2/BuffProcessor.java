package com.prineside.tdi2;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Buff;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.ScheduledUpdater;
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.utils.REGS;
@REGS(arrayLevels = 1)
/* loaded from: classes2.dex */
public abstract class BuffProcessor<T extends Buff> extends Registrable implements ScheduledUpdater.Updatable {

    /* renamed from: b */
    public static final Array<Enemy.EnemyReference> f8473b = new Array<>(true, 1, Enemy.EnemyReference.class);
    public ListenerGroup<BuffProcessorListener> listeners = new ListenerGroup<>(BuffProcessorListener.class);

    /* renamed from: a */
    public int f8474a = -1;

    @REGS(classOnly = true)
    /* loaded from: classes2.dex */
    public interface BuffProcessorListener extends GameListener {
        void buffAdded(Enemy enemy, Buff buff);

        void buffRemoved(Enemy enemy, Buff buff);
    }

    public boolean addBuff(Enemy enemy, T t) {
        return m22042a(enemy, t);
    }

    public StatisticsType getBuffCountStatistic() {
        return null;
    }

    public float getUpdateInterval() {
        return 0.0f;
    }

    public void removeBuff(Enemy enemy, BuffType buffType, int i) {
        Buff buff = ((Buff[]) enemy.buffsByType[buffType.ordinal()].items)[i];
        this.listeners.begin();
        for (int i2 = 0; i2 < this.listeners.size(); i2++) {
            this.listeners.get(i2).buffRemoved(enemy, buff);
        }
        this.listeners.end();
        buff.free();
        enemy.buffsByType[buffType.ordinal()].removeIndex(i);
    }

    @Override // com.prineside.tdi2.ScheduledUpdater.Updatable
    public int scheduledUpdatableGetId() {
        return this.f8474a;
    }

    @Override // com.prineside.tdi2.ScheduledUpdater.Updatable
    public final void scheduledUpdatableSetId(int i) {
        this.f8474a = i;
    }

    @Override // com.prineside.tdi2.ScheduledUpdater.Updatable
    public void scheduledUpdate(float f) {
    }

    public void removeAllBuffs(Enemy enemy, BuffType buffType) {
        DelayedRemovalArray[] delayedRemovalArrayArr = enemy.buffsByType;
        if (delayedRemovalArrayArr == null) {
            return;
        }
        DelayedRemovalArray delayedRemovalArray = delayedRemovalArrayArr[buffType.ordinal()];
        delayedRemovalArray.begin();
        for (int i = 0; i < delayedRemovalArray.size; i++) {
            removeBuff(enemy, buffType, i);
        }
        delayedRemovalArray.end();
    }

    /* renamed from: a */
    public final boolean m22042a(Enemy enemy, T t) {
        StatisticsType buffCountStatistic;
        DelayedRemovalArray[] delayedRemovalArrayArr;
        if (!enemy.canBeBuffed(t.getType())) {
            t.free();
            return false;
        }
        enemy.initBuffsByTypeArray();
        if (GameSystemProvider.DEBUG) {
            this.f8844S.map.spawnedEnemies.begin();
            int i = 0;
            while (true) {
                DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = this.f8844S.map.spawnedEnemies;
                if (i < delayedRemovalArray.size) {
                    Enemy enemy2 = delayedRemovalArray.items[i].enemy;
                    if (enemy2 != null && (delayedRemovalArrayArr = enemy2.buffsByType) != null) {
                        DelayedRemovalArray delayedRemovalArray2 = delayedRemovalArrayArr[t.getType().ordinal()];
                        for (int i2 = 0; i2 < delayedRemovalArray2.size; i2++) {
                            if (delayedRemovalArray2.items[i2] == t) {
                                throw new IllegalStateException("Buff " + t + " is already applied to " + enemy2 + ", can't apply to " + enemy);
                            }
                        }
                        continue;
                    }
                    i++;
                } else {
                    delayedRemovalArray.end();
                    break;
                }
            }
        }
        enemy.buffsByType[t.getType().ordinal()].add(t);
        this.listeners.begin();
        for (int i3 = 0; i3 < this.listeners.size(); i3++) {
            this.listeners.get(i3).buffAdded(enemy, t);
        }
        this.listeners.end();
        this.f8844S.statistics.addStatistic(StatisticsType.EB, 1.0d);
        if (enemy.buffsAppliedByType == null) {
            enemy.buffsAppliedByType = new boolean[BuffType.values.length];
        }
        if (!enemy.buffsAppliedByType[t.getType().ordinal()] && (buffCountStatistic = getBuffCountStatistic()) != null) {
            this.f8844S.statistics.addStatistic(buffCountStatistic, 1.0d);
            enemy.buffsAppliedByType[t.getType().ordinal()] = true;
        }
        if (this.f8844S.achievement.isActive()) {
            int i4 = 0;
            for (DelayedRemovalArray delayedRemovalArray3 : enemy.buffsByType) {
                if (delayedRemovalArray3.size != 0) {
                    i4++;
                }
            }
            Game.f8589i.achievementManager.setProgress(AchievementType.MASS_BUFF_ENEMY, i4);
        }
        return true;
    }

    /* renamed from: b */
    public boolean m22041b(Enemy enemy, T t) {
        if (enemy.hasBuffsByType(t.getType())) {
            removeBuff(enemy, t.getType(), 0);
        }
        return m22042a(enemy, t);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.listeners = (ListenerGroup) kryo.readObject(input, ListenerGroup.class);
        this.f8474a = input.readInt();
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.listeners);
        output.writeInt(this.f8474a);
    }

    public void removeBuff(Enemy enemy, T t) {
        int indexOf;
        DelayedRemovalArray[] delayedRemovalArrayArr = enemy.buffsByType;
        if (delayedRemovalArrayArr == null || (indexOf = delayedRemovalArrayArr[t.getType().ordinal()].indexOf(t, true)) == -1) {
            return;
        }
        removeBuff(enemy, t.getType(), indexOf);
    }
}
