package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.SerializerFactory;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.kryo.util.Generics;
import com.esotericsoftware.kryo.util.Util;
import com.esotericsoftware.minlog.Log;
import com.esotericsoftware.reflectasm.FieldAccess;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
/* loaded from: classes.dex */
public class FieldSerializer<T> extends Serializer<T> {

    /* renamed from: c */
    public final Kryo f7322c;

    /* renamed from: d */
    public final Class f7323d;

    /* renamed from: e */
    public final FieldSerializerConfig f7324e;

    /* renamed from: f */
    public final CachedFields f7325f;

    /* renamed from: g */
    public final Generics.GenericsHierarchy f7326g;

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Bind {
        boolean canBeNull() default true;

        boolean optimizePositive() default false;

        Class<? extends Serializer> serializer() default Serializer.class;

        Class<? extends SerializerFactory> serializerFactory() default SerializerFactory.class;

        Class valueClass() default Object.class;

        boolean variableLengthEncoding() default true;
    }

    /* loaded from: classes.dex */
    public static abstract class CachedField {

        /* renamed from: a */
        public final Field f7327a;

        /* renamed from: b */
        public String f7328b;

        /* renamed from: c */
        public Class f7329c;

        /* renamed from: d */
        public Serializer f7330d;

        /* renamed from: e */
        public boolean f7331e;

        /* renamed from: g */
        public boolean f7333g;

        /* renamed from: i */
        public FieldAccess f7335i;

        /* renamed from: k */
        public long f7337k;

        /* renamed from: l */
        public int f7338l;

        /* renamed from: f */
        public boolean f7332f = true;

        /* renamed from: h */
        public boolean f7334h = true;

        /* renamed from: j */
        public int f7336j = -1;

        /* renamed from: a */
        public void m23233a(boolean z) {
            this.f7334h = z;
        }

        public abstract void copy(Object obj, Object obj2);

        public boolean getCanBeNull() {
            return this.f7331e;
        }

        public Field getField() {
            return this.f7327a;
        }

        public String getName() {
            return this.f7328b;
        }

        public boolean getOptimizePositive() {
            return this.f7333g;
        }

        public Serializer getSerializer() {
            return this.f7330d;
        }

        public Class getValueClass() {
            return this.f7329c;
        }

        public boolean getVariableLengthEncoding() {
            return this.f7332f;
        }

        public abstract void read(Input input, Object obj);

        public void setCanBeNull(boolean z) {
            this.f7331e = z;
        }

        public void setOptimizePositive(boolean z) {
            this.f7333g = z;
        }

        public void setSerializer(Serializer serializer) {
            this.f7330d = serializer;
        }

        public void setValueClass(Class cls) {
            this.f7329c = cls;
        }

        public void setVariableLengthEncoding(boolean z) {
            this.f7332f = z;
        }

        public String toString() {
            return this.f7328b;
        }

        public abstract void write(Output output, Object obj);

        public void setValueClass(Class cls, Serializer serializer) {
            this.f7329c = cls;
            this.f7330d = serializer;
        }

        public CachedField(Field field) {
            this.f7327a = field;
        }
    }

    /* loaded from: classes.dex */
    public static class FieldSerializerConfig implements Cloneable {

        /* renamed from: k */
        public boolean f7342k;

        /* renamed from: q */
        public boolean f7344q;

        /* renamed from: s */
        public boolean f7346s;

        /* renamed from: a */
        public boolean f7339a = true;

        /* renamed from: b */
        public boolean f7340b = true;

        /* renamed from: d */
        public boolean f7341d = true;

        /* renamed from: p */
        public boolean f7343p = true;

        /* renamed from: r */
        public boolean f7345r = true;

        public boolean getCopyTransient() {
            return this.f7343p;
        }

        public boolean getExtendedFieldNames() {
            return this.f7346s;
        }

        public boolean getFieldsCanBeNull() {
            return this.f7339a;
        }

        public boolean getFixedFieldTypes() {
            return this.f7342k;
        }

        public boolean getIgnoreSyntheticFields() {
            return this.f7341d;
        }

        public boolean getSerializeTransient() {
            return this.f7344q;
        }

        public boolean getSetFieldsAsAccessible() {
            return this.f7340b;
        }

        public boolean getVariableLengthEncoding() {
            return this.f7345r;
        }

        /* renamed from: clone */
        public FieldSerializerConfig m27844clone() {
            try {
                return (FieldSerializerConfig) super.clone();
            } catch (CloneNotSupportedException e) {
                throw new KryoException(e);
            }
        }

        public void setCopyTransient(boolean z) {
            this.f7343p = z;
            if (Log.TRACE) {
                Log.trace("kryo", "FieldSerializerConfig copyTransient: " + z);
            }
        }

        public void setExtendedFieldNames(boolean z) {
            this.f7346s = z;
            if (Log.TRACE) {
                Log.trace("kryo", "FieldSerializerConfig extendedFieldNames: " + z);
            }
        }

        public void setFieldsAsAccessible(boolean z) {
            this.f7340b = z;
            if (Log.TRACE) {
                Log.trace("kryo", "FieldSerializerConfig setFieldsAsAccessible: " + z);
            }
        }

        public void setFieldsCanBeNull(boolean z) {
            this.f7339a = z;
            if (Log.TRACE) {
                Log.trace("kryo", "FieldSerializerConfig fieldsCanBeNull: " + z);
            }
        }

        public void setFixedFieldTypes(boolean z) {
            this.f7342k = z;
            if (Log.TRACE) {
                Log.trace("kryo", "FieldSerializerConfig fixedFieldTypes: " + z);
            }
        }

        public void setIgnoreSyntheticFields(boolean z) {
            this.f7341d = z;
            if (Log.TRACE) {
                Log.trace("kryo", "FieldSerializerConfig ignoreSyntheticFields: " + z);
            }
        }

        public void setSerializeTransient(boolean z) {
            this.f7344q = z;
            if (Log.TRACE) {
                Log.trace("kryo", "FieldSerializerConfig serializeTransient: " + z);
            }
        }

        public void setVariableLengthEncoding(boolean z) {
            this.f7345r = z;
            if (Log.TRACE) {
                Log.trace("kryo", "FieldSerializerConfig variable length encoding: " + z);
            }
        }
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface NotNull {
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Optional {
        String value();
    }

    public FieldSerializer(Kryo kryo, Class cls) {
        this(kryo, cls, new FieldSerializerConfig());
    }

    public T create(Kryo kryo, Input input, Class<? extends T> cls) {
        return (T) kryo.newInstance(cls);
    }

    public T createCopy(Kryo kryo, T t) {
        return (T) kryo.newInstance(t.getClass());
    }

    public CachedField[] getCopyFields() {
        return this.f7325f.f7297d;
    }

    public FieldSerializerConfig getFieldSerializerConfig() {
        return this.f7324e;
    }

    public CachedField[] getFields() {
        return this.f7325f.f7296b;
    }

    public Kryo getKryo() {
        return this.f7322c;
    }

    public Class getType() {
        return this.f7323d;
    }

    public void initializeCachedFields() {
    }

    public void removeField(String str) {
        this.f7325f.removeField(str);
    }

    public FieldSerializer(Kryo kryo, Class cls, FieldSerializerConfig fieldSerializerConfig) {
        if (cls != null) {
            if (cls.isPrimitive()) {
                throw new IllegalArgumentException("type cannot be a primitive class: " + cls);
            } else if (fieldSerializerConfig != null) {
                this.f7322c = kryo;
                this.f7323d = cls;
                this.f7324e = fieldSerializerConfig;
                this.f7326g = new Generics.GenericsHierarchy(cls);
                CachedFields cachedFields = new CachedFields(this);
                this.f7325f = cachedFields;
                cachedFields.rebuild();
                return;
            } else {
                throw new IllegalArgumentException("config cannot be null.");
            }
        }
        throw new IllegalArgumentException("type cannot be null.");
    }

    public CachedField getField(String str) {
        CachedField[] cachedFieldArr;
        for (CachedField cachedField : this.f7325f.f7296b) {
            if (cachedField.f7328b.equals(str)) {
                return cachedField;
            }
        }
        throw new IllegalArgumentException("Field \"" + str + "\" not found on class: " + this.f7323d.getName());
    }

    public void log(String str, CachedField cachedField, int i) {
        String simpleName;
        if (cachedField instanceof ReflectField) {
            ReflectField reflectField = (ReflectField) cachedField;
            Class<?> m23220b = reflectField.m23220b();
            if (m23220b == null) {
                m23220b = cachedField.f7327a.getType();
            }
            simpleName = Util.simpleName(m23220b, reflectField.f7363n);
        } else {
            Class cls = cachedField.f7329c;
            if (cls != null) {
                simpleName = cls.getSimpleName();
            } else {
                simpleName = cachedField.f7327a.getType().getSimpleName();
            }
        }
        Log.trace("kryo", str + " field " + simpleName + ": " + cachedField.f7328b + " (" + Util.className(cachedField.f7327a.getDeclaringClass()) + ')' + Util.pos(i));
    }

    public void popTypeVariables(int i) {
        Generics generics = this.f7322c.getGenerics();
        if (i > 0) {
            generics.popTypeVariables(i);
        }
        generics.popGenericType();
    }

    public int pushTypeVariables() {
        Generics.GenericType[] nextGenericTypes = this.f7322c.getGenerics().nextGenericTypes();
        if (nextGenericTypes == null) {
            return 0;
        }
        int pushTypeVariables = this.f7322c.getGenerics().pushTypeVariables(this.f7326g, nextGenericTypes);
        if (Log.TRACE && pushTypeVariables > 0) {
            Log.trace("kryo", "Generics: " + this.f7322c.getGenerics());
        }
        return pushTypeVariables;
    }

    public void removeField(CachedField cachedField) {
        this.f7325f.removeField(cachedField);
    }

    public void updateFields() {
        if (Log.TRACE) {
            Log.trace("kryo", "Update fields: " + Util.className(this.f7323d));
        }
        this.f7325f.rebuild();
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public T copy(Kryo kryo, T t) {
        T createCopy = createCopy(kryo, t);
        kryo.reference(createCopy);
        int length = this.f7325f.f7297d.length;
        for (int i = 0; i < length; i++) {
            this.f7325f.f7297d[i].copy(t, createCopy);
        }
        return createCopy;
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public T read(Kryo kryo, Input input, Class<? extends T> cls) {
        int pushTypeVariables = pushTypeVariables();
        T create = create(kryo, input, cls);
        kryo.reference(create);
        CachedField[] cachedFieldArr = this.f7325f.f7296b;
        int length = cachedFieldArr.length;
        for (int i = 0; i < length; i++) {
            if (Log.TRACE) {
                log("Read", cachedFieldArr[i], input.position());
            }
            try {
                cachedFieldArr[i].read(input, create);
            } catch (KryoException e) {
                throw e;
            } catch (Exception e2) {
                e = e2;
                throw new KryoException("Error reading " + cachedFieldArr[i] + " at position " + input.position(), e);
            } catch (OutOfMemoryError e3) {
                e = e3;
                throw new KryoException("Error reading " + cachedFieldArr[i] + " at position " + input.position(), e);
            }
        }
        popTypeVariables(pushTypeVariables);
        return create;
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, T t) {
        int pushTypeVariables = pushTypeVariables();
        CachedField[] cachedFieldArr = this.f7325f.f7296b;
        int length = cachedFieldArr.length;
        for (int i = 0; i < length; i++) {
            if (Log.TRACE) {
                log("Write", cachedFieldArr[i], output.position());
            }
            try {
                cachedFieldArr[i].write(output, t);
            } catch (KryoException e) {
                throw e;
            } catch (Exception e2) {
                e = e2;
                throw new KryoException("Error writing " + cachedFieldArr[i] + " at position " + output.position(), e);
            } catch (OutOfMemoryError e3) {
                e = e3;
                throw new KryoException("Error writing " + cachedFieldArr[i] + " at position " + output.position(), e);
            }
        }
        popTypeVariables(pushTypeVariables);
    }
}
