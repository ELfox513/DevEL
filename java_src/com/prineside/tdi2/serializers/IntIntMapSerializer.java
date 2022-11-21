package com.prineside.tdi2.serializers;

import com.badlogic.gdx.utils.Array;
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
import p218x1.C7221i;
/* loaded from: classes2.dex */
public class IntIntMapSerializer extends Serializer<IntIntMap> {

    /* renamed from: c */
    public static final Array<IntIntMap.Entry> f11250c = new Array<>(IntIntMap.Entry.class);

    /* renamed from: d */
    public static final Pool<IntIntMap.Entry> f11251d = new Pool<IntIntMap.Entry>() { // from class: com.prineside.tdi2.serializers.IntIntMapSerializer.1
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public IntIntMap.Entry newObject() {
            return new IntIntMap.Entry();
        }
    };

    /* renamed from: e */
    public static final Comparator<IntIntMap.Entry> f11252e = new Comparator<IntIntMap.Entry>() { // from class: com.prineside.tdi2.serializers.IntIntMapSerializer.2
        @Override // java.util.Comparator
        public int compare(IntIntMap.Entry entry, IntIntMap.Entry entry2) {
            return C7221i.m2085a(entry.key, entry2.key);
        }
    };
    public static PMath.ClassComparator CLASS_COMPARATOR = new PMath.ClassComparator<IntIntMap>() { // from class: com.prineside.tdi2.serializers.IntIntMapSerializer.3
        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public /* bridge */ /* synthetic */ void compare(IntIntMap intIntMap, IntIntMap intIntMap2, StringBuilder stringBuilder, Array array, int i, IntIntMap intIntMap3, boolean z) {
            compare2(intIntMap, intIntMap2, stringBuilder, (Array<String>) array, i, intIntMap3, z);
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public Class<IntIntMap> forClass() {
            return IntIntMap.class;
        }

        /* renamed from: compare  reason: avoid collision after fix types in other method */
        public void compare2(IntIntMap intIntMap, IntIntMap intIntMap2, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap3, boolean z) {
            if (intIntMap.size != intIntMap2.size) {
                for (int i2 = 0; i2 < array.size; i2++) {
                    stringBuilder.append(array.items[i2]);
                }
                stringBuilder.append(": sizes do not match").append(intIntMap.size).append(" != ").append(intIntMap2.size).append("\n");
            }
            Iterator<IntIntMap.Entry> it = intIntMap.iterator();
            while (it.hasNext()) {
                IntIntMap.Entry next = it.next();
                if (!intIntMap2.containsKey(next.key)) {
                    for (int i3 = 0; i3 < array.size; i3++) {
                        stringBuilder.append(array.items[i3]);
                    }
                    stringBuilder.append("[").append(next.key).append("]: key not exists\n");
                } else if (next.value != intIntMap2.get(next.key, 0)) {
                    for (int i4 = 0; i4 < array.size; i4++) {
                        stringBuilder.append(array.items[i4]);
                    }
                    stringBuilder.append("[").append(next.key).append("]: ").append(next.value).append(" != ").append(intIntMap2.get(next.key, 0)).append("\n");
                }
            }
        }
    };

    @Override // com.esotericsoftware.kryo.Serializer
    public IntIntMap copy(Kryo kryo, IntIntMap intIntMap) {
        IntIntMap intIntMap2 = new IntIntMap(intIntMap.size);
        kryo.reference(intIntMap2);
        intIntMap2.putAll(intIntMap);
        return intIntMap2;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.esotericsoftware.kryo.Serializer
    public IntIntMap read(Kryo kryo, Input input, Class<? extends IntIntMap> cls) {
        int readVarInt = input.readVarInt(true);
        IntIntMap intIntMap = new IntIntMap(readVarInt);
        kryo.reference(intIntMap);
        for (int i = 0; i < readVarInt; i++) {
            intIntMap.put(input.readInt(), input.readInt());
        }
        return intIntMap;
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, IntIntMap intIntMap) {
        Array<IntIntMap.Entry> array;
        output.writeVarInt(intIntMap.size, true);
        int i = 0;
        int i2 = 0;
        while (true) {
            array = f11250c;
            if (i2 >= array.size) {
                break;
            }
            IntIntMap.Entry entry = array.items[i2];
            if (entry != null) {
                f11251d.free(entry);
            }
            i2++;
        }
        array.clear();
        Iterator<IntIntMap.Entry> it = intIntMap.iterator();
        while (it.hasNext()) {
            IntIntMap.Entry next = it.next();
            IntIntMap.Entry obtain = f11251d.obtain();
            obtain.key = next.key;
            obtain.value = next.value;
            f11250c.add(obtain);
        }
        f11250c.sort(f11252e);
        while (true) {
            Array<IntIntMap.Entry> array2 = f11250c;
            if (i >= array2.size) {
                return;
            }
            IntIntMap.Entry entry2 = array2.items[i];
            output.writeInt(entry2.key);
            output.writeInt(entry2.value);
            i++;
        }
    }
}
