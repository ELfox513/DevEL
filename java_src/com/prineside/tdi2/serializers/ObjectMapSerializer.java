package com.prineside.tdi2.serializers;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.PMath;
/* loaded from: classes2.dex */
public class ObjectMapSerializer extends Serializer<ObjectMap> {
    public static PMath.ClassComparator CLASS_COMPARATOR = new PMath.ClassComparator<ObjectMap>() { // from class: com.prineside.tdi2.serializers.ObjectMapSerializer.1
        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public /* bridge */ /* synthetic */ void compare(ObjectMap objectMap, ObjectMap objectMap2, StringBuilder stringBuilder, Array array, int i, IntIntMap intIntMap, boolean z) {
            compare2(objectMap, objectMap2, stringBuilder, (Array<String>) array, i, intIntMap, z);
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public Class<ObjectMap> forClass() {
            return ObjectMap.class;
        }

        /* renamed from: compare  reason: avoid collision after fix types in other method */
        public void compare2(ObjectMap objectMap, ObjectMap objectMap2, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z) {
            if (objectMap.size != objectMap2.size) {
                for (int i2 = 0; i2 < array.size; i2++) {
                    stringBuilder.append(array.items[i2]);
                }
                stringBuilder.append(": sizes do not match").append(objectMap.size).append(" != ").append(objectMap2.size).append("\n");
            }
        }
    };

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.esotericsoftware.kryo.Serializer
    public ObjectMap read(Kryo kryo, Input input, Class<? extends ObjectMap> cls) {
        int readVarInt = input.readVarInt(true);
        ObjectMap objectMap = new ObjectMap(readVarInt);
        kryo.reference(objectMap);
        for (int i = 0; i < readVarInt; i++) {
            objectMap.put(kryo.readClassAndObject(input), kryo.readClassAndObject(input));
        }
        return objectMap;
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, ObjectMap objectMap) {
        output.writeVarInt(objectMap.size, true);
        ObjectMap.Keys keys = objectMap.keys();
        while (keys.hasNext) {
            Object next = keys.next();
            kryo.writeClassAndObject(output, next);
            kryo.writeClassAndObject(output, objectMap.get(next));
        }
    }
}
