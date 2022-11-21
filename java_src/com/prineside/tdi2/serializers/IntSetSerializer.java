package com.prineside.tdi2.serializers;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.IntSet;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.PMath;
/* loaded from: classes2.dex */
public class IntSetSerializer extends Serializer<IntSet> {
    public static PMath.ClassComparator CLASS_COMPARATOR = new PMath.ClassComparator<IntSet>() { // from class: com.prineside.tdi2.serializers.IntSetSerializer.1
        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public /* bridge */ /* synthetic */ void compare(IntSet intSet, IntSet intSet2, StringBuilder stringBuilder, Array array, int i, IntIntMap intIntMap, boolean z) {
            compare2(intSet, intSet2, stringBuilder, (Array<String>) array, i, intIntMap, z);
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public Class<IntSet> forClass() {
            return IntSet.class;
        }

        /* renamed from: compare  reason: avoid collision after fix types in other method */
        public void compare2(IntSet intSet, IntSet intSet2, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z) {
            if (intSet.size != intSet2.size) {
                for (int i2 = 0; i2 < array.size; i2++) {
                    stringBuilder.append(array.items[i2]);
                }
                stringBuilder.append(": sizes do not match").append(intSet.size).append(" != ").append(intSet2.size).append("\n");
            }
            IntSet.IntSetIterator it = intSet.iterator();
            while (it.hasNext) {
                int next = it.next();
                if (!intSet2.contains(next)) {
                    for (int i3 = 0; i3 < array.size; i3++) {
                        stringBuilder.append(array.items[i3]);
                    }
                    stringBuilder.append("[").append(next).append("]: key not exists\n");
                }
            }
        }
    };

    /* renamed from: c */
    public static final IntArray f11254c = new IntArray();

    @Override // com.esotericsoftware.kryo.Serializer
    public IntSet copy(Kryo kryo, IntSet intSet) {
        IntSet intSet2 = new IntSet(intSet.size);
        intSet2.addAll(intSet);
        return intSet2;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.esotericsoftware.kryo.Serializer
    public IntSet read(Kryo kryo, Input input, Class<? extends IntSet> cls) {
        int readVarInt = input.readVarInt(true);
        IntSet intSet = new IntSet(readVarInt);
        kryo.reference(intSet);
        for (int i = 0; i < readVarInt; i++) {
            intSet.add(input.readInt());
        }
        return intSet;
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, IntSet intSet) {
        output.writeVarInt(intSet.size, true);
        IntSet.IntSetIterator it = intSet.iterator();
        f11254c.clear();
        while (it.hasNext) {
            f11254c.add(it.next());
        }
        f11254c.sort();
        int i = 0;
        while (true) {
            IntArray intArray = f11254c;
            if (i >= intArray.size) {
                return;
            }
            output.writeInt(intArray.items[i]);
            i++;
        }
    }
}
