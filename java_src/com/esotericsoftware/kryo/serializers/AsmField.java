package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import com.esotericsoftware.kryo.util.Generics;
import com.esotericsoftware.reflectasm.FieldAccess;
import java.lang.reflect.Field;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AsmField extends ReflectField {

    /* loaded from: classes.dex */
    public static final class BooleanAsmField extends FieldSerializer.CachedField {
        public BooleanAsmField(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            FieldAccess fieldAccess = this.f7335i;
            int i = this.f7336j;
            fieldAccess.setBoolean(obj2, i, fieldAccess.getBoolean(obj, i));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            this.f7335i.setBoolean(obj, this.f7336j, input.readBoolean());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            output.writeBoolean(this.f7335i.getBoolean(obj, this.f7336j));
        }
    }

    /* loaded from: classes.dex */
    public static final class ByteAsmField extends FieldSerializer.CachedField {
        public ByteAsmField(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            FieldAccess fieldAccess = this.f7335i;
            int i = this.f7336j;
            fieldAccess.setByte(obj2, i, fieldAccess.getByte(obj, i));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            this.f7335i.setByte(obj, this.f7336j, input.readByte());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            output.writeByte(this.f7335i.getByte(obj, this.f7336j));
        }
    }

    /* loaded from: classes.dex */
    public static final class CharAsmField extends FieldSerializer.CachedField {
        public CharAsmField(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            FieldAccess fieldAccess = this.f7335i;
            int i = this.f7336j;
            fieldAccess.setChar(obj2, i, fieldAccess.getChar(obj, i));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            this.f7335i.setChar(obj, this.f7336j, input.readChar());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            output.writeChar(this.f7335i.getChar(obj, this.f7336j));
        }
    }

    /* loaded from: classes.dex */
    public static final class DoubleAsmField extends FieldSerializer.CachedField {
        public DoubleAsmField(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            FieldAccess fieldAccess = this.f7335i;
            int i = this.f7336j;
            fieldAccess.setDouble(obj2, i, fieldAccess.getDouble(obj, i));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            this.f7335i.setDouble(obj, this.f7336j, input.readDouble());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            output.writeDouble(this.f7335i.getDouble(obj, this.f7336j));
        }
    }

    /* loaded from: classes.dex */
    public static final class FloatAsmField extends FieldSerializer.CachedField {
        public FloatAsmField(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            FieldAccess fieldAccess = this.f7335i;
            int i = this.f7336j;
            fieldAccess.setFloat(obj2, i, fieldAccess.getFloat(obj, i));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            this.f7335i.setFloat(obj, this.f7336j, input.readFloat());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            output.writeFloat(this.f7335i.getFloat(obj, this.f7336j));
        }
    }

    /* loaded from: classes.dex */
    public static final class IntAsmField extends FieldSerializer.CachedField {
        public IntAsmField(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            FieldAccess fieldAccess = this.f7335i;
            int i = this.f7336j;
            fieldAccess.setInt(obj2, i, fieldAccess.getInt(obj, i));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            if (this.f7332f) {
                this.f7335i.setInt(obj, this.f7336j, input.readVarInt(false));
            } else {
                this.f7335i.setInt(obj, this.f7336j, input.readInt());
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            if (this.f7332f) {
                output.writeVarInt(this.f7335i.getInt(obj, this.f7336j), false);
            } else {
                output.writeInt(this.f7335i.getInt(obj, this.f7336j));
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class LongAsmField extends FieldSerializer.CachedField {
        public LongAsmField(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            FieldAccess fieldAccess = this.f7335i;
            int i = this.f7336j;
            fieldAccess.setLong(obj2, i, fieldAccess.getLong(obj, i));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            if (this.f7332f) {
                this.f7335i.setLong(obj, this.f7336j, input.readVarLong(false));
            } else {
                this.f7335i.setLong(obj, this.f7336j, input.readLong());
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            if (this.f7332f) {
                output.writeVarLong(this.f7335i.getLong(obj, this.f7336j), false);
            } else {
                output.writeLong(this.f7335i.getLong(obj, this.f7336j));
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class ShortAsmField extends FieldSerializer.CachedField {
        public ShortAsmField(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            FieldAccess fieldAccess = this.f7335i;
            int i = this.f7336j;
            fieldAccess.setShort(obj2, i, fieldAccess.getShort(obj, i));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            this.f7335i.setShort(obj, this.f7336j, input.readShort());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            output.writeShort(this.f7335i.getShort(obj, this.f7336j));
        }
    }

    /* loaded from: classes.dex */
    public static final class StringAsmField extends FieldSerializer.CachedField {
        public StringAsmField(Field field) {
            super(field);
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void copy(Object obj, Object obj2) {
            FieldAccess fieldAccess = this.f7335i;
            int i = this.f7336j;
            fieldAccess.set(obj2, i, fieldAccess.getString(obj, i));
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void read(Input input, Object obj) {
            this.f7335i.set(obj, this.f7336j, input.readString());
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
        public void write(Output output, Object obj) {
            output.writeString(this.f7335i.getString(obj, this.f7336j));
        }
    }

    public AsmField(Field field, FieldSerializer fieldSerializer, Generics.GenericType genericType) {
        super(field, fieldSerializer, genericType);
    }

    @Override // com.esotericsoftware.kryo.serializers.ReflectField
    public Object get(Object obj) {
        return this.f7335i.get(obj, this.f7336j);
    }

    @Override // com.esotericsoftware.kryo.serializers.ReflectField
    public void set(Object obj, Object obj2) {
        this.f7335i.set(obj, this.f7336j, obj2);
    }

    @Override // com.esotericsoftware.kryo.serializers.ReflectField, com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField
    public void copy(Object obj, Object obj2) {
        try {
            FieldAccess fieldAccess = this.f7335i;
            int i = this.f7336j;
            fieldAccess.set(obj2, i, this.f7362m.f7322c.copy(fieldAccess.get(obj, i)));
        } catch (KryoException e) {
            e.addTrace(this + " (" + this.f7362m.f7323d.getName() + ")");
            throw e;
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.addTrace(this + " (" + this.f7362m.f7323d.getName() + ")");
            throw kryoException;
        }
    }
}
