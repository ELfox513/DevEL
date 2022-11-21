package com.prineside.tdi2.serializers;

import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.PMath;
/* loaded from: classes2.dex */
public class RandomXS128Serializer extends Serializer<RandomXS128> {
    public static PMath.ClassComparator CLASS_COMPARATOR = new PMath.ClassComparator<RandomXS128>() { // from class: com.prineside.tdi2.serializers.RandomXS128Serializer.1
        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public /* bridge */ /* synthetic */ void compare(RandomXS128 randomXS128, RandomXS128 randomXS1282, StringBuilder stringBuilder, Array array, int i, IntIntMap intIntMap, boolean z) {
            compare2(randomXS128, randomXS1282, stringBuilder, (Array<String>) array, i, intIntMap, z);
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public Class<RandomXS128> forClass() {
            return RandomXS128.class;
        }

        /* renamed from: compare  reason: avoid collision after fix types in other method */
        public void compare2(RandomXS128 randomXS128, RandomXS128 randomXS1282, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z) {
            if (randomXS128.getState(0) != randomXS1282.getState(0)) {
                for (int i2 = 0; i2 < array.size; i2++) {
                    stringBuilder.append(array.items[i2]);
                }
                stringBuilder.append(": seed 0 differ (").append(randomXS128.getState(0)).append(", ").append(randomXS1282.getState(0)).append(")\n");
            } else if (randomXS128.getState(1) != randomXS1282.getState(1)) {
                for (int i3 = 0; i3 < array.size; i3++) {
                    stringBuilder.append(array.items[i3]);
                }
                stringBuilder.append(": seed 1 differ (").append(randomXS128.getState(1)).append(", ").append(randomXS1282.getState(1)).append(")\n");
            }
        }
    };

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.esotericsoftware.kryo.Serializer
    public RandomXS128 read(Kryo kryo, Input input, Class<? extends RandomXS128> cls) {
        RandomXS128 randomXS128 = new RandomXS128(input.readLong(), input.readLong());
        kryo.reference(randomXS128);
        return randomXS128;
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, RandomXS128 randomXS128) {
        output.writeLong(randomXS128.getState(0));
        output.writeLong(randomXS128.getState(1));
    }

    public RandomXS128Serializer() {
        setAcceptsNull(true);
    }
}
