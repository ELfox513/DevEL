package com.badlogic.gdx.utils;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.IntSet;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.badlogic.gdx.utils.LongMap;
import com.badlogic.gdx.utils.ObjectFloatMap;
import com.badlogic.gdx.utils.ObjectIntMap;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.ObjectSet;
import com.badlogic.gdx.utils.reflect.ArrayReflection;
import com.badlogic.gdx.utils.reflect.ClassReflection;
import com.badlogic.gdx.utils.reflect.Constructor;
import com.badlogic.gdx.utils.reflect.Field;
import com.badlogic.gdx.utils.reflect.ReflectionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.security.AccessControlException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import net.bytebuddy.ByteBuddy;
import net.bytebuddy.utility.JavaConstant;
/* loaded from: classes.dex */
public class Json {

    /* renamed from: a */
    public JsonWriter f6520a;

    /* renamed from: b */
    public String f6521b;

    /* renamed from: c */
    public boolean f6522c;

    /* renamed from: d */
    public JsonWriter.OutputType f6523d;

    /* renamed from: e */
    public boolean f6524e;

    /* renamed from: f */
    public boolean f6525f;

    /* renamed from: g */
    public boolean f6526g;

    /* renamed from: h */
    public boolean f6527h;

    /* renamed from: i */
    public boolean f6528i;

    /* renamed from: j */
    public boolean f6529j;

    /* renamed from: k */
    public Serializer f6530k;

    /* renamed from: l */
    public final ObjectMap<Class, OrderedMap<String, FieldMetadata>> f6531l;

    /* renamed from: m */
    public final ObjectMap<String, Class> f6532m;

    /* renamed from: n */
    public final ObjectMap<Class, String> f6533n;

    /* renamed from: o */
    public final ObjectMap<Class, Serializer> f6534o;

    /* renamed from: p */
    public final ObjectMap<Class, Object[]> f6535p;

    /* renamed from: q */
    public final Object[] f6536q;

    /* renamed from: r */
    public final Object[] f6537r;

    /* loaded from: classes.dex */
    public static abstract class ReadOnlySerializer<T> implements Serializer<T> {
        @Override // com.badlogic.gdx.utils.Json.Serializer
        public abstract T read(Json json, JsonValue jsonValue, Class cls);

        @Override // com.badlogic.gdx.utils.Json.Serializer
        public void write(Json json, T t, Class cls) {
        }
    }

    /* loaded from: classes.dex */
    public interface Serializable {
        void read(Json json, JsonValue jsonValue);

        void write(Json json);
    }

    /* loaded from: classes.dex */
    public interface Serializer<T> {
        T read(Json json, JsonValue jsonValue, Class cls);

        void write(Json json, T t, Class cls);
    }

    public Json() {
        this.f6521b = "class";
        this.f6522c = true;
        this.f6528i = true;
        this.f6531l = new ObjectMap<>();
        this.f6532m = new ObjectMap<>();
        this.f6533n = new ObjectMap<>();
        this.f6534o = new ObjectMap<>();
        this.f6535p = new ObjectMap<>();
        this.f6536q = new Object[]{null};
        this.f6537r = new Object[]{null};
        this.f6523d = JsonWriter.OutputType.minimal;
    }

    /* renamed from: a */
    public final String m23631a(Enum r2) {
        return this.f6528i ? r2.name() : r2.toString();
    }

    /* renamed from: e */
    public boolean mo23627e(Class cls, String str) {
        return false;
    }

    @Null
    public <T> T fromJson(Class<T> cls, Reader reader) {
        return (T) readValue(cls, (Class) null, new JsonReader().parse(reader));
    }

    /* renamed from: g */
    public void m23625g(Class cls, Array<String> array) {
        if (this.f6529j) {
            array.sort();
        }
    }

    @Null
    public Class getClass(String str) {
        return this.f6532m.get(str);
    }

    public boolean getIgnoreUnknownFields() {
        return this.f6525f;
    }

    public <T> Serializer<T> getSerializer(Class<T> cls) {
        return this.f6534o.get(cls);
    }

    @Null
    public String getTag(Class cls) {
        return this.f6533n.get(cls);
    }

    public JsonWriter getWriter() {
        return this.f6520a;
    }

    public String prettyPrint(@Null Object obj) {
        return prettyPrint(obj, 0);
    }

    public void readField(Object obj, String str, JsonValue jsonValue) {
        readField(obj, str, str, (Class) null, jsonValue);
    }

    @Null
    public <T> T readValue(String str, @Null Class<T> cls, JsonValue jsonValue) {
        return (T) readValue(cls, (Class) null, jsonValue.get(str));
    }

    public void setDefaultSerializer(@Null Serializer serializer) {
        this.f6530k = serializer;
    }

    public void setEnumNames(boolean z) {
        this.f6528i = z;
    }

    public void setIgnoreDeprecated(boolean z) {
        this.f6526g = z;
    }

    public void setIgnoreUnknownFields(boolean z) {
        this.f6525f = z;
    }

    public void setOutputType(JsonWriter.OutputType outputType) {
        this.f6523d = outputType;
    }

    public void setQuoteLongValues(boolean z) {
        this.f6524e = z;
    }

    public void setReadDeprecated(boolean z) {
        this.f6527h = z;
    }

    public <T> void setSerializer(Class<T> cls, Serializer<T> serializer) {
        this.f6534o.put(cls, serializer);
    }

    public void setSortFields(boolean z) {
        this.f6529j = z;
    }

    public void setTypeName(@Null String str) {
        this.f6521b = str;
    }

    public void setUsePrototypes(boolean z) {
        this.f6522c = z;
    }

    public String toJson(@Null Object obj) {
        return toJson(obj, obj == null ? null : obj.getClass(), (Class) null);
    }

    public void writeArrayStart(String str) {
        try {
            this.f6520a.name(str);
            this.f6520a.array();
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    public void writeField(Object obj, String str) {
        writeField(obj, str, str, null);
    }

    public void writeObjectStart(String str) {
        try {
            this.f6520a.name(str);
            writeObjectStart();
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    public void writeValue(String str, @Null Object obj) {
        try {
            this.f6520a.name(str);
            if (obj == null) {
                writeValue(obj, (Class) null, (Class) null);
            } else {
                writeValue(obj, obj.getClass(), (Class) null);
            }
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    /* loaded from: classes.dex */
    public static class FieldMetadata {

        /* renamed from: a */
        public final Field f6538a;

        /* renamed from: b */
        public Class f6539b;

        /* renamed from: c */
        public boolean f6540c;

        public FieldMetadata(Field field) {
            int i;
            this.f6538a = field;
            if (!ClassReflection.isAssignableFrom(ObjectMap.class, field.getType()) && !ClassReflection.isAssignableFrom(Map.class, field.getType())) {
                i = 0;
            } else {
                i = 1;
            }
            this.f6539b = field.getElementType(i);
            this.f6540c = field.isAnnotationPresent(Deprecated.class);
        }
    }

    public void addClassTag(String str, Class cls) {
        this.f6532m.put(str, cls);
        this.f6533n.put(cls, str);
    }

    /* renamed from: b */
    public final String m23630b(Object obj) {
        if (obj instanceof Enum) {
            return m23631a((Enum) obj);
        }
        if (obj instanceof Class) {
            return ((Class) obj).getName();
        }
        return String.valueOf(obj);
    }

    @Null
    /* renamed from: c */
    public final Object[] m23629c(Class cls) {
        if (!this.f6522c) {
            return null;
        }
        if (this.f6535p.containsKey(cls)) {
            return this.f6535p.get(cls);
        }
        try {
            Object m23626f = m23626f(cls);
            OrderedMap<String, FieldMetadata> m23628d = m23628d(cls);
            Object[] objArr = new Object[m23628d.size];
            this.f6535p.put(cls, objArr);
            Array<String> orderedKeys = m23628d.orderedKeys();
            int i = orderedKeys.size;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                FieldMetadata fieldMetadata = m23628d.get(orderedKeys.get(i3));
                if (!this.f6526g || !fieldMetadata.f6540c) {
                    Field field = fieldMetadata.f6538a;
                    int i4 = i2 + 1;
                    try {
                        objArr[i2] = field.get(m23626f);
                        i2 = i4;
                    } catch (SerializationException e) {
                        e.addTrace(field + " (" + cls.getName() + ")");
                        throw e;
                    } catch (ReflectionException e2) {
                        throw new SerializationException("Error accessing field: " + field.getName() + " (" + cls.getName() + ")", e2);
                    } catch (RuntimeException e3) {
                        SerializationException serializationException = new SerializationException(e3);
                        serializationException.addTrace(field + " (" + cls.getName() + ")");
                        throw serializationException;
                    }
                }
            }
            return objArr;
        } catch (Exception unused) {
            this.f6535p.put(cls, null);
            return null;
        }
    }

    /* renamed from: d */
    public final OrderedMap<String, FieldMetadata> m23628d(Class cls) {
        OrderedMap<String, FieldMetadata> orderedMap = this.f6531l.get(cls);
        if (orderedMap != null) {
            return orderedMap;
        }
        Array array = new Array();
        for (Class cls2 = cls; cls2 != Object.class; cls2 = cls2.getSuperclass()) {
            array.add(cls2);
        }
        ArrayList arrayList = new ArrayList();
        for (int i = array.size - 1; i >= 0; i--) {
            java.util.Collections.addAll(arrayList, ClassReflection.getDeclaredFields((Class) array.get(i)));
        }
        OrderedMap<String, FieldMetadata> orderedMap2 = new OrderedMap<>(arrayList.size());
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Field field = (Field) arrayList.get(i2);
            if (!field.isTransient() && !field.isStatic() && !field.isSynthetic()) {
                if (!field.isAccessible()) {
                    try {
                        field.setAccessible(true);
                    } catch (AccessControlException unused) {
                    }
                }
                orderedMap2.put(field.getName(), new FieldMetadata(field));
            }
        }
        m23625g(cls, orderedMap2.f6683y);
        this.f6531l.put(cls, orderedMap2);
        return orderedMap2;
    }

    @Null
    public <T> T fromJson(Class<T> cls, Class cls2, Reader reader) {
        return (T) readValue(cls, cls2, new JsonReader().parse(reader));
    }

    public String prettyPrint(String str) {
        return prettyPrint(str, 0);
    }

    public void readField(Object obj, String str, @Null Class cls, JsonValue jsonValue) {
        readField(obj, str, str, cls, jsonValue);
    }

    @Null
    public <T> T readValue(String str, @Null Class<T> cls, T t, JsonValue jsonValue) {
        JsonValue jsonValue2 = jsonValue.get(str);
        return jsonValue2 == null ? t : (T) readValue(cls, (Class) null, jsonValue2);
    }

    public void setWriter(Writer writer) {
        if (!(writer instanceof JsonWriter)) {
            writer = new JsonWriter(writer);
        }
        JsonWriter jsonWriter = (JsonWriter) writer;
        this.f6520a = jsonWriter;
        jsonWriter.setOutputType(this.f6523d);
        this.f6520a.setQuoteLongValues(this.f6524e);
    }

    public String toJson(@Null Object obj, @Null Class cls) {
        return toJson(obj, cls, (Class) null);
    }

    public void writeArrayEnd() {
        try {
            this.f6520a.pop();
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    public void writeField(Object obj, String str, @Null Class cls) {
        writeField(obj, str, str, cls);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x007d, code lost:
        if (java.util.Arrays.deepEquals(r0, r5) != false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeFields(java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.Json.writeFields(java.lang.Object):void");
    }

    public void writeObjectEnd() {
        try {
            this.f6520a.pop();
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    public void writeType(Class cls) {
        if (this.f6521b == null) {
            return;
        }
        String tag = getTag(cls);
        if (tag == null) {
            tag = cls.getName();
        }
        try {
            this.f6520a.set(this.f6521b, tag);
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    public void copyFields(Object obj, Object obj2) {
        OrderedMap<String, FieldMetadata> m23628d = m23628d(obj2.getClass());
        ObjectMap.Entries<String, FieldMetadata> it = m23628d(obj.getClass()).iterator();
        while (it.hasNext()) {
            ObjectMap.Entry next = it.next();
            FieldMetadata fieldMetadata = m23628d.get(next.key);
            Field field = ((FieldMetadata) next.value).f6538a;
            if (fieldMetadata != null) {
                try {
                    fieldMetadata.f6538a.set(obj2, field.get(obj));
                } catch (ReflectionException e) {
                    throw new SerializationException("Error copying field: " + field.getName(), e);
                }
            } else {
                throw new SerializationException("To object is missing field: " + ((String) next.key));
            }
        }
    }

    /* renamed from: f */
    public Object m23626f(Class cls) {
        try {
            return ClassReflection.newInstance(cls);
        } catch (Exception e) {
            e = e;
            try {
                Constructor declaredConstructor = ClassReflection.getDeclaredConstructor(cls, new Class[0]);
                declaredConstructor.setAccessible(true);
                return declaredConstructor.newInstance(new Object[0]);
            } catch (ReflectionException unused) {
                if (ClassReflection.isAssignableFrom(Enum.class, cls)) {
                    if (cls.getEnumConstants() == null) {
                        cls = cls.getSuperclass();
                    }
                    return cls.getEnumConstants()[0];
                } else if (!cls.isArray()) {
                    if (ClassReflection.isMemberClass(cls) && !ClassReflection.isStaticClass(cls)) {
                        throw new SerializationException("Class cannot be created (non-static member class): " + cls.getName(), e);
                    }
                    throw new SerializationException("Class cannot be created (missing no-arg constructor): " + cls.getName(), e);
                } else {
                    throw new SerializationException("Encountered JSON object when expected array of type: " + cls.getName(), e);
                }
            } catch (SecurityException unused2) {
                throw new SerializationException("Error constructing instance of class: " + cls.getName(), e);
            } catch (Exception e2) {
                e = e2;
                throw new SerializationException("Error constructing instance of class: " + cls.getName(), e);
            }
        }
    }

    @Null
    public <T> T fromJson(Class<T> cls, InputStream inputStream) {
        return (T) readValue(cls, (Class) null, new JsonReader().parse(inputStream));
    }

    public String prettyPrint(@Null Object obj, int i) {
        return prettyPrint(toJson(obj), i);
    }

    public void readField(Object obj, String str, String str2, JsonValue jsonValue) {
        readField(obj, str, str2, (Class) null, jsonValue);
    }

    public void readFields(Object obj, JsonValue jsonValue) {
        Class<?> cls = obj.getClass();
        OrderedMap<String, FieldMetadata> m23628d = m23628d(cls);
        for (JsonValue jsonValue2 = jsonValue.child; jsonValue2 != null; jsonValue2 = jsonValue2.next) {
            FieldMetadata fieldMetadata = m23628d.get(jsonValue2.name().replace(" ", JavaConstant.Dynamic.DEFAULT_NAME));
            if (fieldMetadata == null) {
                if (!jsonValue2.name.equals(this.f6521b) && !this.f6525f && !mo23627e(cls, jsonValue2.name)) {
                    SerializationException serializationException = new SerializationException("Field not found: " + jsonValue2.name + " (" + cls.getName() + ")");
                    serializationException.addTrace(jsonValue2.trace());
                    throw serializationException;
                }
            } else if (!this.f6526g || this.f6527h || !fieldMetadata.f6540c) {
                Field field = fieldMetadata.f6538a;
                try {
                    field.set(obj, readValue(field.getType(), fieldMetadata.f6539b, jsonValue2));
                } catch (SerializationException e) {
                    e.addTrace(field.getName() + " (" + cls.getName() + ")");
                    throw e;
                } catch (ReflectionException e2) {
                    throw new SerializationException("Error accessing field: " + field.getName() + " (" + cls.getName() + ")", e2);
                } catch (RuntimeException e3) {
                    SerializationException serializationException2 = new SerializationException(e3);
                    serializationException2.addTrace(jsonValue2.trace());
                    serializationException2.addTrace(field.getName() + " (" + cls.getName() + ")");
                    throw serializationException2;
                }
            }
        }
    }

    public void setDeprecated(Class cls, String str, boolean z) {
        FieldMetadata fieldMetadata = m23628d(cls).get(str);
        if (fieldMetadata != null) {
            fieldMetadata.f6540c = z;
            return;
        }
        throw new SerializationException("Field not found: " + str + " (" + cls.getName() + ")");
    }

    public void setElementType(Class cls, String str, Class cls2) {
        FieldMetadata fieldMetadata = m23628d(cls).get(str);
        if (fieldMetadata != null) {
            fieldMetadata.f6539b = cls2;
            return;
        }
        throw new SerializationException("Field not found: " + str + " (" + cls.getName() + ")");
    }

    public String toJson(@Null Object obj, @Null Class cls, @Null Class cls2) {
        StringWriter stringWriter = new StringWriter();
        toJson(obj, cls, cls2, stringWriter);
        return stringWriter.toString();
    }

    public void writeField(Object obj, String str, String str2) {
        writeField(obj, str, str2, null);
    }

    @Null
    public <T> T fromJson(Class<T> cls, Class cls2, InputStream inputStream) {
        return (T) readValue(cls, cls2, new JsonReader().parse(inputStream));
    }

    public String prettyPrint(String str, int i) {
        return new JsonReader().parse(str).prettyPrint(this.f6523d, i);
    }

    public void readField(Object obj, String str, String str2, @Null Class cls, JsonValue jsonValue) {
        Class<?> cls2 = obj.getClass();
        FieldMetadata fieldMetadata = m23628d(cls2).get(str);
        if (fieldMetadata != null) {
            Field field = fieldMetadata.f6538a;
            if (cls == null) {
                cls = fieldMetadata.f6539b;
            }
            readField(obj, field, str2, cls, jsonValue);
            return;
        }
        throw new SerializationException("Field not found: " + str + " (" + cls2.getName() + ")");
    }

    @Null
    public <T> T readValue(String str, @Null Class<T> cls, @Null Class cls2, JsonValue jsonValue) {
        return (T) readValue(cls, cls2, jsonValue.get(str));
    }

    public void writeArrayStart() {
        try {
            this.f6520a.array();
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    public void writeField(Object obj, String str, String str2, @Null Class cls) {
        Class<?> cls2 = obj.getClass();
        FieldMetadata fieldMetadata = m23628d(cls2).get(str);
        if (fieldMetadata != null) {
            Field field = fieldMetadata.f6538a;
            if (cls == null) {
                cls = fieldMetadata.f6539b;
            }
            try {
                this.f6520a.name(str2);
                writeValue(field.get(obj), field.getType(), cls);
                return;
            } catch (SerializationException e) {
                e.addTrace(field + " (" + cls2.getName() + ")");
                throw e;
            } catch (ReflectionException e2) {
                throw new SerializationException("Error accessing field: " + field.getName() + " (" + cls2.getName() + ")", e2);
            } catch (Exception e3) {
                SerializationException serializationException = new SerializationException(e3);
                serializationException.addTrace(field + " (" + cls2.getName() + ")");
                throw serializationException;
            }
        }
        throw new SerializationException("Field not found: " + str + " (" + cls2.getName() + ")");
    }

    public void writeObjectStart(String str, Class cls, @Null Class cls2) {
        try {
            this.f6520a.name(str);
            writeObjectStart(cls, cls2);
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    @Null
    public <T> T fromJson(Class<T> cls, FileHandle fileHandle) {
        try {
            return (T) readValue(cls, (Class) null, new JsonReader().parse(fileHandle));
        } catch (Exception e) {
            throw new SerializationException("Error reading file: " + fileHandle, e);
        }
    }

    public String prettyPrint(@Null Object obj, JsonValue.PrettyPrintSettings prettyPrintSettings) {
        return prettyPrint(toJson(obj), prettyPrintSettings);
    }

    @Null
    public <T> T readValue(String str, @Null Class<T> cls, @Null Class cls2, T t, JsonValue jsonValue) {
        return (T) readValue((Class<Class>) cls, cls2, (Class) t, jsonValue.get(str));
    }

    public void writeValue(String str, @Null Object obj, @Null Class cls) {
        try {
            this.f6520a.name(str);
            writeValue(obj, cls, (Class) null);
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    public String prettyPrint(String str, JsonValue.PrettyPrintSettings prettyPrintSettings) {
        return new JsonReader().parse(str).prettyPrint(prettyPrintSettings);
    }

    public void toJson(@Null Object obj, FileHandle fileHandle) {
        toJson(obj, obj == null ? null : obj.getClass(), (Class) null, fileHandle);
    }

    @Null
    public <T> T fromJson(Class<T> cls, Class cls2, FileHandle fileHandle) {
        try {
            return (T) readValue(cls, cls2, new JsonReader().parse(fileHandle));
        } catch (Exception e) {
            throw new SerializationException("Error reading file: " + fileHandle, e);
        }
    }

    @Null
    public <T> T readValue(@Null Class<T> cls, @Null Class cls2, T t, JsonValue jsonValue) {
        return jsonValue == null ? t : (T) readValue(cls, cls2, jsonValue);
    }

    public void toJson(@Null Object obj, @Null Class cls, FileHandle fileHandle) {
        toJson(obj, cls, (Class) null, fileHandle);
    }

    public void writeObjectStart() {
        try {
            this.f6520a.object();
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    @Null
    public <T> T readValue(@Null Class<T> cls, JsonValue jsonValue) {
        return (T) readValue(cls, (Class) null, jsonValue);
    }

    public void toJson(@Null Object obj, @Null Class cls, @Null Class cls2, FileHandle fileHandle) {
        Writer writer = null;
        try {
            try {
                writer = fileHandle.writer(false, "UTF-8");
                toJson(obj, cls, cls2, writer);
            } catch (Exception e) {
                throw new SerializationException("Error writing file: " + fileHandle, e);
            }
        } finally {
            StreamUtils.closeQuietly(writer);
        }
    }

    public void writeValue(String str, @Null Object obj, @Null Class cls, @Null Class cls2) {
        try {
            this.f6520a.name(str);
            writeValue(obj, cls, cls2);
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    @Null
    public <T> T fromJson(Class<T> cls, char[] cArr, int i, int i2) {
        return (T) readValue(cls, (Class) null, new JsonReader().parse(cArr, i, i2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:0x020b, code lost:
        if (r0 == java.lang.Object.class) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x0357, code lost:
        if (r0 == r3) goto L135;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:233:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x0434 A[RETURN] */
    /* JADX WARN: Type inference failed for: r0v51, types: [T, java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v52, types: [T, com.badlogic.gdx.utils.ArrayMap] */
    /* JADX WARN: Type inference failed for: r0v53, types: [T, com.badlogic.gdx.utils.IntSet] */
    /* JADX WARN: Type inference failed for: r0v54, types: [com.badlogic.gdx.utils.LongMap, T] */
    /* JADX WARN: Type inference failed for: r0v55, types: [T, com.badlogic.gdx.utils.IntMap] */
    /* JADX WARN: Type inference failed for: r0v56, types: [T, com.badlogic.gdx.utils.ObjectSet] */
    /* JADX WARN: Type inference failed for: r0v57, types: [T, com.badlogic.gdx.utils.ObjectFloatMap] */
    /* JADX WARN: Type inference failed for: r0v58, types: [T, com.badlogic.gdx.utils.ObjectIntMap] */
    /* JADX WARN: Type inference failed for: r0v59, types: [T, com.badlogic.gdx.utils.ObjectMap] */
    /* JADX WARN: Type inference failed for: r0v91, types: [com.badlogic.gdx.utils.Queue] */
    /* JADX WARN: Type inference failed for: r0v95, types: [com.badlogic.gdx.utils.Array] */
    /* JADX WARN: Type inference failed for: r13v4, types: [com.badlogic.gdx.utils.Json$Serializer] */
    /* JADX WARN: Type inference failed for: r14v4, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r21v0, types: [com.badlogic.gdx.utils.Json] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.badlogic.gdx.utils.JsonValue, T] */
    /* JADX WARN: Type inference failed for: r2v47, types: [com.badlogic.gdx.utils.JsonValue, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v81, types: [com.badlogic.gdx.utils.Json$Serializable] */
    /* JADX WARN: Type inference failed for: r3v83, types: [com.badlogic.gdx.utils.Json$Serializer] */
    /* JADX WARN: Type inference failed for: r4v17, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Enum, T] */
    @com.badlogic.gdx.utils.Null
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> T readValue(@com.badlogic.gdx.utils.Null java.lang.Class<T> r22, @com.badlogic.gdx.utils.Null java.lang.Class r23, com.badlogic.gdx.utils.JsonValue r24) {
        /*
            Method dump skipped, instructions count: 1078
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.Json.readValue(java.lang.Class, java.lang.Class, com.badlogic.gdx.utils.JsonValue):java.lang.Object");
    }

    public void writeObjectStart(Class cls, @Null Class cls2) {
        try {
            this.f6520a.object();
            if (cls2 == null || cls2 != cls) {
                writeType(cls);
            }
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    @Null
    public <T> T fromJson(Class<T> cls, Class cls2, char[] cArr, int i, int i2) {
        return (T) readValue(cls, cls2, new JsonReader().parse(cArr, i, i2));
    }

    public void readField(@Null Object obj, Field field, String str, @Null Class cls, JsonValue jsonValue) {
        JsonValue jsonValue2 = jsonValue.get(str);
        if (jsonValue2 == null) {
            return;
        }
        try {
            field.set(obj, readValue(field.getType(), cls, jsonValue2));
        } catch (SerializationException e) {
            e.addTrace(field.getName() + " (" + field.getDeclaringClass().getName() + ")");
            throw e;
        } catch (ReflectionException e2) {
            throw new SerializationException("Error accessing field: " + field.getName() + " (" + field.getDeclaringClass().getName() + ")", e2);
        } catch (RuntimeException e3) {
            SerializationException serializationException = new SerializationException(e3);
            serializationException.addTrace(jsonValue2.trace());
            serializationException.addTrace(field.getName() + " (" + field.getDeclaringClass().getName() + ")");
            throw serializationException;
        }
    }

    @Null
    public <T> T fromJson(Class<T> cls, String str) {
        return (T) readValue(cls, (Class) null, new JsonReader().parse(str));
    }

    public void writeValue(@Null Object obj) {
        if (obj == null) {
            writeValue(obj, (Class) null, (Class) null);
        } else {
            writeValue(obj, obj.getClass(), (Class) null);
        }
    }

    public Json(JsonWriter.OutputType outputType) {
        this.f6521b = "class";
        this.f6522c = true;
        this.f6528i = true;
        this.f6531l = new ObjectMap<>();
        this.f6532m = new ObjectMap<>();
        this.f6533n = new ObjectMap<>();
        this.f6534o = new ObjectMap<>();
        this.f6535p = new ObjectMap<>();
        this.f6536q = new Object[]{null};
        this.f6537r = new Object[]{null};
        this.f6523d = outputType;
    }

    @Null
    public <T> T fromJson(Class<T> cls, Class cls2, String str) {
        return (T) readValue(cls, cls2, new JsonReader().parse(str));
    }

    public void writeValue(@Null Object obj, @Null Class cls) {
        writeValue(obj, cls, (Class) null);
    }

    public void toJson(@Null Object obj, Writer writer) {
        toJson(obj, obj == null ? null : obj.getClass(), (Class) null, writer);
    }

    public void writeValue(@Null Object obj, @Null Class cls, @Null Class cls2) {
        Class cls3 = cls;
        try {
            if (obj == null) {
                this.f6520a.value(null);
                return;
            }
            if ((cls3 == null || !cls.isPrimitive()) && cls3 != String.class && cls3 != Integer.class && cls3 != Boolean.class && cls3 != Float.class && cls3 != Long.class && cls3 != Double.class && cls3 != Short.class && cls3 != Byte.class && cls3 != Character.class) {
                Class<?> cls4 = obj.getClass();
                if (!cls4.isPrimitive() && cls4 != String.class && cls4 != Integer.class && cls4 != Boolean.class && cls4 != Float.class && cls4 != Long.class && cls4 != Double.class && cls4 != Short.class && cls4 != Byte.class && cls4 != Character.class) {
                    if (obj instanceof Serializable) {
                        writeObjectStart(cls4, cls3);
                        ((Serializable) obj).write(this);
                        writeObjectEnd();
                        return;
                    }
                    Serializer serializer = this.f6534o.get(cls4);
                    if (serializer != null) {
                        serializer.write(this, obj, cls3);
                        return;
                    }
                    int i = 0;
                    if (obj instanceof Array) {
                        if (cls3 != null && cls4 != cls3 && cls4 != Array.class) {
                            throw new SerializationException("Serialization of an Array other than the known type is not supported.\nKnown type: " + cls3 + "\nActual type: " + cls4);
                        }
                        writeArrayStart();
                        Array array = (Array) obj;
                        int i2 = array.size;
                        while (i < i2) {
                            writeValue(array.get(i), cls2, (Class) null);
                            i++;
                        }
                        writeArrayEnd();
                        return;
                    } else if (obj instanceof Queue) {
                        if (cls3 != null && cls4 != cls3 && cls4 != Queue.class) {
                            throw new SerializationException("Serialization of a Queue other than the known type is not supported.\nKnown type: " + cls3 + "\nActual type: " + cls4);
                        }
                        writeArrayStart();
                        Queue queue = (Queue) obj;
                        int i3 = queue.size;
                        while (i < i3) {
                            writeValue(queue.get(i), cls2, (Class) null);
                            i++;
                        }
                        writeArrayEnd();
                        return;
                    } else if (obj instanceof Collection) {
                        if (this.f6521b != null && cls4 != ArrayList.class && (cls3 == null || cls3 != cls4)) {
                            writeObjectStart(cls4, cls3);
                            writeArrayStart("items");
                            for (Object obj2 : (Collection) obj) {
                                writeValue(obj2, cls2, (Class) null);
                            }
                            writeArrayEnd();
                            writeObjectEnd();
                            return;
                        }
                        writeArrayStart();
                        for (Object obj3 : (Collection) obj) {
                            writeValue(obj3, cls2, (Class) null);
                        }
                        writeArrayEnd();
                        return;
                    } else if (cls4.isArray()) {
                        Class<?> componentType = cls2 == null ? cls4.getComponentType() : cls2;
                        int length = ArrayReflection.getLength(obj);
                        writeArrayStart();
                        while (i < length) {
                            writeValue(ArrayReflection.get(obj, i), componentType, (Class) null);
                            i++;
                        }
                        writeArrayEnd();
                        return;
                    } else if (obj instanceof ObjectMap) {
                        if (cls3 == null) {
                            cls3 = ObjectMap.class;
                        }
                        writeObjectStart(cls4, cls3);
                        ObjectMap.Entries it = ((ObjectMap) obj).entries().iterator();
                        while (it.hasNext()) {
                            ObjectMap.Entry next = it.next();
                            this.f6520a.name(m23630b(next.key));
                            writeValue(next.value, cls2, (Class) null);
                        }
                        writeObjectEnd();
                        return;
                    } else if (obj instanceof ObjectIntMap) {
                        if (cls3 == null) {
                            cls3 = ObjectIntMap.class;
                        }
                        writeObjectStart(cls4, cls3);
                        ObjectIntMap.Entries it2 = ((ObjectIntMap) obj).entries().iterator();
                        while (it2.hasNext()) {
                            ObjectIntMap.Entry next2 = it2.next();
                            this.f6520a.name(m23630b(next2.key));
                            writeValue(Integer.valueOf(next2.value), Integer.class);
                        }
                        writeObjectEnd();
                        return;
                    } else if (obj instanceof ObjectFloatMap) {
                        if (cls3 == null) {
                            cls3 = ObjectFloatMap.class;
                        }
                        writeObjectStart(cls4, cls3);
                        ObjectFloatMap.Entries it3 = ((ObjectFloatMap) obj).entries().iterator();
                        while (it3.hasNext()) {
                            ObjectFloatMap.Entry next3 = it3.next();
                            this.f6520a.name(m23630b(next3.key));
                            writeValue(Float.valueOf(next3.value), Float.class);
                        }
                        writeObjectEnd();
                        return;
                    } else if (obj instanceof ObjectSet) {
                        if (cls3 == null) {
                            cls3 = ObjectSet.class;
                        }
                        writeObjectStart(cls4, cls3);
                        this.f6520a.name(ByteBuddy.EnumerationImplementation.ENUM_VALUES_METHOD_NAME);
                        writeArrayStart();
                        ObjectSet.ObjectSetIterator it4 = ((ObjectSet) obj).iterator();
                        while (it4.hasNext()) {
                            writeValue(it4.next(), cls2, (Class) null);
                        }
                        writeArrayEnd();
                        writeObjectEnd();
                        return;
                    } else if (obj instanceof IntMap) {
                        if (cls3 == null) {
                            cls3 = IntMap.class;
                        }
                        writeObjectStart(cls4, cls3);
                        Iterator it5 = ((IntMap) obj).entries().iterator();
                        while (it5.hasNext()) {
                            IntMap.Entry entry = (IntMap.Entry) it5.next();
                            this.f6520a.name(String.valueOf(entry.key));
                            writeValue(entry.value, cls2, (Class) null);
                        }
                        writeObjectEnd();
                        return;
                    } else if (obj instanceof LongMap) {
                        if (cls3 == null) {
                            cls3 = LongMap.class;
                        }
                        writeObjectStart(cls4, cls3);
                        Iterator it6 = ((LongMap) obj).entries().iterator();
                        while (it6.hasNext()) {
                            LongMap.Entry entry2 = (LongMap.Entry) it6.next();
                            this.f6520a.name(String.valueOf(entry2.key));
                            writeValue(entry2.value, cls2, (Class) null);
                        }
                        writeObjectEnd();
                        return;
                    } else if (obj instanceof IntSet) {
                        if (cls3 == null) {
                            cls3 = IntSet.class;
                        }
                        writeObjectStart(cls4, cls3);
                        this.f6520a.name(ByteBuddy.EnumerationImplementation.ENUM_VALUES_METHOD_NAME);
                        writeArrayStart();
                        IntSet.IntSetIterator it7 = ((IntSet) obj).iterator();
                        while (it7.hasNext) {
                            writeValue(Integer.valueOf(it7.next()), Integer.class, (Class) null);
                        }
                        writeArrayEnd();
                        writeObjectEnd();
                        return;
                    } else if (obj instanceof ArrayMap) {
                        if (cls3 == null) {
                            cls3 = ArrayMap.class;
                        }
                        writeObjectStart(cls4, cls3);
                        ArrayMap arrayMap = (ArrayMap) obj;
                        int i4 = arrayMap.size;
                        while (i < i4) {
                            this.f6520a.name(m23630b(arrayMap.keys[i]));
                            writeValue(arrayMap.values[i], cls2, (Class) null);
                            i++;
                        }
                        writeObjectEnd();
                        return;
                    } else if (obj instanceof Map) {
                        if (cls3 == null) {
                            cls3 = HashMap.class;
                        }
                        writeObjectStart(cls4, cls3);
                        for (Map.Entry entry3 : ((Map) obj).entrySet()) {
                            this.f6520a.name(m23630b(entry3.getKey()));
                            writeValue(entry3.getValue(), cls2, (Class) null);
                        }
                        writeObjectEnd();
                        return;
                    } else if (ClassReflection.isAssignableFrom(Enum.class, cls4)) {
                        if (cls4.getEnumConstants() == null) {
                            cls4 = cls4.getSuperclass();
                        }
                        if (this.f6521b != null && (cls3 == null || cls3 != cls4)) {
                            writeObjectStart(cls4, null);
                            this.f6520a.name("value");
                            this.f6520a.value(m23631a((Enum) obj));
                            writeObjectEnd();
                            return;
                        }
                        this.f6520a.value(m23631a((Enum) obj));
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
            this.f6520a.value(obj);
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    public void toJson(@Null Object obj, @Null Class cls, Writer writer) {
        toJson(obj, cls, (Class) null, writer);
    }

    public void toJson(@Null Object obj, @Null Class cls, @Null Class cls2, Writer writer) {
        setWriter(writer);
        try {
            writeValue(obj, cls, cls2);
        } finally {
            StreamUtils.closeQuietly(this.f6520a);
            this.f6520a = null;
        }
    }
}
