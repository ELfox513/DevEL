package com.prineside.tdi2.serializers;

import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.utils.PMath;
/* loaded from: classes2.dex */
public class RectangleSerializer extends Serializer<Rectangle> {
    public static PMath.ClassComparator CLASS_COMPARATOR = new PMath.ClassComparator<Rectangle>() { // from class: com.prineside.tdi2.serializers.RectangleSerializer.1
        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public /* bridge */ /* synthetic */ void compare(Rectangle rectangle, Rectangle rectangle2, StringBuilder stringBuilder, Array array, int i, IntIntMap intIntMap, boolean z) {
            compare2(rectangle, rectangle2, stringBuilder, (Array<String>) array, i, intIntMap, z);
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public Class<Rectangle> forClass() {
            return Rectangle.class;
        }

        /* renamed from: compare  reason: avoid collision after fix types in other method */
        public void compare2(Rectangle rectangle, Rectangle rectangle2, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z) {
            if (rectangle.f5523x == rectangle2.f5523x && rectangle.f5524y == rectangle2.f5524y && rectangle.width == rectangle2.width && rectangle.height == rectangle2.height) {
                return;
            }
            for (int i2 = 0; i2 < array.size; i2++) {
                stringBuilder.append(array.items[i2]);
            }
            if (rectangle.f5523x != rectangle2.f5523x) {
                stringBuilder.append(".x: ").append(rectangle.f5523x).append(" != ").append(rectangle2.f5523x).append("\n");
            }
            if (rectangle.f5524y != rectangle2.f5524y) {
                stringBuilder.append(".y: ").append(rectangle.f5524y).append(" != ").append(rectangle2.f5524y).append("\n");
            }
            if (rectangle.width != rectangle2.width) {
                stringBuilder.append(".width: ").append(rectangle.width).append(" != ").append(rectangle2.width).append("\n");
            }
            if (rectangle.height != rectangle2.height) {
                stringBuilder.append(".height: ").append(rectangle.height).append(" != ").append(rectangle2.height).append("\n");
            }
        }
    };

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.esotericsoftware.kryo.Serializer
    public Rectangle read(Kryo kryo, Input input, Class<? extends Rectangle> cls) {
        return new Rectangle(input.readFloat(), input.readFloat(), input.readFloat(), input.readFloat());
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, Rectangle rectangle) {
        output.writeFloat(rectangle.f5523x);
        output.writeFloat(rectangle.f5524y);
        output.writeFloat(rectangle.width);
        output.writeFloat(rectangle.height);
    }

    public RectangleSerializer() {
        setAcceptsNull(true);
    }
}
