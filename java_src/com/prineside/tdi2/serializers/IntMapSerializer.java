package com.prineside.tdi2.serializers;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.PMath;
import java.util.Comparator;
import p218x1.C7221i;
/* loaded from: classes2.dex */
public class IntMapSerializer extends Serializer<IntMap> {

    /* renamed from: c */
    public static final Comparator<IntIntMap.Entry> f11253c = new Comparator<IntIntMap.Entry>() { // from class: com.prineside.tdi2.serializers.IntMapSerializer.1
        @Override // java.util.Comparator
        public int compare(IntIntMap.Entry entry, IntIntMap.Entry entry2) {
            return C7221i.m2085a(entry.key, entry2.key);
        }
    };
    public static PMath.ClassComparator CLASS_COMPARATOR = new PMath.ClassComparator<IntMap>() { // from class: com.prineside.tdi2.serializers.IntMapSerializer.2
        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public /* bridge */ /* synthetic */ void compare(IntMap intMap, IntMap intMap2, StringBuilder stringBuilder, Array array, int i, IntIntMap intIntMap, boolean z) {
            compare2(intMap, intMap2, stringBuilder, (Array<String>) array, i, intIntMap, z);
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public Class<IntMap> forClass() {
            return IntMap.class;
        }

        /* renamed from: compare  reason: avoid collision after fix types in other method */
        public void compare2(IntMap intMap, IntMap intMap2, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z) {
            if (intMap.size != intMap2.size) {
                for (int i2 = 0; i2 < array.size; i2++) {
                    stringBuilder.append(array.items[i2]);
                }
                stringBuilder.append(": sizes do not match").append(intMap.size).append(" != ").append(intMap2.size).append("\n");
            }
            IntMap.Keys keys = intMap.keys();
            while (keys.hasNext) {
                int next = keys.next();
                if (!intMap2.containsKey(next)) {
                    for (int i3 = 0; i3 < array.size; i3++) {
                        stringBuilder.append(array.items[i3]);
                    }
                    stringBuilder.append("[").append(next).append("]: key not exists (object: ").append(intMap.get(next).getClass().getName()).append(")\n");
                } else {
                    Object obj = intMap.get(next);
                    Object obj2 = intMap2.get(next);
                    array.add("[");
                    array.add(PMath.toString(next));
                    array.add(" ");
                    array.add(obj.getClass().getName());
                    array.add("]");
                    PMath.compareObjects(obj, obj2, stringBuilder, array, i - 1, intIntMap, z);
                    for (int i4 = 0; i4 < 5; i4++) {
                        array.pop();
                    }
                }
            }
        }
    };

    @Override // com.esotericsoftware.kryo.Serializer
    public IntMap copy(Kryo kryo, IntMap intMap) {
        IntMap intMap2 = new IntMap(intMap.size);
        kryo.reference(intMap2);
        intMap2.putAll(intMap);
        return intMap2;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.esotericsoftware.kryo.Serializer
    public IntMap read(Kryo kryo, Input input, Class<? extends IntMap> cls) {
        int readVarInt = input.readVarInt(true);
        IntMap intMap = new IntMap(readVarInt);
        kryo.reference(intMap);
        for (int i = 0; i < readVarInt; i++) {
            intMap.put(input.readInt(), kryo.readClassAndObject(input));
        }
        return intMap;
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, IntMap intMap) {
        output.writeVarInt(intMap.size, true);
        IntMap.Keys keys = intMap.keys();
        while (keys.hasNext) {
            int next = keys.next();
            output.writeInt(next);
            kryo.writeClassAndObject(output, intMap.get(next));
        }
    }
}
