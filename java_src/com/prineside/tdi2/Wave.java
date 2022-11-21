package com.prineside.tdi2;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.REGS;
@REGS(arrayLevels = 1)
/* loaded from: classes2.dex */
public class Wave implements KryoSerializable {
    public boolean completed;
    public int difficulty;
    public boolean enemiesCanBeSplitBetweenSpawns;
    public boolean enemiesCanHaveRandomSideShifts;
    public float enemiesSumBounty;
    public float enemiesSumHealth;
    public float enemiesTookDamage;
    public DelayedRemovalArray<EnemyGroup> enemyGroups;
    public int killedEnemiesBountySum;
    public int killedEnemiesCount;
    public int passedEnemiesCount;
    public boolean started;
    public int totalEnemiesCount;
    public String waveMessage;
    public int waveNumber;
    public WaveProcessor waveProcessor;

    public Wave() {
        this.enemiesCanBeSplitBetweenSpawns = true;
        this.enemiesCanHaveRandomSideShifts = true;
        this.enemyGroups = new DelayedRemovalArray<>(true, 1, EnemyGroup.class);
        this.waveMessage = null;
        this.enemiesSumHealth = 0.0f;
        this.enemiesSumBounty = 0.0f;
        this.enemiesTookDamage = 0.0f;
        this.waveProcessor = null;
        this.killedEnemiesCount = 0;
        this.passedEnemiesCount = 0;
        this.killedEnemiesBountySum = 0;
        this.completed = false;
    }

    public boolean isFullySpawned() {
        int i = 0;
        while (true) {
            DelayedRemovalArray<EnemyGroup> delayedRemovalArray = this.enemyGroups;
            if (i < delayedRemovalArray.size) {
                EnemyGroup[] enemyGroupArr = delayedRemovalArray.items;
                if (enemyGroupArr[i].f8577a < enemyGroupArr[i].count) {
                    return false;
                }
                i++;
            } else {
                return true;
            }
        }
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.waveNumber = input.readVarInt(true);
        this.difficulty = input.readVarInt(true);
        this.totalEnemiesCount = input.readVarInt(true);
        this.enemiesCanBeSplitBetweenSpawns = input.readBoolean();
        this.enemiesCanHaveRandomSideShifts = input.readBoolean();
        this.enemyGroups = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.waveMessage = (String) kryo.readObjectOrNull(input, String.class);
        this.enemiesSumHealth = input.readFloat();
        this.enemiesSumBounty = input.readFloat();
        this.enemiesTookDamage = input.readFloat();
        this.waveProcessor = (WaveProcessor) kryo.readClassAndObject(input);
        this.started = input.readBoolean();
        this.killedEnemiesCount = input.readVarInt(true);
        this.passedEnemiesCount = input.readVarInt(true);
        this.killedEnemiesBountySum = input.readVarInt(true);
        this.completed = input.readBoolean();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Wave {\n");
        sb.append("  waveNumber: ");
        sb.append(this.waveNumber);
        sb.append("\n");
        sb.append("  averageDifficulty: ");
        sb.append(this.difficulty);
        sb.append("\n");
        sb.append("  enemiesCount: ");
        sb.append(this.totalEnemiesCount);
        sb.append("\n");
        sb.append("  enemyGroups: {");
        sb.append("\n");
        Array.ArrayIterator<EnemyGroup> it = this.enemyGroups.iterator();
        while (it.hasNext()) {
            sb.append("    ");
            sb.append(it.next().toString());
            sb.append("\n");
        }
        sb.append("  }");
        sb.append("\n");
        sb.append("}");
        return sb.toString();
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        output.writeVarInt(this.waveNumber, true);
        output.writeVarInt(this.difficulty, true);
        output.writeVarInt(this.totalEnemiesCount, true);
        output.writeBoolean(this.enemiesCanBeSplitBetweenSpawns);
        output.writeBoolean(this.enemiesCanHaveRandomSideShifts);
        kryo.writeObject(output, this.enemyGroups);
        kryo.writeObjectOrNull(output, this.waveMessage, String.class);
        output.writeFloat(this.enemiesSumHealth);
        output.writeFloat(this.enemiesSumBounty);
        output.writeFloat(this.enemiesTookDamage);
        kryo.writeClassAndObject(output, this.waveProcessor);
        output.writeBoolean(this.started);
        output.writeVarInt(this.killedEnemiesCount, true);
        output.writeVarInt(this.passedEnemiesCount, true);
        output.writeVarInt(this.killedEnemiesBountySum, true);
        output.writeBoolean(this.completed);
    }

    public Wave(int i, int i2, Array<EnemyGroup> array) {
        this.enemiesCanBeSplitBetweenSpawns = true;
        this.enemiesCanHaveRandomSideShifts = true;
        DelayedRemovalArray<EnemyGroup> delayedRemovalArray = new DelayedRemovalArray<>(true, 1, EnemyGroup.class);
        this.enemyGroups = delayedRemovalArray;
        this.waveMessage = null;
        this.enemiesSumHealth = 0.0f;
        this.enemiesSumBounty = 0.0f;
        this.enemiesTookDamage = 0.0f;
        this.waveProcessor = null;
        this.killedEnemiesCount = 0;
        this.passedEnemiesCount = 0;
        this.killedEnemiesBountySum = 0;
        this.completed = false;
        this.waveNumber = i;
        this.difficulty = i2;
        delayedRemovalArray.addAll(array);
        Array.ArrayIterator<EnemyGroup> it = array.iterator();
        while (it.hasNext()) {
            EnemyGroup next = it.next();
            int i3 = this.totalEnemiesCount;
            int i4 = next.count;
            this.totalEnemiesCount = i3 + i4;
            this.enemiesSumBounty += i4 * next.bounty;
            this.enemiesSumHealth += i4 * next.health;
        }
    }
}
