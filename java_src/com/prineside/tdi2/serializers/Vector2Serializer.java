package com.prineside.tdi2.serializers;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.PMath;
/* loaded from: classes2.dex */
public class Vector2Serializer extends Serializer<Vector2> {
    public static PMath.ClassComparator CLASS_COMPARATOR = new PMath.ClassComparator<Vector2>() { // from class: com.prineside.tdi2.serializers.Vector2Serializer.1
        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public /* bridge */ /* synthetic */ void compare(Vector2 vector2, Vector2 vector22, StringBuilder stringBuilder, Array array, int i, IntIntMap intIntMap, boolean z) {
            compare2(vector2, vector22, stringBuilder, (Array<String>) array, i, intIntMap, z);
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public Class<Vector2> forClass() {
            return Vector2.class;
        }

        /* renamed from: compare  reason: avoid collision after fix types in other method */
        public void compare2(Vector2 vector2, Vector2 vector22, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z) {
            if (vector2.f5527x == vector22.f5527x && vector2.f5528y == vector22.f5528y) {
                return;
            }
            for (int i2 = 0; i2 < array.size; i2++) {
                stringBuilder.append(array.items[i2]);
            }
            if (vector2.f5527x != vector22.f5527x) {
                stringBuilder.append(".x: ").append(vector2.f5527x).append(" != ").append(vector22.f5527x).append("\n");
            }
            if (vector2.f5528y != vector22.f5528y) {
                stringBuilder.append(".y: ").append(vector2.f5528y).append(" != ").append(vector22.f5528y).append("\n");
            }
        }
    };

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.esotericsoftware.kryo.Serializer
    public Vector2 read(Kryo kryo, Input input, Class<? extends Vector2> cls) {
        return new Vector2(input.readFloat(), input.readFloat());
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, Vector2 vector2) {
        output.writeFloat(vector2.f5527x);
        output.writeFloat(vector2.f5528y);
    }

    public Vector2Serializer() {
        setAcceptsNull(true);
    }
}
