package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import com.esotericsoftware.kryo.unsafe.UnsafeUtil;
import com.esotericsoftware.kryo.util.Generics;
import java.lang.reflect.Field;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class UnsafeField extends ReflectField {

    /* loaded from: classes.dex */
    public static final class IntUnsafeField extends FieldSerializer.CachedField {
        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            Unsafe unsafe = UnsafeUtil.unsafe;
            long j = this.f7337k;
            unsafe.putInt(obj2, j, unsafe.getInt(obj, j));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            if (this.f7332f) {
                UnsafeUtil.unsafe.putInt(obj, this.f7337k, input.readVarInt(false));
            } else {
                UnsafeUtil.unsafe.putInt(obj, this.f7337k, input.readInt());
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            if (this.f7332f) {
                output.writeVarInt(UnsafeUtil.unsafe.getInt(obj, this.f7337k), false);
            } else {
                output.writeInt(UnsafeUtil.unsafe.getInt(obj, this.f7337k));
            }
        }

        public IntUnsafeField(Field field) {
            super(field);
            this.f7337k = UnsafeUtil.unsafe.objectFieldOffset(field);
        }
    }

    /* loaded from: classes.dex */
    public static final class LongUnsafeField extends FieldSerializer.CachedField {
        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            Unsafe unsafe = UnsafeUtil.unsafe;
            long j = this.f7337k;
            unsafe.putLong(obj2, j, unsafe.getLong(obj, j));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            if (this.f7332f) {
                UnsafeUtil.unsafe.putLong(obj, this.f7337k, input.readVarLong(false));
            } else {
                UnsafeUtil.unsafe.putLong(obj, this.f7337k, input.readLong());
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            if (this.f7332f) {
                output.writeVarLong(UnsafeUtil.unsafe.getLong(obj, this.f7337k), false);
            } else {
                output.writeLong(UnsafeUtil.unsafe.getLong(obj, this.f7337k));
            }
        }

        public LongUnsafeField(Field field) {
            super(field);
            this.f7337k = UnsafeUtil.unsafe.objectFieldOffset(field);
        }
    }

    @Override // com.esotericsoftware.kryo.serializers.ReflectField
    public Object get(Object obj) {
        return UnsafeUtil.unsafe.getObject(obj, this.f7337k);
    }

    @Override // com.esotericsoftware.kryo.serializers.ReflectField
    public void set(Object obj, Object obj2) {
        UnsafeUtil.unsafe.putObject(obj, this.f7337k, obj2);
    }

    /* loaded from: classes.dex */
    public static final class BooleanUnsafeField extends FieldSerializer.CachedField {
        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            Unsafe unsafe = UnsafeUtil.unsafe;
            long j = this.f7337k;
            unsafe.putBoolean(obj2, j, unsafe.getBoolean(obj, j));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            UnsafeUtil.unsafe.putBoolean(obj, this.f7337k, input.readBoolean());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            output.writeBoolean(UnsafeUtil.unsafe.getBoolean(obj, this.f7337k));
        }

        public BooleanUnsafeField(Field field) {
            super(field);
            this.f7337k = UnsafeUtil.unsafe.objectFieldOffset(field);
        }
    }

    /* loaded from: classes.dex */
    public static final class ByteUnsafeField extends FieldSerializer.CachedField {
        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            Unsafe unsafe = UnsafeUtil.unsafe;
            long j = this.f7337k;
            unsafe.putByte(obj2, j, unsafe.getByte(obj, j));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            UnsafeUtil.unsafe.putByte(obj, this.f7337k, input.readByte());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            output.writeByte(UnsafeUtil.unsafe.getByte(obj, this.f7337k));
        }

        public ByteUnsafeField(Field field) {
            super(field);
            this.f7337k = UnsafeUtil.unsafe.objectFieldOffset(field);
        }
    }

    /* loaded from: classes.dex */
    public static final class CharUnsafeField extends FieldSerializer.CachedField {
        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            Unsafe unsafe = UnsafeUtil.unsafe;
            long j = this.f7337k;
            unsafe.putChar(obj2, j, unsafe.getChar(obj, j));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            UnsafeUtil.unsafe.putChar(obj, this.f7337k, input.readChar());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            output.writeChar(UnsafeUtil.unsafe.getChar(obj, this.f7337k));
        }

        public CharUnsafeField(Field field) {
            super(field);
            this.f7337k = UnsafeUtil.unsafe.objectFieldOffset(field);
        }
    }

    /* loaded from: classes.dex */
    public static final class DoubleUnsafeField extends FieldSerializer.CachedField {
        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            Unsafe unsafe = UnsafeUtil.unsafe;
            long j = this.f7337k;
            unsafe.putDouble(obj2, j, unsafe.getDouble(obj, j));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            UnsafeUtil.unsafe.putDouble(obj, this.f7337k, input.readDouble());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            output.writeDouble(UnsafeUtil.unsafe.getDouble(obj, this.f7337k));
        }

        public DoubleUnsafeField(Field field) {
            super(field);
            this.f7337k = UnsafeUtil.unsafe.objectFieldOffset(field);
        }
    }

    /* loaded from: classes.dex */
    public static final class FloatUnsafeField extends FieldSerializer.CachedField {
        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            Unsafe unsafe = UnsafeUtil.unsafe;
            long j = this.f7337k;
            unsafe.putFloat(obj2, j, unsafe.getFloat(obj, j));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            UnsafeUtil.unsafe.putFloat(obj, this.f7337k, input.readFloat());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            output.writeFloat(UnsafeUtil.unsafe.getFloat(obj, this.f7337k));
        }

        public FloatUnsafeField(Field field) {
            super(field);
            this.f7337k = UnsafeUtil.unsafe.objectFieldOffset(field);
        }
    }

    /* loaded from: classes.dex */
    public static final class ShortUnsafeField extends FieldSerializer.CachedField {
        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            Unsafe unsafe = UnsafeUtil.unsafe;
            long j = this.f7337k;
            unsafe.putShort(obj2, j, unsafe.getShort(obj, j));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            UnsafeUtil.unsafe.putShort(obj, this.f7337k, input.readShort());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            output.writeShort(UnsafeUtil.unsafe.getShort(obj, this.f7337k));
        }

        public ShortUnsafeField(Field field) {
            super(field);
            this.f7337k = UnsafeUtil.unsafe.objectFieldOffset(field);
        }
    }

    /* loaded from: classes.dex */
    public static final class StringUnsafeField extends FieldSerializer.CachedField {
        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            Unsafe unsafe = UnsafeUtil.unsafe;
            long j = this.f7337k;
            unsafe.putObject(obj2, j, unsafe.getObject(obj, j));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            UnsafeUtil.unsafe.putObject(obj, this.f7337k, input.readString());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            output.writeString((String) UnsafeUtil.unsafe.getObject(obj, this.f7337k));
        }

        public StringUnsafeField(Field field) {
            super(field);
            this.f7337k = UnsafeUtil.unsafe.objectFieldOffset(field);
        }
    }

    @Override // com.esotericsoftware.kryo.serializers.ReflectField, com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
    public void copy(Object obj, Object obj2) {
        try {
            Unsafe unsafe = UnsafeUtil.unsafe;
            long j = this.f7337k;
            unsafe.putObject(obj2, j, this.f7362m.f7322c.copy(unsafe.getObject(obj, j)));
        } catch (KryoException e) {
            e.addTrace(this + " (" + this.f7362m.f7323d.getName() + ")");
            throw e;
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.addTrace(this + " (" + this.f7362m.f7323d.getName() + ")");
            throw kryoException;
        }
    }

    public UnsafeField(Field field, FieldSerializer fieldSerializer, Generics.GenericType genericType) {
        super(field, fieldSerializer, genericType);
        this.f7337k = UnsafeUtil.unsafe.objectFieldOffset(field);
    }
}
