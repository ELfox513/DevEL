package com.prineside.tdi2.utils;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.utils.PMath;
@REGS(arrayLevels = 1)
/* loaded from: classes2.dex */
public class CheatSafeLong implements KryoSerializable {
    public static PMath.ClassComparator CLASS_COMPARATOR = new PMath.ClassComparator<CheatSafeLong>() { // from class: com.prineside.tdi2.utils.CheatSafeLong.1
        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public /* bridge */ /* synthetic */ void compare(CheatSafeLong cheatSafeLong, CheatSafeLong cheatSafeLong2, StringBuilder stringBuilder, Array array, int i, IntIntMap intIntMap, boolean z) {
            compare2(cheatSafeLong, cheatSafeLong2, stringBuilder, (Array<String>) array, i, intIntMap, z);
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public Class<CheatSafeLong> forClass() {
            return CheatSafeLong.class;
        }

        /* renamed from: compare  reason: avoid collision after fix types in other method */
        public void compare2(CheatSafeLong cheatSafeLong, CheatSafeLong cheatSafeLong2, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z) {
            if (cheatSafeLong.get() != cheatSafeLong2.get()) {
                for (int i2 = 0; i2 < array.size; i2++) {
                    stringBuilder.append(array.items[i2]);
                }
                stringBuilder.append(": ").append(cheatSafeLong.get()).append(" != ").append(cheatSafeLong2.get()).append("\n");
            }
        }
    };

    /* renamed from: a */
    public long f15068a;

    /* renamed from: b */
    public long f15069b;

    /* renamed from: d */
    public long f15070d;

    /* renamed from: k */
    public long f15071k;

    /* renamed from: p */
    public long f15072p;

    public CheatSafeLong() {
    }

    /* renamed from: a */
    public final boolean m19854a() {
        return ((((this.f15072p * 31) + this.f15068a) * 31) + this.f15069b) + ((long) hashCode()) != this.f15070d;
    }

    public long getSetOnCheat() {
        return -this.f15071k;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f15071k = input.readVarLong(false);
        set(input.readVarLong(false));
    }

    public void sub(long j) {
        set(get() - j);
    }

    public String toString() {
        return Long.toString(get());
    }

    public void set(long j) {
        this.f15072p = j;
        this.f15068a = FastRandom.getInt(8192);
        long j2 = FastRandom.getInt(8192);
        this.f15069b = j2;
        this.f15070d = (((this.f15072p * 31) + this.f15068a) * 31) + j2 + hashCode();
        if (m19854a()) {
            Logger.error("CheatSafeLong", "invalid on " + j);
        }
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        output.writeVarLong(this.f15071k, false);
        output.writeVarLong(this.f15072p, false);
    }

    public CheatSafeLong(long j, long j2) {
        this.f15071k = -j2;
        set(j);
    }

    public void add(long j) {
        if (get() >= 0 && j >= 0 && get() + j < 0) {
            j = Long.MAX_VALUE - get();
        }
        set(get() + j);
    }

    public long get() {
        if (m19854a()) {
            long j = -this.f15071k;
            set(j);
            return j;
        }
        return this.f15072p;
    }
}
