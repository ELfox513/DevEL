package com.prineside.tdi2.serializers;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.ObjectSet;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.PMath;
/* loaded from: classes2.dex */
public class ObjectSetSerializer extends Serializer<ObjectSet> {
    public static PMath.ClassComparator CLASS_COMPARATOR = new PMath.ClassComparator<ObjectSet>() { // from class: com.prineside.tdi2.serializers.ObjectSetSerializer.1
        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public /* bridge */ /* synthetic */ void compare(ObjectSet objectSet, ObjectSet objectSet2, StringBuilder stringBuilder, Array array, int i, IntIntMap intIntMap, boolean z) {
            compare2(objectSet, objectSet2, stringBuilder, (Array<String>) array, i, intIntMap, z);
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public Class<ObjectSet> forClass() {
            return ObjectSet.class;
        }

        /* renamed from: compare  reason: avoid collision after fix types in other method */
        public void compare2(ObjectSet objectSet, ObjectSet objectSet2, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z) {
            if (objectSet.size != objectSet2.size) {
                for (int i2 = 0; i2 < array.size; i2++) {
                    stringBuilder.append(array.items[i2]);
                }
                stringBuilder.append(": sizes do not match").append(objectSet.size).append(" != ").append(objectSet2.size).append("\n");
            }
            ObjectSet.ObjectSetIterator it = objectSet.iterator();
            while (it.hasNext) {
                Object next = it.next();
                if (next.getClass().isEnum() && !objectSet2.contains(next)) {
                    for (int i3 = 0; i3 < array.size; i3++) {
                        stringBuilder.append(array.items[i3]);
                    }
                    stringBuilder.append("[").append(next).append("]: key not exists\n");
                }
            }
        }
    };

    @Override // com.esotericsoftware.kryo.Serializer
    public ObjectSet copy(Kryo kryo, ObjectSet objectSet) {
        ObjectSet objectSet2 = new ObjectSet(objectSet.size);
        objectSet2.addAll(objectSet);
        return objectSet2;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.esotericsoftware.kryo.Serializer
    public ObjectSet read(Kryo kryo, Input input, Class<? extends ObjectSet> cls) {
        int readVarInt = input.readVarInt(true);
        ObjectSet objectSet = new ObjectSet(readVarInt);
        kryo.reference(objectSet);
        for (int i = 0; i < readVarInt; i++) {
            objectSet.add(kryo.readClassAndObject(input));
        }
        return objectSet;
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, ObjectSet objectSet) {
        output.writeVarInt(objectSet.size, true);
        ObjectSet.ObjectSetIterator it = objectSet.iterator();
        while (it.hasNext) {
            kryo.writeClassAndObject(output, it.next());
        }
    }
}
