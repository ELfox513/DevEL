package com.esotericsoftware.jsonbeans;

import com.esotericsoftware.jsonbeans.JsonValue;
import com.esotericsoftware.jsonbeans.ObjectMap;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.security.AccessControlException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
public class Json {

    /* renamed from: a */
    public JsonWriter f7165a;

    /* renamed from: b */
    public String f7166b;

    /* renamed from: c */
    public boolean f7167c;

    /* renamed from: d */
    public OutputType f7168d;

    /* renamed from: e */
    public final ObjectMap<Class, ObjectMap<String, FieldMetadata>> f7169e;

    /* renamed from: f */
    public final ObjectMap<String, Class> f7170f;

    /* renamed from: g */
    public final ObjectMap<Class, String> f7171g;

    /* renamed from: h */
    public final ObjectMap<Class, JsonSerializer> f7172h;

    /* renamed from: i */
    public final ObjectMap<Class, Object[]> f7173i;

    /* renamed from: j */
    public JsonSerializer f7174j;

    /* renamed from: k */
    public boolean f7175k;

    public Json() {
        this.f7166b = "class";
        this.f7167c = true;
        this.f7169e = new ObjectMap<>();
        this.f7170f = new ObjectMap<>();
        this.f7171g = new ObjectMap<>();
        this.f7172h = new ObjectMap<>();
        this.f7173i = new ObjectMap<>();
        this.f7168d = OutputType.minimal;
    }

    public <T> T fromJson(Class<T> cls, Reader reader) {
        return (T) readValue(cls, (Class) null, new JsonReader().parse(reader));
    }

    public <T> JsonSerializer<T> getSerializer(Class<T> cls) {
        return this.f7172h.get(cls);
    }

    public JsonWriter getWriter() {
        return this.f7165a;
    }

    public String prettyPrint(Object obj) {
        return prettyPrint(obj, 0);
    }

    public void readField(Object obj, String str, JsonValue jsonValue) {
        readField(obj, str, str, null, jsonValue);
    }

    public <T> T readValue(String str, Class<T> cls, JsonValue jsonValue) {
        return (T) readValue(cls, (Class) null, jsonValue.get(str));
    }

    public void setDefaultSerializer(JsonSerializer jsonSerializer) {
        this.f7174j = jsonSerializer;
    }

    public void setIgnoreUnknownFields(boolean z) {
        this.f7175k = z;
    }

    public void setOutputType(OutputType outputType) {
        this.f7168d = outputType;
    }

    public <T> void setSerializer(Class<T> cls, JsonSerializer<T> jsonSerializer) {
        this.f7172h.put(cls, jsonSerializer);
    }

    public void setTypeName(String str) {
        this.f7166b = str;
    }

    public void setUsePrototypes(boolean z) {
        this.f7167c = z;
    }

    public String toJson(Object obj) {
        return toJson(obj, obj == null ? null : obj.getClass(), (Class) null);
    }

    public void writeArrayStart(String str) {
        try {
            this.f7165a.name(str);
            this.f7165a.array();
        } catch (IOException e) {
            throw new JsonException(e);
        }
    }

    public void writeField(Object obj, String str) {
        writeField(obj, str, str, null);
    }

    public void writeObjectStart(String str) {
        try {
            this.f7165a.name(str);
            writeObjectStart();
        } catch (IOException e) {
            throw new JsonException(e);
        }
    }

    public void writeValue(String str, Object obj) {
        try {
            this.f7165a.name(str);
            if (obj == null) {
                writeValue(obj, (Class) null, (Class) null);
            } else {
                writeValue(obj, obj.getClass(), (Class) null);
            }
        } catch (IOException e) {
            throw new JsonException(e);
        }
    }

    /* loaded from: classes.dex */
    public static class FieldMetadata {

        /* renamed from: a */
        public Field f7176a;

        /* renamed from: b */
        public Class f7177b;

        public FieldMetadata(Field field) {
            this.f7176a = field;
            Type genericType = field.getGenericType();
            if (genericType instanceof ParameterizedType) {
                Type[] actualTypeArguments = ((ParameterizedType) genericType).getActualTypeArguments();
                if (actualTypeArguments.length == 1) {
                    Type type = actualTypeArguments[0];
                    if (type instanceof Class) {
                        this.f7177b = (Class) type;
                    } else if (type instanceof ParameterizedType) {
                        this.f7177b = (Class) ((ParameterizedType) type).getRawType();
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final ObjectMap<String, FieldMetadata> m23324a(Class cls) {
        ArrayList arrayList = new ArrayList();
        for (Class cls2 = cls; cls2 != Object.class; cls2 = cls2.getSuperclass()) {
            Collections.addAll(arrayList, cls2.getDeclaredFields());
        }
        ObjectMap<String, FieldMetadata> objectMap = new ObjectMap<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Field field = (Field) arrayList.get(i);
            int modifiers = field.getModifiers();
            if (!Modifier.isTransient(modifiers) && !Modifier.isStatic(modifiers) && !field.isSynthetic()) {
                if (!field.isAccessible()) {
                    try {
                        field.setAccessible(true);
                    } catch (AccessControlException unused) {
                    }
                }
                objectMap.put(field.getName(), new FieldMetadata(field));
            }
        }
        this.f7169e.put(cls, objectMap);
        return objectMap;
    }

    public void addClassTag(String str, Class cls) {
        this.f7170f.put(str, cls);
        this.f7171g.put(cls, str);
    }

    /* renamed from: b */
    public final String m23323b(Object obj) {
        if (obj instanceof Class) {
            return ((Class) obj).getName();
        }
        return String.valueOf(obj);
    }

    /* renamed from: c */
    public final Object[] m23322c(Class cls) {
        if (!this.f7167c) {
            return null;
        }
        if (this.f7173i.containsKey(cls)) {
            return this.f7173i.get(cls);
        }
        try {
            Object newInstance = newInstance(cls);
            ObjectMap<String, FieldMetadata> objectMap = this.f7169e.get(cls);
            if (objectMap == null) {
                objectMap = m23324a(cls);
            }
            Object[] objArr = new Object[objectMap.size];
            this.f7173i.put(cls, objArr);
            int i = 0;
            Iterator<FieldMetadata> it = objectMap.values().iterator();
            while (it.hasNext()) {
                Field field = it.next().f7176a;
                int i2 = i + 1;
                try {
                    objArr[i] = field.get(newInstance);
                    i = i2;
                } catch (JsonException e) {
                    e.addTrace(field + " (" + cls.getName() + ")");
                    throw e;
                } catch (IllegalAccessException e2) {
                    throw new JsonException("Error accessing field: " + field.getName() + " (" + cls.getName() + ")", e2);
                } catch (RuntimeException e3) {
                    JsonException jsonException = new JsonException(e3);
                    jsonException.addTrace(field + " (" + cls.getName() + ")");
                    throw jsonException;
                }
            }
            return objArr;
        } catch (Exception unused) {
            this.f7173i.put(cls, null);
            return null;
        }
    }

    public <T> T fromJson(Class<T> cls, Class cls2, Reader reader) {
        return (T) readValue(cls, cls2, new JsonReader().parse(reader));
    }

    public Class getClass(String str) {
        Class cls = this.f7170f.get(str);
        if (cls != null) {
            return cls;
        }
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new JsonException(e);
        }
    }

    public String getTag(Class cls) {
        String str = this.f7171g.get(cls);
        if (str != null) {
            return str;
        }
        return cls.getName();
    }

    public String prettyPrint(String str) {
        return prettyPrint(str, 0);
    }

    public void readField(Object obj, String str, Class cls, JsonValue jsonValue) {
        readField(obj, str, str, cls, jsonValue);
    }

    public <T> T readValue(String str, Class<T> cls, T t, JsonValue jsonValue) {
        JsonValue jsonValue2 = jsonValue.get(str);
        return jsonValue2 == null ? t : (T) readValue(cls, (Class) null, jsonValue2);
    }

    public void setElementType(Class cls, String str, Class cls2) {
        ObjectMap<String, FieldMetadata> objectMap = this.f7169e.get(cls);
        if (objectMap == null) {
            objectMap = m23324a(cls);
        }
        FieldMetadata fieldMetadata = objectMap.get(str);
        if (fieldMetadata != null) {
            fieldMetadata.f7177b = cls2;
            return;
        }
        throw new JsonException("Field not found: " + str + " (" + cls.getName() + ")");
    }

    public void setWriter(Writer writer) {
        if (!(writer instanceof JsonWriter)) {
            writer = new JsonWriter(writer);
        }
        JsonWriter jsonWriter = (JsonWriter) writer;
        this.f7165a = jsonWriter;
        jsonWriter.setOutputType(this.f7168d);
    }

    public String toJson(Object obj, Class cls) {
        return toJson(obj, cls, (Class) null);
    }

    public void writeArrayEnd() {
        try {
            this.f7165a.pop();
        } catch (IOException e) {
            throw new JsonException(e);
        }
    }

    public void writeField(Object obj, String str, Class cls) {
        writeField(obj, str, str, cls);
    }

    public void writeFields(Object obj) {
        Class<?> cls = obj.getClass();
        Object[] m23322c = m23322c(cls);
        ObjectMap<String, FieldMetadata> objectMap = this.f7169e.get(cls);
        if (objectMap == null) {
            objectMap = m23324a(cls);
        }
        int i = 0;
        Iterator it = new ObjectMap.Values(objectMap).iterator();
        while (it.hasNext()) {
            FieldMetadata fieldMetadata = (FieldMetadata) it.next();
            Field field = fieldMetadata.f7176a;
            try {
                Object obj2 = field.get(obj);
                if (m23322c != null) {
                    int i2 = i + 1;
                    Object obj3 = m23322c[i];
                    if ((obj2 != null || obj3 != null) && (obj2 == null || obj3 == null || !obj2.equals(obj3))) {
                        i = i2;
                    }
                    i = i2;
                }
                this.f7165a.name(field.getName());
                writeValue(obj2, field.getType(), fieldMetadata.f7177b);
            } catch (JsonException e) {
                e.addTrace(field + " (" + cls.getName() + ")");
                throw e;
            } catch (IllegalAccessException e2) {
                throw new JsonException("Error accessing field: " + field.getName() + " (" + cls.getName() + ")", e2);
            } catch (Exception e3) {
                JsonException jsonException = new JsonException(e3);
                jsonException.addTrace(field + " (" + cls.getName() + ")");
                throw jsonException;
            }
        }
    }

    public void writeObjectEnd() {
        try {
            this.f7165a.pop();
        } catch (IOException e) {
            throw new JsonException(e);
        }
    }

    public void writeType(Class cls) {
        if (this.f7166b == null) {
            return;
        }
        String str = this.f7171g.get(cls);
        if (str == null) {
            str = cls.getName();
        }
        try {
            this.f7165a.set(this.f7166b, str);
        } catch (IOException e) {
            throw new JsonException(e);
        }
    }

    public <T> T fromJson(Class<T> cls, InputStream inputStream) {
        return (T) readValue(cls, (Class) null, new JsonReader().parse(inputStream));
    }

    public Object newInstance(Class cls) {
        try {
            return cls.newInstance();
        } catch (Exception e) {
            e = e;
            try {
                Constructor declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                return declaredConstructor.newInstance(new Object[0]);
            } catch (IllegalAccessException unused) {
                if (Enum.class.isAssignableFrom(cls)) {
                    if (cls.getEnumConstants() == null) {
                        cls = cls.getSuperclass();
                    }
                    return cls.getEnumConstants()[0];
                } else if (!cls.isArray()) {
                    if (cls.isMemberClass() && !Modifier.isStatic(cls.getModifiers())) {
                        throw new JsonException("Class cannot be created (non-static member class): " + cls.getName(), e);
                    }
                    throw new JsonException("Class cannot be created (missing no-arg constructor): " + cls.getName(), e);
                } else {
                    throw new JsonException("Encountered JSON object when expected array of type: " + cls.getName(), e);
                }
            } catch (SecurityException unused2) {
                throw new JsonException("Error constructing instance of class: " + cls.getName(), e);
            } catch (Exception e2) {
                e = e2;
                throw new JsonException("Error constructing instance of class: " + cls.getName(), e);
            }
        }
    }

    public String prettyPrint(Object obj, int i) {
        return prettyPrint(toJson(obj), i);
    }

    public void readField(Object obj, String str, String str2, JsonValue jsonValue) {
        readField(obj, str, str2, null, jsonValue);
    }

    public void readFields(Object obj, JsonValue jsonValue) {
        Class<?> cls = obj.getClass();
        ObjectMap<String, FieldMetadata> objectMap = this.f7169e.get(cls);
        if (objectMap == null) {
            objectMap = m23324a(cls);
        }
        for (JsonValue jsonValue2 = jsonValue.child; jsonValue2 != null; jsonValue2 = jsonValue2.next) {
            FieldMetadata fieldMetadata = objectMap.get(jsonValue2.name());
            if (fieldMetadata == null) {
                if (!this.f7175k) {
                    throw new JsonException("Field not found: " + jsonValue2.name() + " (" + cls.getName() + ")");
                }
            } else {
                Field field = fieldMetadata.f7176a;
                try {
                    field.set(obj, readValue(field.getType(), fieldMetadata.f7177b, jsonValue2));
                } catch (JsonException e) {
                    e.addTrace(field.getName() + " (" + cls.getName() + ")");
                    throw e;
                } catch (IllegalAccessException e2) {
                    throw new JsonException("Error accessing field: " + field.getName() + " (" + cls.getName() + ")", e2);
                } catch (RuntimeException e3) {
                    JsonException jsonException = new JsonException(e3);
                    jsonException.addTrace(field.getName() + " (" + cls.getName() + ")");
                    throw jsonException;
                }
            }
        }
    }

    public String toJson(Object obj, Class cls, Class cls2) {
        StringWriter stringWriter = new StringWriter();
        toJson(obj, cls, cls2, stringWriter);
        return stringWriter.toString();
    }

    public void writeField(Object obj, String str, String str2) {
        writeField(obj, str, str2, null);
    }

    public <T> T fromJson(Class<T> cls, Class cls2, InputStream inputStream) {
        return (T) readValue(cls, cls2, new JsonReader().parse(inputStream));
    }

    public String prettyPrint(String str, int i) {
        return new JsonReader().parse(str).prettyPrint(this.f7168d, i);
    }

    public void readField(Object obj, String str, String str2, Class cls, JsonValue jsonValue) {
        Class<?> cls2 = obj.getClass();
        ObjectMap<String, FieldMetadata> objectMap = this.f7169e.get(cls2);
        if (objectMap == null) {
            objectMap = m23324a(cls2);
        }
        FieldMetadata fieldMetadata = objectMap.get(str);
        if (fieldMetadata != null) {
            Field field = fieldMetadata.f7176a;
            JsonValue jsonValue2 = jsonValue.get(str2);
            if (jsonValue2 == null) {
                return;
            }
            if (cls == null) {
                cls = fieldMetadata.f7177b;
            }
            try {
                field.set(obj, readValue(field.getType(), cls, jsonValue2));
                return;
            } catch (JsonException e) {
                e.addTrace(field.getName() + " (" + cls2.getName() + ")");
                throw e;
            } catch (IllegalAccessException e2) {
                throw new JsonException("Error accessing field: " + field.getName() + " (" + cls2.getName() + ")", e2);
            } catch (RuntimeException e3) {
                JsonException jsonException = new JsonException(e3);
                jsonException.addTrace(field.getName() + " (" + cls2.getName() + ")");
                throw jsonException;
            }
        }
        throw new JsonException("Field not found: " + str + " (" + cls2.getName() + ")");
    }

    public <T> T readValue(String str, Class<T> cls, Class cls2, JsonValue jsonValue) {
        return (T) readValue(cls, cls2, jsonValue.get(str));
    }

    public void writeArrayStart() {
        try {
            this.f7165a.array();
        } catch (IOException e) {
            throw new JsonException(e);
        }
    }

    public void writeField(Object obj, String str, String str2, Class cls) {
        Class<?> cls2 = obj.getClass();
        ObjectMap<String, FieldMetadata> objectMap = this.f7169e.get(cls2);
        if (objectMap == null) {
            objectMap = m23324a(cls2);
        }
        FieldMetadata fieldMetadata = objectMap.get(str);
        if (fieldMetadata != null) {
            Field field = fieldMetadata.f7176a;
            if (cls == null) {
                cls = fieldMetadata.f7177b;
            }
            try {
                this.f7165a.name(str2);
                writeValue(field.get(obj), field.getType(), cls);
                return;
            } catch (JsonException e) {
                e.addTrace(field + " (" + cls2.getName() + ")");
                throw e;
            } catch (IllegalAccessException e2) {
                throw new JsonException("Error accessing field: " + field.getName() + " (" + cls2.getName() + ")", e2);
            } catch (Exception e3) {
                JsonException jsonException = new JsonException(e3);
                jsonException.addTrace(field + " (" + cls2.getName() + ")");
                throw jsonException;
            }
        }
        throw new JsonException("Field not found: " + str + " (" + cls2.getName() + ")");
    }

    public void writeObjectStart(String str, Class cls, Class cls2) {
        try {
            this.f7165a.name(str);
            writeObjectStart(cls, cls2);
        } catch (IOException e) {
            throw new JsonException(e);
        }
    }

    public <T> T fromJson(Class<T> cls, File file) {
        try {
            return (T) readValue(cls, (Class) null, new JsonReader().parse(file));
        } catch (Exception e) {
            throw new JsonException("Error reading file: " + file, e);
        }
    }

    public String prettyPrint(Object obj, JsonValue.PrettyPrintSettings prettyPrintSettings) {
        return prettyPrint(toJson(obj), prettyPrintSettings);
    }

    public <T> T readValue(String str, Class<T> cls, Class cls2, T t, JsonValue jsonValue) {
        JsonValue jsonValue2 = jsonValue.get(str);
        return jsonValue2 == null ? t : (T) readValue(cls, cls2, jsonValue2);
    }

    public void writeValue(String str, Object obj, Class cls) {
        try {
            this.f7165a.name(str);
            writeValue(obj, cls, (Class) null);
        } catch (IOException e) {
            throw new JsonException(e);
        }
    }

    public String prettyPrint(String str, JsonValue.PrettyPrintSettings prettyPrintSettings) {
        return new JsonReader().parse(str).prettyPrint(prettyPrintSettings);
    }

    public void toJson(Object obj, File file) {
        toJson(obj, obj == null ? null : obj.getClass(), (Class) null, file);
    }

    public <T> T fromJson(Class<T> cls, Class cls2, File file) {
        try {
            return (T) readValue(cls, cls2, new JsonReader().parse(file));
        } catch (Exception e) {
            throw new JsonException("Error reading file: " + file, e);
        }
    }

    public <T> T readValue(Class<T> cls, Class cls2, T t, JsonValue jsonValue) {
        return (T) readValue(cls, cls2, jsonValue);
    }

    public void toJson(Object obj, Class cls, File file) {
        toJson(obj, cls, (Class) null, file);
    }

    public void writeObjectStart() {
        try {
            this.f7165a.object();
        } catch (IOException e) {
            throw new JsonException(e);
        }
    }

    public <T> T readValue(Class<T> cls, JsonValue jsonValue) {
        return (T) readValue(cls, (Class) null, jsonValue);
    }

    public void toJson(Object obj, Class cls, Class cls2, File file) {
        FileWriter fileWriter;
        FileWriter fileWriter2 = null;
        try {
            try {
                fileWriter = new FileWriter(file);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            toJson(obj, cls, cls2, fileWriter);
            try {
                fileWriter.close();
            } catch (IOException unused) {
            }
        } catch (Exception e2) {
            e = e2;
            throw new JsonException("Error writing file: " + file, e);
        } catch (Throwable th2) {
            th = th2;
            fileWriter2 = fileWriter;
            if (fileWriter2 != null) {
                try {
                    fileWriter2.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    public void writeValue(String str, Object obj, Class cls, Class cls2) {
        try {
            this.f7165a.name(str);
            writeValue(obj, cls, cls2);
        } catch (IOException e) {
            throw new JsonException(e);
        }
    }

    public <T> T fromJson(Class<T> cls, char[] cArr, int i, int i2) {
        return (T) readValue(cls, (Class) null, new JsonReader().parse(cArr, i, i2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:146:0x01fc, code lost:
        if (r0 == r3) goto L135;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x02d9 A[RETURN] */
    /* JADX WARN: Type inference failed for: r0v37, types: [T, com.esotericsoftware.jsonbeans.ObjectMap] */
    /* JADX WARN: Type inference failed for: r0v38, types: [T, java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r14v3, types: [T, java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> T readValue(java.lang.Class<T> r22, java.lang.Class r23, com.esotericsoftware.jsonbeans.JsonValue r24) {
        /*
            Method dump skipped, instructions count: 731
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.jsonbeans.Json.readValue(java.lang.Class, java.lang.Class, com.esotericsoftware.jsonbeans.JsonValue):java.lang.Object");
    }

    public void writeObjectStart(Class cls, Class cls2) {
        try {
            this.f7165a.object();
            if (cls2 == null || cls2 != cls) {
                writeType(cls);
            }
        } catch (IOException e) {
            throw new JsonException(e);
        }
    }

    public Json(OutputType outputType) {
        this.f7166b = "class";
        this.f7167c = true;
        this.f7169e = new ObjectMap<>();
        this.f7170f = new ObjectMap<>();
        this.f7171g = new ObjectMap<>();
        this.f7172h = new ObjectMap<>();
        this.f7173i = new ObjectMap<>();
        this.f7168d = outputType;
    }

    public <T> T fromJson(Class<T> cls, Class cls2, char[] cArr, int i, int i2) {
        return (T) readValue(cls, cls2, new JsonReader().parse(cArr, i, i2));
    }

    public <T> T fromJson(Class<T> cls, String str) {
        return (T) readValue(cls, (Class) null, new JsonReader().parse(str));
    }

    public void writeValue(Object obj) {
        if (obj == null) {
            writeValue(obj, (Class) null, (Class) null);
        } else {
            writeValue(obj, obj.getClass(), (Class) null);
        }
    }

    public <T> T fromJson(Class<T> cls, Class cls2, String str) {
        return (T) readValue(cls, cls2, new JsonReader().parse(str));
    }

    public void writeValue(Object obj, Class cls) {
        writeValue(obj, cls, (Class) null);
    }

    public void toJson(Object obj, Writer writer) {
        toJson(obj, obj == null ? null : obj.getClass(), (Class) null, writer);
    }

    public void writeValue(Object obj, Class cls, Class cls2) {
        Class cls3 = cls;
        try {
            if (obj == null) {
                this.f7165a.value(null);
                return;
            }
            if ((cls3 == null || !cls.isPrimitive()) && cls3 != String.class && cls3 != Integer.class && cls3 != Boolean.class && cls3 != Float.class && cls3 != Long.class && cls3 != Double.class && cls3 != Short.class && cls3 != Byte.class && cls3 != Character.class) {
                Class<?> cls4 = obj.getClass();
                if (!cls4.isPrimitive() && cls4 != String.class && cls4 != Integer.class && cls4 != Boolean.class && cls4 != Float.class && cls4 != Long.class && cls4 != Double.class && cls4 != Short.class && cls4 != Byte.class && cls4 != Character.class) {
                    if (obj instanceof JsonSerializable) {
                        writeObjectStart(cls4, cls3);
                        ((JsonSerializable) obj).write(this);
                        writeObjectEnd();
                        return;
                    }
                    JsonSerializer jsonSerializer = this.f7172h.get(cls4);
                    if (jsonSerializer != null) {
                        jsonSerializer.write(this, obj, cls3);
                        return;
                    } else if (obj instanceof Collection) {
                        if (cls3 != null && cls4 != cls3 && cls4 != ArrayList.class) {
                            throw new JsonException("Serialization of a Collection other than the known type is not supported.\nKnown type: " + cls3 + "\nActual type: " + cls4);
                        }
                        writeArrayStart();
                        for (Object obj2 : (Collection) obj) {
                            writeValue(obj2, cls2, (Class) null);
                        }
                        writeArrayEnd();
                        return;
                    } else if (cls4.isArray()) {
                        Class<?> componentType = cls2 == null ? cls4.getComponentType() : cls2;
                        int length = Array.getLength(obj);
                        writeArrayStart();
                        for (int i = 0; i < length; i++) {
                            writeValue(Array.get(obj, i), componentType, (Class) null);
                        }
                        writeArrayEnd();
                        return;
                    } else if (obj instanceof ObjectMap) {
                        if (cls3 == null) {
                            cls3 = ObjectMap.class;
                        }
                        writeObjectStart(cls4, cls3);
                        Iterator it = ((ObjectMap) obj).entries().iterator();
                        while (it.hasNext()) {
                            ObjectMap.Entry entry = (ObjectMap.Entry) it.next();
                            this.f7165a.name(m23323b(entry.key));
                            writeValue(entry.value, cls2, (Class) null);
                        }
                        writeObjectEnd();
                        return;
                    } else if (obj instanceof Map) {
                        if (cls3 == null) {
                            cls3 = HashMap.class;
                        }
                        writeObjectStart(cls4, cls3);
                        for (Map.Entry entry2 : ((Map) obj).entrySet()) {
                            this.f7165a.name(m23323b(entry2.getKey()));
                            writeValue(entry2.getValue(), cls2, (Class) null);
                        }
                        writeObjectEnd();
                        return;
                    } else if (Enum.class.isAssignableFrom(cls4)) {
                        if (cls3 != null && cls3.equals(cls4)) {
                            this.f7165a.value(obj);
                            return;
                        }
                        if (cls4.getEnumConstants() == null) {
                            cls4 = cls4.getSuperclass();
                        }
                        writeObjectStart(cls4, null);
                        this.f7165a.name("value");
                        this.f7165a.value(obj);
                        writeObjectEnd();
                        return;
                    } else {
                        writeObjectStart(cls4, cls3);
                        writeFields(obj);
                        writeObjectEnd();
                        return;
                    }
                }
                writeObjectStart(cls4, null);
                writeValue("value", obj);
                writeObjectEnd();
                return;
            }
            this.f7165a.value(obj);
        } catch (IOException e) {
            throw new JsonException(e);
        }
    }

    public void toJson(Object obj, Class cls, Writer writer) {
        toJson(obj, cls, (Class) null, writer);
    }

    public void toJson(Object obj, Class cls, Class cls2, Writer writer) {
        setWriter(writer);
        try {
            writeValue(obj, cls, cls2);
            JsonWriter jsonWriter = this.f7165a;
            if (jsonWriter != null) {
                try {
                    jsonWriter.close();
                } catch (IOException unused) {
                }
            }
            this.f7165a = null;
        } catch (Throwable th) {
            if (this.f7165a != null) {
                try {
                    this.f7165a.close();
                } catch (IOException unused2) {
                }
            }
            this.f7165a = null;
            throw th;
        }
    }
}
