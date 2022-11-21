package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.SerializerFactory;
import com.esotericsoftware.kryo.serializers.AsmField;
import com.esotericsoftware.kryo.serializers.CollectionSerializer;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import com.esotericsoftware.kryo.serializers.MapSerializer;
import com.esotericsoftware.kryo.serializers.ReflectField;
import com.esotericsoftware.kryo.serializers.UnsafeField;
import com.esotericsoftware.kryo.util.Generics;
import com.esotericsoftware.kryo.util.Util;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class CachedFields implements Comparator<FieldSerializer.CachedField> {

    /* renamed from: q */
    public static final FieldSerializer.CachedField[] f7294q = new FieldSerializer.CachedField[0];

    /* renamed from: a */
    public final FieldSerializer f7295a;

    /* renamed from: b */
    public FieldSerializer.CachedField[] f7296b = new FieldSerializer.CachedField[0];

    /* renamed from: d */
    public FieldSerializer.CachedField[] f7297d = new FieldSerializer.CachedField[0];

    /* renamed from: k */
    public final ArrayList<Field> f7298k = new ArrayList<>();

    /* renamed from: p */
    public Object f7299p;

    public void removeField(String str) {
        boolean z;
        boolean z2;
        int i = 0;
        while (true) {
            FieldSerializer.CachedField[] cachedFieldArr = this.f7296b;
            z = true;
            if (i >= cachedFieldArr.length) {
                z2 = false;
                break;
            }
            FieldSerializer.CachedField cachedField = cachedFieldArr[i];
            if (cachedField.f7328b.equals(str)) {
                FieldSerializer.CachedField[] cachedFieldArr2 = this.f7296b;
                int length = cachedFieldArr2.length - 1;
                FieldSerializer.CachedField[] cachedFieldArr3 = new FieldSerializer.CachedField[length];
                System.arraycopy(cachedFieldArr2, 0, cachedFieldArr3, 0, i);
                System.arraycopy(this.f7296b, i + 1, cachedFieldArr3, i, length - i);
                this.f7296b = cachedFieldArr3;
                this.f7298k.add(cachedField.f7327a);
                z2 = true;
                break;
            }
            i++;
        }
        int i2 = 0;
        while (true) {
            FieldSerializer.CachedField[] cachedFieldArr4 = this.f7297d;
            if (i2 >= cachedFieldArr4.length) {
                z = z2;
                break;
            }
            FieldSerializer.CachedField cachedField2 = cachedFieldArr4[i2];
            if (cachedField2.f7328b.equals(str)) {
                FieldSerializer.CachedField[] cachedFieldArr5 = this.f7297d;
                int length2 = cachedFieldArr5.length - 1;
                FieldSerializer.CachedField[] cachedFieldArr6 = new FieldSerializer.CachedField[length2];
                System.arraycopy(cachedFieldArr5, 0, cachedFieldArr6, 0, i2);
                System.arraycopy(this.f7297d, i2 + 1, cachedFieldArr6, i2, length2 - i2);
                this.f7297d = cachedFieldArr6;
                this.f7298k.add(cachedField2.f7327a);
                break;
            }
            i2++;
        }
        if (z) {
            return;
        }
        throw new IllegalArgumentException("Field \"" + str + "\" not found on class: " + this.f7295a.f7323d.getName());
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01d1  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m23254a(java.lang.reflect.Field r18, boolean r19, java.util.ArrayList<com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField> r20, java.util.ArrayList<com.esotericsoftware.kryo.serializers.FieldSerializer.CachedField> r21) {
        /*
            Method dump skipped, instructions count: 487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.serializers.CachedFields.m23254a(java.lang.reflect.Field, boolean, java.util.ArrayList, java.util.ArrayList):void");
    }

    /* renamed from: b */
    public final void m23253b(FieldSerializer.CachedField cachedField) {
        Field field = cachedField.f7327a;
        Class cls = null;
        if (field.isAnnotationPresent(FieldSerializer.Bind.class)) {
            if (cachedField.f7330d == null) {
                FieldSerializer.Bind bind = (FieldSerializer.Bind) field.getAnnotation(FieldSerializer.Bind.class);
                Class valueClass = bind.valueClass();
                if (valueClass == Object.class) {
                    valueClass = null;
                }
                if (valueClass != null) {
                    cachedField.setValueClass(valueClass);
                }
                Serializer m23250e = m23250e(valueClass, bind.serializer(), bind.serializerFactory());
                if (m23250e != null) {
                    cachedField.setSerializer(m23250e);
                }
                cachedField.setCanBeNull(bind.canBeNull());
                cachedField.setVariableLengthEncoding(bind.variableLengthEncoding());
                cachedField.setOptimizePositive(bind.optimizePositive());
            } else {
                throw new KryoException("@Bind applied to a field that already has a serializer: " + cachedField.f7327a.getDeclaringClass().getName() + "." + cachedField.f7327a.getName());
            }
        }
        if (field.isAnnotationPresent(CollectionSerializer.BindCollection.class)) {
            if (cachedField.f7330d == null) {
                if (Collection.class.isAssignableFrom(field.getType())) {
                    CollectionSerializer.BindCollection bindCollection = (CollectionSerializer.BindCollection) field.getAnnotation(CollectionSerializer.BindCollection.class);
                    Class elementClass = bindCollection.elementClass();
                    if (elementClass == Object.class) {
                        elementClass = null;
                    }
                    Serializer m23250e2 = m23250e(elementClass, bindCollection.elementSerializer(), bindCollection.elementSerializerFactory());
                    CollectionSerializer collectionSerializer = new CollectionSerializer();
                    collectionSerializer.setElementsCanBeNull(bindCollection.elementsCanBeNull());
                    if (elementClass != null) {
                        collectionSerializer.setElementClass(elementClass);
                    }
                    if (m23250e2 != null) {
                        collectionSerializer.setElementSerializer(m23250e2);
                    }
                    cachedField.setSerializer(collectionSerializer);
                } else {
                    throw new KryoException("@BindCollection can only be used with a field implementing Collection: " + Util.className(field.getType()));
                }
            } else {
                throw new KryoException("@BindCollection applied to a field that already has a serializer: " + cachedField.f7327a.getDeclaringClass().getName() + "." + cachedField.f7327a.getName());
            }
        }
        if (field.isAnnotationPresent(MapSerializer.BindMap.class)) {
            if (cachedField.f7330d == null) {
                if (Map.class.isAssignableFrom(field.getType())) {
                    MapSerializer.BindMap bindMap = (MapSerializer.BindMap) field.getAnnotation(MapSerializer.BindMap.class);
                    Class valueClass2 = bindMap.valueClass();
                    if (valueClass2 == Object.class) {
                        valueClass2 = null;
                    }
                    Serializer m23250e3 = m23250e(valueClass2, bindMap.valueSerializer(), bindMap.valueSerializerFactory());
                    Class keyClass = bindMap.keyClass();
                    if (keyClass != Object.class) {
                        cls = keyClass;
                    }
                    Serializer m23250e4 = m23250e(cls, bindMap.keySerializer(), bindMap.keySerializerFactory());
                    MapSerializer mapSerializer = new MapSerializer();
                    mapSerializer.setKeysCanBeNull(bindMap.keysCanBeNull());
                    mapSerializer.setValuesCanBeNull(bindMap.valuesCanBeNull());
                    if (cls != null) {
                        mapSerializer.setKeyClass(cls);
                    }
                    if (m23250e4 != null) {
                        mapSerializer.setKeySerializer(m23250e4);
                    }
                    if (valueClass2 != null) {
                        mapSerializer.setValueClass(valueClass2);
                    }
                    if (m23250e3 != null) {
                        mapSerializer.setValueSerializer(m23250e3);
                    }
                    cachedField.setSerializer(mapSerializer);
                    return;
                }
                throw new KryoException("@BindMap can only be used with a field implementing Map: " + Util.className(field.getType()));
            }
            throw new KryoException("@BindMap applied to a field that already has a serializer: " + cachedField.f7327a.getDeclaringClass().getName() + "." + cachedField.f7327a.getName());
        }
    }

    /* renamed from: c */
    public final FieldSerializer.CachedField m23252c(Field field, Class cls, Generics.GenericType genericType) {
        if (cls.isPrimitive()) {
            if (cls == Integer.TYPE) {
                return new AsmField.IntAsmField(field);
            }
            if (cls == Float.TYPE) {
                return new AsmField.FloatAsmField(field);
            }
            if (cls == Boolean.TYPE) {
                return new AsmField.BooleanAsmField(field);
            }
            if (cls == Long.TYPE) {
                return new AsmField.LongAsmField(field);
            }
            if (cls == Double.TYPE) {
                return new AsmField.DoubleAsmField(field);
            }
            if (cls == Short.TYPE) {
                return new AsmField.ShortAsmField(field);
            }
            if (cls == Character.TYPE) {
                return new AsmField.CharAsmField(field);
            }
            if (cls == Byte.TYPE) {
                return new AsmField.ByteAsmField(field);
            }
        }
        if (cls == String.class && (!this.f7295a.f7322c.getReferences() || !this.f7295a.f7322c.getReferenceResolver().useReferences(String.class))) {
            return new AsmField.StringAsmField(field);
        }
        return new AsmField(field, this.f7295a, genericType);
    }

    @Override // java.util.Comparator
    public int compare(FieldSerializer.CachedField cachedField, FieldSerializer.CachedField cachedField2) {
        return cachedField.f7328b.compareTo(cachedField2.f7328b);
    }

    /* renamed from: e */
    public final Serializer m23250e(Class cls, Class cls2, Class cls3) {
        if (cls2 == Serializer.class) {
            cls2 = null;
        }
        if (cls3 == SerializerFactory.class) {
            cls3 = null;
        }
        if (cls3 == null && cls2 != null) {
            cls3 = SerializerFactory.ReflectionSerializerFactory.class;
        }
        if (cls3 == null) {
            return null;
        }
        return Util.newFactory(cls3, cls2).newSerializer(this.f7295a.f7322c, cls);
    }

    /* renamed from: f */
    public final FieldSerializer.CachedField m23249f(Field field, Class cls, Generics.GenericType genericType) {
        if (cls.isPrimitive()) {
            if (cls == Integer.TYPE) {
                return new UnsafeField.IntUnsafeField(field);
            }
            if (cls == Float.TYPE) {
                return new UnsafeField.FloatUnsafeField(field);
            }
            if (cls == Boolean.TYPE) {
                return new UnsafeField.BooleanUnsafeField(field);
            }
            if (cls == Long.TYPE) {
                return new UnsafeField.LongUnsafeField(field);
            }
            if (cls == Double.TYPE) {
                return new UnsafeField.DoubleUnsafeField(field);
            }
            if (cls == Short.TYPE) {
                return new UnsafeField.ShortUnsafeField(field);
            }
            if (cls == Character.TYPE) {
                return new UnsafeField.CharUnsafeField(field);
            }
            if (cls == Byte.TYPE) {
                return new UnsafeField.ByteUnsafeField(field);
            }
        }
        if (cls == String.class && (!this.f7295a.f7322c.getReferences() || !this.f7295a.f7322c.getReferenceResolver().useReferences(String.class))) {
            return new UnsafeField.StringUnsafeField(field);
        }
        return new UnsafeField(field, this.f7295a, genericType);
    }

    public void rebuild() {
        boolean z;
        if (this.f7295a.f7323d.isInterface()) {
            FieldSerializer.CachedField[] cachedFieldArr = f7294q;
            this.f7296b = cachedFieldArr;
            this.f7297d = cachedFieldArr;
            this.f7295a.initializeCachedFields();
            return;
        }
        ArrayList<FieldSerializer.CachedField> arrayList = new ArrayList<>();
        ArrayList<FieldSerializer.CachedField> arrayList2 = new ArrayList<>();
        if (!Util.unsafe && !Util.isAndroid && Modifier.isPublic(this.f7295a.f7323d.getModifiers())) {
            z = true;
        } else {
            z = false;
        }
        for (Class cls = this.f7295a.f7323d; cls != Object.class; cls = cls.getSuperclass()) {
            for (Field field : cls.getDeclaredFields()) {
                m23254a(field, z, arrayList, arrayList2);
            }
        }
        if (this.f7296b.length != arrayList.size()) {
            this.f7296b = new FieldSerializer.CachedField[arrayList.size()];
        }
        arrayList.toArray(this.f7296b);
        Arrays.sort(this.f7296b, this);
        if (this.f7297d.length != arrayList2.size()) {
            this.f7297d = new FieldSerializer.CachedField[arrayList2.size()];
        }
        arrayList2.toArray(this.f7297d);
        Arrays.sort(this.f7297d, this);
        this.f7295a.initializeCachedFields();
    }

    public CachedFields(FieldSerializer fieldSerializer) {
        this.f7295a = fieldSerializer;
    }

    /* renamed from: d */
    public final FieldSerializer.CachedField m23251d(Field field, Class cls, Generics.GenericType genericType) {
        if (cls.isPrimitive()) {
            if (cls == Integer.TYPE) {
                return new ReflectField.IntReflectField(field);
            }
            if (cls == Float.TYPE) {
                return new ReflectField.FloatReflectField(field);
            }
            if (cls == Boolean.TYPE) {
                return new ReflectField.BooleanReflectField(field);
            }
            if (cls == Long.TYPE) {
                return new ReflectField.LongReflectField(field);
            }
            if (cls == Double.TYPE) {
                return new ReflectField.DoubleReflectField(field);
            }
            if (cls == Short.TYPE) {
                return new ReflectField.ShortReflectField(field);
            }
            if (cls == Character.TYPE) {
                return new ReflectField.CharReflectField(field);
            }
            if (cls == Byte.TYPE) {
                return new ReflectField.ByteReflectField(field);
            }
        }
        return new ReflectField(field, this.f7295a, genericType);
    }

    public void removeField(FieldSerializer.CachedField cachedField) {
        boolean z;
        boolean z2;
        int i = 0;
        while (true) {
            FieldSerializer.CachedField[] cachedFieldArr = this.f7296b;
            z = true;
            if (i >= cachedFieldArr.length) {
                z2 = false;
                break;
            }
            FieldSerializer.CachedField cachedField2 = cachedFieldArr[i];
            if (cachedField2 == cachedField) {
                int length = cachedFieldArr.length - 1;
                FieldSerializer.CachedField[] cachedFieldArr2 = new FieldSerializer.CachedField[length];
                System.arraycopy(cachedFieldArr, 0, cachedFieldArr2, 0, i);
                System.arraycopy(this.f7296b, i + 1, cachedFieldArr2, i, length - i);
                this.f7296b = cachedFieldArr2;
                this.f7298k.add(cachedField2.f7327a);
                z2 = true;
                break;
            }
            i++;
        }
        int i2 = 0;
        while (true) {
            FieldSerializer.CachedField[] cachedFieldArr3 = this.f7297d;
            if (i2 >= cachedFieldArr3.length) {
                z = z2;
                break;
            }
            FieldSerializer.CachedField cachedField3 = cachedFieldArr3[i2];
            if (cachedField3 == cachedField) {
                int length2 = cachedFieldArr3.length - 1;
                FieldSerializer.CachedField[] cachedFieldArr4 = new FieldSerializer.CachedField[length2];
                System.arraycopy(cachedFieldArr3, 0, cachedFieldArr4, 0, i2);
                System.arraycopy(this.f7297d, i2 + 1, cachedFieldArr4, i2, length2 - i2);
                this.f7297d = cachedFieldArr4;
                this.f7298k.add(cachedField3.f7327a);
                break;
            }
            i2++;
        }
        if (z) {
            return;
        }
        throw new IllegalArgumentException("Field \"" + cachedField + "\" not found on class: " + this.f7295a.f7323d.getName());
    }
}
