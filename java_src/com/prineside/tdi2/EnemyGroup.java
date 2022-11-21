package com.prineside.tdi2;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.utils.REGS;
@REGS(arrayLevels = 1)
/* loaded from: classes2.dex */
public class EnemyGroup implements KryoSerializable {

    /* renamed from: a */
    public int f8577a;
    public float bounty;
    public int count;
    public float delay;
    public float health;
    public float interval;
    public float killExp;
    public int killScore;
    public float speed;
    public EnemyType type;

    @REGS
    /* loaded from: classes2.dex */
    public static class SpawnEnemyGroup extends EnemyGroup {
        public EnemyGroup waveGroup;

        public SpawnEnemyGroup() {
            super();
        }

        public SpawnEnemyGroup(EnemyGroup enemyGroup, EnemyType enemyType, float f, float f2, int i, float f3, float f4, float f5, float f6, int i2) {
            super(enemyType, f, f2, i, f3, f4, f5, f6, i2);
            this.waveGroup = enemyGroup;
        }

        public void addSpawnedCount(int i) {
            this.f8577a += i;
            this.waveGroup.f8577a += i;
        }

        @Override // com.prineside.tdi2.EnemyGroup, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            super.read(kryo, input);
            this.waveGroup = (EnemyGroup) kryo.readObjectOrNull(input, EnemyGroup.class);
        }

        @Override // com.prineside.tdi2.EnemyGroup, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            super.write(kryo, output);
            kryo.writeObjectOrNull(output, this.waveGroup, EnemyGroup.class);
        }
    }

    public int getSpawnedCount() {
        return this.f8577a;
    }

    public EnemyGroup() {
        this.killExp = 1.0f;
        this.killScore = 1;
        this.f8577a = 0;
    }

    public static EnemyGroup fromJson(JsonValue jsonValue) {
        EnemyGroup enemyGroup = new EnemyGroup();
        enemyGroup.type = EnemyType.valueOf(jsonValue.getString("enemyType"));
        enemyGroup.delay = jsonValue.getFloat("delay", 0.0f);
        enemyGroup.interval = jsonValue.getFloat("interval");
        enemyGroup.count = jsonValue.getInt("count");
        enemyGroup.health = jsonValue.getFloat("health");
        enemyGroup.speed = jsonValue.getFloat("speed");
        enemyGroup.bounty = jsonValue.getFloat("bounty");
        enemyGroup.killExp = jsonValue.getFloat("exp");
        enemyGroup.killScore = jsonValue.getInt("score");
        return enemyGroup;
    }

    public EnemyGroup cpy() {
        EnemyGroup enemyGroup = new EnemyGroup(this.type, this.speed, this.health, this.count, this.delay, this.interval, this.bounty, this.killExp, this.killScore);
        enemyGroup.f8577a = this.f8577a;
        return enemyGroup;
    }

    public SpawnEnemyGroup createSpawnPortion(int i) {
        SpawnEnemyGroup spawnEnemyGroup = new SpawnEnemyGroup(this, this.type, this.speed, this.health, i, this.delay, this.interval, this.bounty, this.killExp, this.killScore);
        spawnEnemyGroup.f8577a = 0;
        return spawnEnemyGroup;
    }

    public int getSpawnCountByTime(float f) {
        float f2 = f - this.delay;
        if (f2 < 0.0f) {
            return 0;
        }
        float f3 = this.interval;
        if (f3 > 0.0f) {
            int floor = MathUtils.floor(f2 / f3) + 1;
            int i = this.count;
            if (floor > i) {
                return i;
            }
            return floor;
        }
        return this.count;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.type = (EnemyType) kryo.readObjectOrNull(input, EnemyType.class);
        this.speed = input.readFloat();
        this.health = input.readFloat();
        this.delay = input.readFloat();
        this.interval = input.readFloat();
        this.bounty = input.readFloat();
        this.killExp = input.readFloat();
        this.killScore = input.readInt();
        this.count = input.readVarInt(true);
        this.f8577a = input.readVarInt(true);
    }

    public void toJson(Json json) {
        json.writeValue("enemyType", this.type.name());
        float f = this.delay;
        if (f > 0.0f) {
            json.writeValue("delay", Float.valueOf(f));
        }
        json.writeValue("interval", Float.valueOf(this.interval));
        json.writeValue("count", Integer.valueOf(this.count));
        json.writeValue("health", Float.valueOf(this.health));
        json.writeValue("speed", Float.valueOf(this.speed));
        json.writeValue("bounty", Float.valueOf(this.bounty));
        json.writeValue("exp", Float.valueOf(this.killExp));
        json.writeValue("score", Integer.valueOf(this.killScore));
    }

    public String toString() {
        return "EnemyGroup { type: " + this.type.name() + ", speed: " + this.speed + ", health: " + this.health + ", delay: " + this.delay + ", interval: " + this.interval + ", bounty: " + this.bounty + ", killExp: " + this.killExp + ", killScore: " + this.killScore + ", count: " + this.count + ", spawnedCount: " + this.f8577a + " }";
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObjectOrNull(output, this.type, EnemyType.class);
        output.writeFloat(this.speed);
        output.writeFloat(this.health);
        output.writeFloat(this.delay);
        output.writeFloat(this.interval);
        output.writeFloat(this.bounty);
        output.writeFloat(this.killExp);
        output.writeInt(this.killScore);
        output.writeVarInt(this.count, true);
        output.writeVarInt(this.f8577a, true);
    }

    public EnemyGroup(EnemyType enemyType, float f, float f2, int i, float f3, float f4, float f5, float f6, int i2) {
        this.f8577a = 0;
        this.type = enemyType;
        this.speed = f;
        this.health = f2;
        this.count = i;
        this.delay = f3;
        this.interval = f4;
        this.bounty = f5;
        this.killExp = f6;
        this.killScore = i2;
    }
}
