package com.prineside.tdi2.serializers;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.PMath;
import net.bytebuddy.description.type.TypeDescription;
/* loaded from: classes2.dex */
public class ArraySerializer<T extends Array> extends Serializer<T> {
    public static PMath.ClassComparator CLASS_COMPARATOR = new PMath.ClassComparator<Array>() { // from class: com.prineside.tdi2.serializers.ArraySerializer.1
        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public /* bridge */ /* synthetic */ void compare(Array array, Array array2, StringBuilder stringBuilder, Array array3, int i, IntIntMap intIntMap, boolean z) {
            compare2(array, array2, stringBuilder, (Array<String>) array3, i, intIntMap, z);
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public Class<Array> forClass() {
            return Array.class;
        }

        /* renamed from: compare  reason: avoid collision after fix types in other method */
        public void compare2(Array array, Array array2, StringBuilder stringBuilder, Array<String> array3, int i, IntIntMap intIntMap, boolean z) {
            String name;
            if (array.size != array2.size) {
                for (int i2 = 0; i2 < array3.size; i2++) {
                    stringBuilder.append(array3.items[i2]);
                }
                stringBuilder.append(": sizes differ (").append(array.size).append(", ").append(array2.size).append(")\n");
                return;
            }
            for (int i3 = 0; i3 < array.size; i3++) {
                if (array.get(i3) != null) {
                    name = array.get(i3).getClass().getName();
                } else {
                    name = array2.get(i3) != null ? array2.get(i3).getClass().getName() : TypeDescription.Generic.OfWildcardType.SYMBOL;
                }
                array3.add("[");
                array3.add(PMath.toString(i3));
                array3.add(" ");
                array3.add(name);
                array3.add("]");
                PMath.compareObjects(array.get(i3), array2.get(i3), stringBuilder, array3, i - 1, intIntMap, z);
                for (int i4 = 0; i4 < 5; i4++) {
                    array3.pop();
                }
            }
        }
    };

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.esotericsoftware.kryo.Serializer
    public /* bridge */ /* synthetic */ void write(Kryo kryo, Output output, Object obj) {
        write(kryo, output, (Output) ((Array) obj));
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public T read(Kryo kryo, Input input, Class<? extends T> cls) {
        try {
            int readInt = input.readInt(true);
            boolean readBoolean = input.readBoolean();
            T newInstance = cls.getConstructor(Boolean.TYPE, Integer.TYPE, Class.class).newInstance(Boolean.valueOf(readBoolean), Integer.valueOf(readInt), kryo.readClass(input).getType());
            kryo.reference(newInstance);
            newInstance.ensureCapacity(readInt);
            for (int i = 0; i < readInt; i++) {
                newInstance.add(kryo.readClassAndObject(input));
            }
            return newInstance;
        } catch (Exception e) {
            throw new IllegalStateException("Can't create object instance", e);
        }
    }

    public void write(Kryo kryo, Output output, T t) {
        output.writeInt(t.size, true);
        output.writeBoolean(t.ordered);
        kryo.writeClass(output, t.items.getClass().getComponentType());
        for (int i = 0; i < t.size; i++) {
            kryo.writeClassAndObject(output, t.items[i]);
        }
    }

    public ArraySerializer() {
        setAcceptsNull(true);
    }
}
