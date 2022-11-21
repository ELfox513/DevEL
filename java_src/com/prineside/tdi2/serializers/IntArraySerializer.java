package com.prineside.tdi2.serializers;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.PMath;
/* loaded from: classes2.dex */
public class IntArraySerializer extends Serializer<IntArray> {
    public static PMath.ClassComparator CLASS_COMPARATOR = new PMath.ClassComparator<IntArray>() { // from class: com.prineside.tdi2.serializers.IntArraySerializer.1
        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public /* bridge */ /* synthetic */ void compare(IntArray intArray, IntArray intArray2, StringBuilder stringBuilder, Array array, int i, IntIntMap intIntMap, boolean z) {
            compare2(intArray, intArray2, stringBuilder, (Array<String>) array, i, intIntMap, z);
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public Class<IntArray> forClass() {
            return IntArray.class;
        }

        /* renamed from: compare  reason: avoid collision after fix types in other method */
        public void compare2(IntArray intArray, IntArray intArray2, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z) {
            if (intArray.size != intArray2.size) {
                for (int i2 = 0; i2 < array.size; i2++) {
                    stringBuilder.append(array.items[i2]);
                }
                stringBuilder.append(": sizes differ (").append(intArray.size).append(", ").append(intArray2.size).append(")\n");
                return;
            }
            for (int i3 = 0; i3 < intArray.size; i3++) {
                array.addAll("[", PMath.toString(i3), "]");
                PMath.compareObjects(Integer.valueOf(intArray.get(i3)), Integer.valueOf(intArray2.get(i3)), stringBuilder, array, i - 1, intIntMap, z);
                for (int i4 = 0; i4 < 3; i4++) {
                    array.pop();
                }
            }
        }
    };

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.esotericsoftware.kryo.Serializer
    public IntArray read(Kryo kryo, Input input, Class<? extends IntArray> cls) {
        try {
            IntArray intArray = new IntArray();
            kryo.reference(intArray);
            int readInt = input.readInt(true);
            intArray.ensureCapacity(readInt);
            for (int i = 0; i < readInt; i++) {
                intArray.add(input.readVarInt(false));
            }
            return intArray;
        } catch (Exception e) {
            throw new IllegalStateException("Can't create object instance", e);
        }
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, IntArray intArray) {
        int i = intArray.size;
        output.writeInt(i, true);
        if (i == 0) {
            return;
        }
        for (int i2 = 0; i2 < intArray.size; i2++) {
            output.writeVarInt(intArray.items[i2], false);
        }
    }
}
