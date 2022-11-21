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
public class CheatSafeInt implements KryoSerializable {
    public static PMath.ClassComparator CLASS_COMPARATOR = new PMath.ClassComparator<CheatSafeInt>() { // from class: com.prineside.tdi2.utils.CheatSafeInt.1
        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public /* bridge */ /* synthetic */ void compare(CheatSafeInt cheatSafeInt, CheatSafeInt cheatSafeInt2, StringBuilder stringBuilder, Array array, int i, IntIntMap intIntMap, boolean z) {
            compare2(cheatSafeInt, cheatSafeInt2, stringBuilder, (Array<String>) array, i, intIntMap, z);
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public Class<CheatSafeInt> forClass() {
            return CheatSafeInt.class;
        }

        /* renamed from: compare  reason: avoid collision after fix types in other method */
        public void compare2(CheatSafeInt cheatSafeInt, CheatSafeInt cheatSafeInt2, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z) {
            if (cheatSafeInt.get() != cheatSafeInt2.get()) {
                for (int i2 = 0; i2 < array.size; i2++) {
                    stringBuilder.append(array.items[i2]);
                }
                stringBuilder.append(": ").append(cheatSafeInt.get()).append(" != ").append(cheatSafeInt2.get()).append("\n");
            }
        }
    };

    /* renamed from: a */
    public int f15063a;

    /* renamed from: b */
    public int f15064b;

    /* renamed from: d */
    public int f15065d;

    /* renamed from: k */
    public int f15066k;

    /* renamed from: p */
    public int f15067p;

    public CheatSafeInt() {
    }

    /* renamed from: a */
    public final boolean m19855a() {
        return ((((this.f15067p * 31) + this.f15063a) * 31) + this.f15064b) + hashCode() != this.f15065d;
    }

    public int getSetOnCheat() {
        return -this.f15066k;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f15066k = input.readVarInt(false);
        set(input.readVarInt(false));
    }

    public void sub(int i) {
        set(get() - i);
    }

    public String toString() {
        return PMath.toString(get());
    }

    public void set(int i) {
        this.f15067p = i;
        this.f15063a = FastRandom.getInt(8192);
        int i2 = FastRandom.getInt(8192);
        this.f15064b = i2;
        this.f15065d = (((this.f15067p * 31) + this.f15063a) * 31) + i2 + hashCode();
        if (m19855a()) {
            Logger.error("CheatSafeInt", "invalid on " + i);
        }
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        output.writeVarInt(this.f15066k, false);
        output.writeVarInt(this.f15067p, false);
    }

    public CheatSafeInt(int i, int i2) {
        this.f15066k = -i2;
        set(i);
    }

    public void add(int i) {
        if (get() >= 0 && i >= 0 && get() + i < 0) {
            i = Integer.MAX_VALUE - get();
        }
        set(get() + i);
    }

    public int get() {
        if (m19855a()) {
            int i = -this.f15066k;
            set(i);
            return i;
        }
        return this.f15067p;
    }
}
