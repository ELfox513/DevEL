package com.prineside.tdi2.serializers;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntFloatMap;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.PMath;
import java.util.Comparator;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class IntFloatMapSerializer extends Serializer<IntFloatMap> {

    /* renamed from: c */
    public static final Array<IntFloatMap.Entry> f11247c = new Array<>(IntFloatMap.Entry.class);

    /* renamed from: d */
    public static final Pool<IntFloatMap.Entry> f11248d = new Pool<IntFloatMap.Entry>() { // from class: com.prineside.tdi2.serializers.IntFloatMapSerializer.1
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public IntFloatMap.Entry newObject() {
            return new IntFloatMap.Entry();
        }
    };

    /* renamed from: e */
    public static final Comparator<IntFloatMap.Entry> f11249e = new Comparator<IntFloatMap.Entry>() { // from class: com.prineside.tdi2.serializers.IntFloatMapSerializer.2
        @Override // java.util.Comparator
        public int compare(IntFloatMap.Entry entry, IntFloatMap.Entry entry2) {
            return Float.compare(entry.key, entry2.key);
        }
    };
    public static PMath.ClassComparator CLASS_COMPARATOR = new PMath.ClassComparator<IntFloatMap>() { // from class: com.prineside.tdi2.serializers.IntFloatMapSerializer.3
        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public /* bridge */ /* synthetic */ void compare(IntFloatMap intFloatMap, IntFloatMap intFloatMap2, StringBuilder stringBuilder, Array array, int i, IntIntMap intIntMap, boolean z) {
            compare2(intFloatMap, intFloatMap2, stringBuilder, (Array<String>) array, i, intIntMap, z);
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public Class<IntFloatMap> forClass() {
            return IntFloatMap.class;
        }

        /* renamed from: compare  reason: avoid collision after fix types in other method */
        public void compare2(IntFloatMap intFloatMap, IntFloatMap intFloatMap2, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z) {
            if (intFloatMap.size != intFloatMap2.size) {
                for (int i2 = 0; i2 < array.size; i2++) {
                    stringBuilder.append(array.items[i2]);
                }
                stringBuilder.append(": sizes do not match").append(intFloatMap.size).append(" != ").append(intFloatMap2.size).append("\n");
            }
            Iterator<IntFloatMap.Entry> it = intFloatMap.iterator();
            while (it.hasNext()) {
                IntFloatMap.Entry next = it.next();
                if (!intFloatMap2.containsKey(next.key)) {
                    for (int i3 = 0; i3 < array.size; i3++) {
                        stringBuilder.append(array.items[i3]);
                    }
                    stringBuilder.append("[").append(next.key).append("]: key not exists\n");
                } else if (next.value != intFloatMap2.get(next.key, 0.0f)) {
                    for (int i4 = 0; i4 < array.size; i4++) {
                        stringBuilder.append(array.items[i4]);
                    }
                    stringBuilder.append("[").append(next.key).append("]: ").append(next.value).append(" != ").append(intFloatMap2.get(next.key, 0.0f)).append("\n");
                }
            }
        }
    };

    @Override // com.esotericsoftware.kryo.Serializer
    public IntFloatMap copy(Kryo kryo, IntFloatMap intFloatMap) {
        IntFloatMap intFloatMap2 = new IntFloatMap(intFloatMap.size);
        kryo.reference(intFloatMap2);
        intFloatMap2.putAll(intFloatMap);
        return intFloatMap2;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.esotericsoftware.kryo.Serializer
    public IntFloatMap read(Kryo kryo, Input input, Class<? extends IntFloatMap> cls) {
        int readVarInt = input.readVarInt(true);
        IntFloatMap intFloatMap = new IntFloatMap(readVarInt);
        kryo.reference(intFloatMap);
        for (int i = 0; i < readVarInt; i++) {
            intFloatMap.put(input.readInt(), input.readFloat());
        }
        return intFloatMap;
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, IntFloatMap intFloatMap) {
        Array<IntFloatMap.Entry> array;
        output.writeVarInt(intFloatMap.size, true);
        int i = 0;
        int i2 = 0;
        while (true) {
            array = f11247c;
            if (i2 >= array.size) {
                break;
            }
            IntFloatMap.Entry entry = array.items[i2];
            if (entry != null) {
                f11248d.free(entry);
            }
            i2++;
        }
        array.clear();
        Iterator<IntFloatMap.Entry> it = intFloatMap.iterator();
        while (it.hasNext()) {
            IntFloatMap.Entry next = it.next();
            IntFloatMap.Entry obtain = f11248d.obtain();
            obtain.key = next.key;
            obtain.value = next.value;
            f11247c.add(obtain);
        }
        f11247c.sort(f11249e);
        while (true) {
            Array<IntFloatMap.Entry> array2 = f11247c;
            if (i >= array2.size) {
                return;
            }
            IntFloatMap.Entry entry2 = array2.items[i];
            output.writeInt(entry2.key);
            output.writeFloat(entry2.value);
            i++;
        }
    }
}
