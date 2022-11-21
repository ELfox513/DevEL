package com.prineside.tdi2.serializers;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.ObjectSet;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.utils.EnumKeyArray;
import com.prineside.tdi2.utils.NAGS;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Comparator;
/* loaded from: classes2.dex */
public class GameStateSerializer extends Serializer {
    public static Serializer CLASS_ONLY_SERIALIZER = new Serializer() { // from class: com.prineside.tdi2.serializers.GameStateSerializer.1
        @Override // com.esotericsoftware.kryo.Serializer
        public Object read(Kryo kryo, Input input, Class cls) {
            throw new IllegalStateException("can't be used to serialize objects");
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Object obj) {
            throw new IllegalStateException("can't be used to serialize objects");
        }
    };

    /* renamed from: d */
    public static ObjectMap<Class, Array<Field>> f11241d = new ObjectMap<>();

    /* renamed from: e */
    public static final ObjectSet<Class> f11242e;

    /* renamed from: f */
    public static final ObjectSet<Class> f11243f;

    /* renamed from: g */
    public static final ObjectMap<Field, EnumKeyArray> f11244g;

    /* renamed from: h */
    public static final Comparator<Field> f11245h;

    /* renamed from: c */
    public final Array<Field> f11246c;
    public int writeCount;

    static {
        ObjectSet<Class> objectSet = new ObjectSet<>();
        f11242e = objectSet;
        objectSet.add(byte[].class);
        objectSet.add(char[].class);
        objectSet.add(short[].class);
        objectSet.add(int[].class);
        objectSet.add(long[].class);
        objectSet.add(float[].class);
        objectSet.add(double[].class);
        objectSet.add(boolean[].class);
        objectSet.add(String[].class);
        objectSet.add(Enum[].class);
        Class cls = Integer.TYPE;
        objectSet.add(cls);
        objectSet.add(String.class);
        Class cls2 = Float.TYPE;
        objectSet.add(cls2);
        Class cls3 = Boolean.TYPE;
        objectSet.add(cls3);
        objectSet.add(Byte.TYPE);
        objectSet.add(Character.TYPE);
        objectSet.add(Short.TYPE);
        Class cls4 = Long.TYPE;
        objectSet.add(cls4);
        objectSet.add(Double.TYPE);
        ObjectSet<Class> objectSet2 = new ObjectSet<>();
        f11243f = objectSet2;
        objectSet2.add(cls);
        objectSet2.add(cls2);
        objectSet2.add(cls3);
        objectSet2.add(Byte.TYPE);
        objectSet2.add(Character.TYPE);
        objectSet2.add(Short.TYPE);
        objectSet2.add(cls4);
        objectSet2.add(Double.TYPE);
        f11244g = new ObjectMap<>();
        f11245h = new Comparator<Field>() { // from class: com.prineside.tdi2.serializers.GameStateSerializer.2
            @Override // java.util.Comparator
            public int compare(Field field, Field field2) {
                return field.getName().compareTo(field2.getName());
            }
        };
    }

    public static Array<Field> getAllFields(Class cls, Array<String> array) {
        Field[] declaredFields;
        Array<Field> array2 = f11241d.get(cls, null);
        if (array2 != null) {
            return array2;
        }
        Array<Field> array3 = new Array<>(Field.class);
        for (Class cls2 = cls; cls2 != null && cls2 != Object.class; cls2 = cls2.getSuperclass()) {
            for (Field field : cls2.getDeclaredFields()) {
                if (!m21087a(field)) {
                    if (!array3.contains(field, true)) {
                        field.setAccessible(true);
                        array3.add(field);
                    }
                } else if (array != null) {
                    String str = cls2.getName() + "." + field.getName();
                    if (str.startsWith("com.prineside.tdi2.")) {
                        str = str.substring(19);
                    }
                    if (!array.contains(str, false)) {
                        Logger.error("GameStateSerializer", "skipped " + str + " " + field.getType().getSimpleName());
                        array.add(str);
                    }
                }
            }
        }
        array3.sort(f11245h);
        f11241d.put(cls, array3);
        return array3;
    }

    public static EnumKeyArray getEnumKeyArrayFieldAnnotationCached(Field field) {
        if (field.isAnnotationPresent(EnumKeyArray.class)) {
            ObjectMap<Field, EnumKeyArray> objectMap = f11244g;
            if (objectMap.containsKey(field)) {
                return objectMap.get(field);
            }
            EnumKeyArray enumKeyArray = (EnumKeyArray) field.getAnnotation(EnumKeyArray.class);
            objectMap.put(field, enumKeyArray);
            return enumKeyArray;
        }
        return null;
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public Object read(Kryo kryo, Input input, Class cls) {
        Constructor<?>[] declaredConstructors;
        Constructor constructor;
        try {
            try {
                constructor = cls.getDeclaredConstructor(new Class[0]);
            } catch (Exception e) {
                Logger.error("GameStateSerializer", "failed to obtain constructor", e);
                for (Constructor<?> constructor2 : cls.getDeclaredConstructors()) {
                    Logger.log("GameStateSerializer", constructor2 + "");
                }
                constructor = null;
            }
            constructor.setAccessible(true);
            Object newInstance = constructor.newInstance(new Object[0]);
            kryo.reference(newInstance);
            int i = 0;
            while (true) {
                Array<Field> array = this.f11246c;
                if (i < array.size) {
                    Field field = array.items[i];
                    Class<?> type = field.getType();
                    if (f11242e.contains(type)) {
                        if (f11243f.contains(type)) {
                            if (type == Integer.TYPE) {
                                field.setInt(newInstance, input.readInt(false));
                            } else if (type == Float.TYPE) {
                                field.setFloat(newInstance, input.readFloat());
                            } else if (type == Boolean.TYPE) {
                                field.setBoolean(newInstance, input.readBoolean());
                            } else if (type == Byte.TYPE) {
                                field.setByte(newInstance, input.readByte());
                            } else if (type == Character.TYPE) {
                                field.setChar(newInstance, input.readChar());
                            } else if (type == Short.TYPE) {
                                field.setShort(newInstance, input.readShort());
                            } else if (type == Long.TYPE) {
                                field.setLong(newInstance, input.readLong(false));
                            } else {
                                field.setDouble(newInstance, input.readDouble());
                            }
                        } else {
                            field.set(newInstance, kryo.readObjectOrNull(input, type, kryo.getSerializer(type)));
                        }
                    } else {
                        field.set(newInstance, kryo.readClassAndObject(input));
                    }
                    i++;
                } else {
                    return newInstance;
                }
            }
        } catch (Exception e2) {
            throw new RuntimeException("Failed to create new instance of " + cls.getName(), e2);
        }
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, Object obj) {
        this.writeCount++;
        int i = 0;
        while (true) {
            Array<Field> array = this.f11246c;
            if (i < array.size) {
                Field field = array.items[i];
                try {
                    Class<?> type = field.getType();
                    if (f11242e.contains(type)) {
                        if (f11243f.contains(type)) {
                            if (type == Integer.TYPE) {
                                output.writeInt(field.getInt(obj), false);
                            } else if (type == Float.TYPE) {
                                output.writeFloat(field.getFloat(obj));
                            } else if (type == Boolean.TYPE) {
                                output.writeBoolean(field.getBoolean(obj));
                            } else if (type == Byte.TYPE) {
                                output.writeByte(field.getByte(obj));
                            } else if (type == Character.TYPE) {
                                output.writeChar(field.getChar(obj));
                            } else if (type == Short.TYPE) {
                                output.writeShort(field.getShort(obj));
                            } else if (type == Long.TYPE) {
                                output.writeLong(field.getLong(obj), false);
                            } else {
                                output.writeDouble(field.getDouble(obj));
                            }
                        } else {
                            kryo.writeObjectOrNull(output, field.get(obj), kryo.getSerializer(type));
                        }
                    } else {
                        kryo.writeClassAndObject(output, field.get(obj));
                    }
                    i++;
                } catch (Exception e) {
                    throw new IllegalStateException("failed to write field " + field.toGenericString(), e);
                }
            } else {
                return;
            }
        }
    }

    public GameStateSerializer(Class cls) {
        throw new IllegalStateException("Should not be used anymore - implement individual serializers");
    }

    /* renamed from: a */
    public static boolean m21087a(Field field) {
        if (!Modifier.isStatic(field.getModifiers()) && !field.isAnnotationPresent(NAGS.class) && !field.getType().isAnnotationPresent(NAGS.class)) {
            return false;
        }
        return true;
    }
}
