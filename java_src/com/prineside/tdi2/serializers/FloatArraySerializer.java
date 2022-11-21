package com.prineside.tdi2.serializers;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.FloatArray;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.PMath;
/* loaded from: classes2.dex */
public class FloatArraySerializer extends Serializer<FloatArray> {
    public static PMath.ClassComparator CLASS_COMPARATOR = new PMath.ClassComparator<FloatArray>() { // from class: com.prineside.tdi2.serializers.FloatArraySerializer.1
        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public /* bridge */ /* synthetic */ void compare(FloatArray floatArray, FloatArray floatArray2, StringBuilder stringBuilder, Array array, int i, IntIntMap intIntMap, boolean z) {
            compare2(floatArray, floatArray2, stringBuilder, (Array<String>) array, i, intIntMap, z);
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public Class<FloatArray> forClass() {
            return FloatArray.class;
        }

        /* renamed from: compare  reason: avoid collision after fix types in other method */
        public void compare2(FloatArray floatArray, FloatArray floatArray2, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z) {
            if (floatArray.size != floatArray2.size) {
                for (int i2 = 0; i2 < array.size; i2++) {
                    stringBuilder.append(array.items[i2]);
                }
                stringBuilder.append(": sizes differ (").append(floatArray.size).append(", ").append(floatArray2.size).append(")\n");
                return;
            }
            for (int i3 = 0; i3 < floatArray.size; i3++) {
                array.addAll("[", PMath.toString(i3), "]");
                PMath.compareObjects(Float.valueOf(floatArray.get(i3)), Float.valueOf(floatArray2.get(i3)), stringBuilder, array, i - 1, intIntMap, z);
                for (int i4 = 0; i4 < 3; i4++) {
                    array.pop();
                }
            }
        }
    };

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.esotericsoftware.kryo.Serializer
    public FloatArray read(Kryo kryo, Input input, Class<? extends FloatArray> cls) {
        try {
            boolean readBoolean = input.readBoolean();
            int readInt = input.readInt(true);
            FloatArray floatArray = new FloatArray(readBoolean, readInt);
            kryo.reference(floatArray);
            floatArray.ensureCapacity(readInt);
            for (int i = 0; i < readInt; i++) {
                floatArray.add(input.readFloat());
            }
            return floatArray;
        } catch (Exception e) {
            throw new IllegalStateException("Can't create object instance", e);
        }
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, FloatArray floatArray) {
        int i = floatArray.size;
        output.writeBoolean(floatArray.ordered);
        output.writeInt(i, true);
        if (i == 0) {
            return;
        }
        for (int i2 = 0; i2 < floatArray.size; i2++) {
            output.writeFloat(floatArray.items[i2]);
        }
    }
}
