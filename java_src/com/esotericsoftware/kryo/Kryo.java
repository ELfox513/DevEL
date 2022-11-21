package com.esotericsoftware.kryo;

import com.esotericsoftware.kryo.SerializerFactory;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.kryo.serializers.ClosureSerializer;
import com.esotericsoftware.kryo.serializers.CollectionSerializer;
import com.esotericsoftware.kryo.serializers.DefaultArraySerializers;
import com.esotericsoftware.kryo.serializers.DefaultSerializers;
import com.esotericsoftware.kryo.serializers.ImmutableCollectionsSerializers;
import com.esotericsoftware.kryo.serializers.MapSerializer;
import com.esotericsoftware.kryo.serializers.OptionalSerializers;
import com.esotericsoftware.kryo.serializers.RecordSerializer;
import com.esotericsoftware.kryo.serializers.TimeSerializers;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import com.esotericsoftware.kryo.util.DefaultGenerics;
import com.esotericsoftware.kryo.util.DefaultInstantiatorStrategy;
import com.esotericsoftware.kryo.util.Generics;
import com.esotericsoftware.kryo.util.IdentityMap;
import com.esotericsoftware.kryo.util.IntArray;
import com.esotericsoftware.kryo.util.MapReferenceResolver;
import com.esotericsoftware.kryo.util.NoGenerics;
import com.esotericsoftware.kryo.util.ObjectMap;
import com.esotericsoftware.kryo.util.Util;
import com.esotericsoftware.minlog.Log;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Currency;
import java.util.Date;
import java.util.EnumSet;
import java.util.Locale;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentSkipListMap;
import p198u7.InterfaceC6946a;
import p207v7.InterfaceC7079a;
/* loaded from: classes.dex */
public class Kryo {
    public static final byte NOT_NULL = 1;
    public static final byte NULL = 0;

    /* renamed from: a */
    public SerializerFactory f7230a;

    /* renamed from: b */
    public final ArrayList<DefaultSerializerEntry> f7231b;

    /* renamed from: c */
    public final int f7232c;

    /* renamed from: d */
    public final ClassResolver f7233d;

    /* renamed from: e */
    public int f7234e;

    /* renamed from: f */
    public ClassLoader f7235f;

    /* renamed from: g */
    public InterfaceC7079a f7236g;

    /* renamed from: h */
    public boolean f7237h;

    /* renamed from: i */
    public boolean f7238i;

    /* renamed from: j */
    public int f7239j;

    /* renamed from: k */
    public int f7240k;

    /* renamed from: l */
    public boolean f7241l;

    /* renamed from: m */
    public volatile Thread f7242m;

    /* renamed from: n */
    public ObjectMap f7243n;

    /* renamed from: o */
    public ObjectMap f7244o;

    /* renamed from: p */
    public ReferenceResolver f7245p;

    /* renamed from: q */
    public final IntArray f7246q;

    /* renamed from: r */
    public boolean f7247r;

    /* renamed from: s */
    public boolean f7248s;

    /* renamed from: t */
    public Object f7249t;

    /* renamed from: u */
    public int f7250u;

    /* renamed from: v */
    public boolean f7251v;

    /* renamed from: w */
    public IdentityMap f7252w;

    /* renamed from: x */
    public Object f7253x;

    /* renamed from: y */
    public Generics f7254y;

    public Kryo() {
        this(new DefaultClassResolver(), null);
    }

    public void addDefaultSerializer(Class cls, Serializer serializer) {
        if (cls == null) {
            throw new IllegalArgumentException("type cannot be null.");
        }
        if (serializer != null) {
            m23288c(cls, new SerializerFactory.SingletonSerializerFactory(serializer));
            return;
        }
        throw new IllegalArgumentException("serializer cannot be null.");
    }

    public <T> T copy(T t) {
        T t2;
        if (t == null) {
            return null;
        }
        if (this.f7251v) {
            return t;
        }
        this.f7250u++;
        try {
            if (this.f7252w == null) {
                this.f7252w = new IdentityMap();
            }
            T t3 = (T) this.f7252w.get(t);
            if (t3 != null) {
                return t3;
            }
            if (this.f7248s) {
                this.f7253x = t;
            }
            if (t instanceof KryoCopyable) {
                t2 = (T) ((KryoCopyable) t).copy(this);
            } else {
                t2 = (T) getSerializer(t.getClass()).copy(this, t);
            }
            if (this.f7253x != null) {
                reference(t2);
            }
            if (Log.TRACE || (Log.DEBUG && this.f7250u == 1)) {
                Util.log("Copy", t2, -1);
            }
            int i = this.f7250u - 1;
            this.f7250u = i;
            if (i == 0) {
                reset();
            }
            return t2;
        } finally {
            int i2 = this.f7250u - 1;
            this.f7250u = i2;
            if (i2 == 0) {
                reset();
            }
        }
    }

    public <T> T copyShallow(T t) {
        T t2;
        if (t == null) {
            return null;
        }
        this.f7250u++;
        this.f7251v = true;
        try {
            if (this.f7252w == null) {
                this.f7252w = new IdentityMap();
            }
            T t3 = (T) this.f7252w.get(t);
            if (t3 != null) {
                return t3;
            }
            if (this.f7248s) {
                this.f7253x = t;
            }
            if (t instanceof KryoCopyable) {
                t2 = (T) ((KryoCopyable) t).copy(this);
            } else {
                t2 = (T) getSerializer(t.getClass()).copy(this, t);
            }
            if (this.f7253x != null) {
                reference(t2);
            }
            if (Log.TRACE || (Log.DEBUG && this.f7250u == 1)) {
                Util.log("Shallow copy", t2, -1);
            }
            this.f7251v = false;
            int i = this.f7250u - 1;
            this.f7250u = i;
            if (i == 0) {
                reset();
            }
            return t2;
        } finally {
            this.f7251v = false;
            int i2 = this.f7250u - 1;
            this.f7250u = i2;
            if (i2 == 0) {
                reset();
            }
        }
    }

    /* renamed from: e */
    public boolean m23286e(Output output, Object obj, boolean z) {
        if (obj == null) {
            if (Log.TRACE || (Log.DEBUG && this.f7239j == 1)) {
                Util.log("Write", null, output.position());
            }
            output.writeByte((byte) 0);
            return true;
        } else if (!this.f7245p.useReferences(obj.getClass())) {
            if (z) {
                if (Log.TRACE) {
                    Log.trace("kryo", "Write: <not null>" + Util.pos(output.position()));
                }
                output.writeByte((byte) 1);
            }
            return false;
        } else {
            int writtenId = this.f7245p.getWrittenId(obj);
            if (writtenId != -1) {
                if (Log.DEBUG) {
                    Log.debug("kryo", "Write reference " + writtenId + ": " + Util.string(obj) + Util.pos(output.position()));
                }
                output.writeVarInt(writtenId + 2, true);
                return true;
            }
            int addWrittenObject = this.f7245p.addWrittenObject(obj);
            if (Log.TRACE) {
                Log.trace("kryo", "Write: <not null>" + Util.pos(output.position()));
            }
            output.writeByte((byte) 1);
            if (Log.TRACE) {
                Log.trace("kryo", "Write initial reference " + addWrittenObject + ": " + Util.string(obj) + Util.pos(output.position()));
            }
            return false;
        }
    }

    public ClassLoader getClassLoader() {
        return this.f7235f;
    }

    public ClassResolver getClassResolver() {
        return this.f7233d;
    }

    public int getDepth() {
        return this.f7239j;
    }

    public Generics getGenerics() {
        return this.f7254y;
    }

    public InterfaceC7079a getInstantiatorStrategy() {
        return this.f7236g;
    }

    public IdentityMap getOriginalToCopyMap() {
        return this.f7252w;
    }

    public ReferenceResolver getReferenceResolver() {
        return this.f7245p;
    }

    public boolean getReferences() {
        return this.f7247r;
    }

    public Registration getRegistration(Class cls) {
        if (cls != null) {
            Registration registration = this.f7233d.getRegistration(cls);
            if (registration == null) {
                if (Proxy.isProxyClass(cls)) {
                    registration = getRegistration(InvocationHandler.class);
                } else if (!cls.isEnum() && Enum.class.isAssignableFrom(cls) && cls != Enum.class) {
                    while (true) {
                        cls = cls.getSuperclass();
                        if (cls == null) {
                            break;
                        } else if (cls.isEnum()) {
                            registration = this.f7233d.getRegistration(cls);
                            break;
                        }
                    }
                } else if (EnumSet.class.isAssignableFrom(cls)) {
                    registration = this.f7233d.getRegistration(EnumSet.class);
                } else if (isClosure(cls)) {
                    registration = this.f7233d.getRegistration(ClosureSerializer.Closure.class);
                }
                if (registration == null) {
                    if (!this.f7237h) {
                        if (Log.WARN && this.f7238i) {
                            Log.warn(unregisteredClassMessage(cls));
                        }
                        return this.f7233d.registerImplicit(cls);
                    }
                    throw new IllegalArgumentException(unregisteredClassMessage(cls));
                }
                return registration;
            }
            return registration;
        }
        throw new IllegalArgumentException("type cannot be null.");
    }

    public Serializer getSerializer(Class cls) {
        return getRegistration(cls).getSerializer();
    }

    public boolean getWarnUnregisteredClasses() {
        return this.f7238i;
    }

    public boolean isRegistrationRequired() {
        return this.f7237h;
    }

    public Serializer newDefaultSerializer(Class cls) {
        return this.f7230a.newSerializer(this, cls);
    }

    public InterfaceC6946a newInstantiator(Class cls) {
        return this.f7236g.newInstantiatorOf(cls);
    }

    public <T> T readObject(Input input, Class<T> cls) {
        T t;
        if (input != null) {
            if (cls != null) {
                m23289b();
                try {
                    if (this.f7247r) {
                        int m23287d = m23287d(input, cls, false);
                        if (m23287d == -1) {
                            return (T) this.f7249t;
                        }
                        t = (T) getRegistration(cls).getSerializer().read(this, input, cls);
                        if (m23287d == this.f7246q.size) {
                            reference(t);
                        }
                    } else {
                        t = (T) getRegistration(cls).getSerializer().read(this, input, cls);
                    }
                    if (Log.TRACE || (Log.DEBUG && this.f7239j == 1)) {
                        Util.log("Read", t, input.position());
                    }
                    int i = this.f7239j - 1;
                    this.f7239j = i;
                    if (i == 0 && this.f7241l) {
                        reset();
                    }
                    return t;
                } finally {
                    int i2 = this.f7239j - 1;
                    this.f7239j = i2;
                    if (i2 == 0 && this.f7241l) {
                        reset();
                    }
                }
            }
            throw new IllegalArgumentException("type cannot be null.");
        }
        throw new IllegalArgumentException("input cannot be null.");
    }

    public <T> T readObjectOrNull(Input input, Class<T> cls) {
        T t;
        if (input != null) {
            if (cls != null) {
                m23289b();
                try {
                    if (this.f7247r) {
                        int m23287d = m23287d(input, cls, true);
                        if (m23287d == -1) {
                            return (T) this.f7249t;
                        }
                        t = (T) getRegistration(cls).getSerializer().read(this, input, cls);
                        if (m23287d == this.f7246q.size) {
                            reference(t);
                        }
                    } else {
                        Serializer serializer = getRegistration(cls).getSerializer();
                        if (!serializer.getAcceptsNull() && input.readByte() == 0) {
                            if (Log.TRACE || (Log.DEBUG && this.f7239j == 1)) {
                                Util.log("Read", null, input.position());
                            }
                            int i = this.f7239j - 1;
                            this.f7239j = i;
                            if (i == 0 && this.f7241l) {
                                reset();
                            }
                            return null;
                        }
                        t = (T) serializer.read(this, input, cls);
                    }
                    if (Log.TRACE || (Log.DEBUG && this.f7239j == 1)) {
                        Util.log("Read", t, input.position());
                    }
                    int i2 = this.f7239j - 1;
                    this.f7239j = i2;
                    if (i2 == 0 && this.f7241l) {
                        reset();
                    }
                    return t;
                } finally {
                    int i3 = this.f7239j - 1;
                    this.f7239j = i3;
                    if (i3 == 0 && this.f7241l) {
                        reset();
                    }
                }
            }
            throw new IllegalArgumentException("type cannot be null.");
        }
        throw new IllegalArgumentException("input cannot be null.");
    }

    public Registration register(Class cls) {
        Registration registration = this.f7233d.getRegistration(cls);
        return registration != null ? registration : register(cls, getDefaultSerializer(cls));
    }

    public void reset() {
        this.f7239j = 0;
        ObjectMap objectMap = this.f7244o;
        if (objectMap != null) {
            objectMap.clear(2048);
        }
        this.f7233d.reset();
        if (this.f7247r) {
            this.f7245p.reset();
            this.f7249t = null;
        }
        this.f7250u = 0;
        IdentityMap identityMap = this.f7252w;
        if (identityMap != null) {
            identityMap.clear(2048);
        }
        if (Log.TRACE) {
            Log.trace("kryo", "Object graph complete.");
        }
    }

    public void setAutoReset(boolean z) {
        this.f7241l = z;
    }

    public void setCopyReferences(boolean z) {
        this.f7248s = z;
    }

    public void setDefaultSerializer(SerializerFactory serializerFactory) {
        if (serializerFactory != null) {
            this.f7230a = serializerFactory;
            return;
        }
        throw new IllegalArgumentException("serializer cannot be null.");
    }

    public void setInstantiatorStrategy(InterfaceC7079a interfaceC7079a) {
        this.f7236g = interfaceC7079a;
    }

    public void setOptimizedGenerics(boolean z) {
        this.f7254y = z ? new DefaultGenerics(this) : NoGenerics.INSTANCE;
    }

    public void writeObject(Output output, Object obj) {
        int i;
        boolean z;
        if (output == null) {
            throw new IllegalArgumentException("output cannot be null.");
        }
        if (obj != null) {
            m23289b();
            try {
                if (this.f7247r && m23286e(output, obj, false)) {
                    if (i == 0) {
                        if (z) {
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (Log.TRACE || (Log.DEBUG && this.f7239j == 1)) {
                    Util.log("Write", obj, output.position());
                }
                getRegistration(obj.getClass()).getSerializer().write(this, output, obj);
                int i2 = this.f7239j - 1;
                this.f7239j = i2;
                if (i2 == 0 && this.f7241l) {
                    reset();
                    return;
                }
                return;
            } finally {
                i = this.f7239j - 1;
                this.f7239j = i;
                if (i == 0 && this.f7241l) {
                    reset();
                }
            }
        }
        throw new IllegalArgumentException("object cannot be null.");
    }

    public void writeObjectOrNull(Output output, Object obj, Class cls) {
        int i;
        boolean z;
        if (output != null) {
            m23289b();
            try {
                Serializer serializer = getRegistration(cls).getSerializer();
                if (this.f7247r) {
                    if (m23286e(output, obj, true)) {
                        if (i == 0) {
                            if (z) {
                                return;
                            }
                            return;
                        }
                        return;
                    }
                } else if (!serializer.getAcceptsNull()) {
                    if (obj == null) {
                        if (Log.TRACE || (Log.DEBUG && this.f7239j == 1)) {
                            Util.log("Write", obj, output.position());
                        }
                        output.writeByte((byte) 0);
                        int i2 = this.f7239j - 1;
                        this.f7239j = i2;
                        if (i2 == 0 && this.f7241l) {
                            reset();
                            return;
                        }
                        return;
                    }
                    if (Log.TRACE) {
                        Log.trace("kryo", "Write: <not null>" + Util.pos(output.position()));
                    }
                    output.writeByte((byte) 1);
                }
                if (Log.TRACE || (Log.DEBUG && this.f7239j == 1)) {
                    Util.log("Write", obj, output.position());
                }
                serializer.write(this, output, obj);
                int i3 = this.f7239j - 1;
                this.f7239j = i3;
                if (i3 == 0 && this.f7241l) {
                    reset();
                    return;
                }
                return;
            } finally {
                i = this.f7239j - 1;
                this.f7239j = i;
                if (i == 0 && this.f7241l) {
                    reset();
                }
            }
        }
        throw new IllegalArgumentException("output cannot be null.");
    }

    /* loaded from: classes.dex */
    public static final class DefaultSerializerEntry {

        /* renamed from: a */
        public final Class f7255a;

        /* renamed from: b */
        public final SerializerFactory f7256b;

        public DefaultSerializerEntry(Class cls, SerializerFactory serializerFactory) {
            this.f7255a = cls;
            this.f7256b = serializerFactory;
        }
    }

    public Kryo(ReferenceResolver referenceResolver) {
        this(new DefaultClassResolver(), referenceResolver);
    }

    /* renamed from: b */
    public final void m23289b() {
        if (Log.DEBUG) {
            if (this.f7239j == 0) {
                this.f7242m = Thread.currentThread();
            } else if (this.f7242m != Thread.currentThread()) {
                throw new ConcurrentModificationException("Kryo must not be accessed concurrently by multiple threads.");
            }
        }
        int i = this.f7239j;
        if (i != this.f7240k) {
            this.f7239j = i + 1;
            return;
        }
        throw new KryoException("Max depth exceeded: " + this.f7239j);
    }

    /* renamed from: c */
    public final int m23288c(Class cls, SerializerFactory serializerFactory) {
        int size = this.f7231b.size() - this.f7232c;
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            if (cls.isAssignableFrom(this.f7231b.get(i2).f7255a)) {
                i = i2 + 1;
            }
        }
        this.f7231b.add(i, new DefaultSerializerEntry(cls, serializerFactory));
        return i;
    }

    public ObjectMap getContext() {
        if (this.f7243n == null) {
            this.f7243n = new ObjectMap();
        }
        return this.f7243n;
    }

    public Serializer getDefaultSerializer(Class cls) {
        if (cls != null) {
            Serializer defaultSerializerForAnnotatedType = getDefaultSerializerForAnnotatedType(cls);
            if (defaultSerializerForAnnotatedType != null) {
                return defaultSerializerForAnnotatedType;
            }
            int size = this.f7231b.size();
            for (int i = 0; i < size; i++) {
                DefaultSerializerEntry defaultSerializerEntry = this.f7231b.get(i);
                if (defaultSerializerEntry.f7255a.isAssignableFrom(cls) && defaultSerializerEntry.f7256b.isSupported(cls)) {
                    return defaultSerializerEntry.f7256b.newSerializer(this, cls);
                }
            }
            return newDefaultSerializer(cls);
        }
        throw new IllegalArgumentException("type cannot be null.");
    }

    public Serializer getDefaultSerializerForAnnotatedType(Class cls) {
        if (cls.isAnnotationPresent(DefaultSerializer.class)) {
            DefaultSerializer defaultSerializer = (DefaultSerializer) cls.getAnnotation(DefaultSerializer.class);
            return Util.newFactory(defaultSerializer.serializerFactory(), defaultSerializer.value()).newSerializer(this, cls);
        }
        return null;
    }

    public ObjectMap getGraphContext() {
        if (this.f7244o == null) {
            this.f7244o = new ObjectMap();
        }
        return this.f7244o;
    }

    public int getNextRegistrationId() {
        while (true) {
            int i = this.f7234e;
            if (i != -2) {
                if (this.f7233d.getRegistration(i) == null) {
                    return this.f7234e;
                }
                this.f7234e++;
            } else {
                throw new KryoException("No registration IDs are available.");
            }
        }
    }

    public boolean isClosure(Class cls) {
        if (cls != null) {
            if (cls.getName().indexOf(47) >= 0) {
                return true;
            }
            return false;
        }
        throw new IllegalArgumentException("type cannot be null.");
    }

    public boolean isFinal(Class cls) {
        if (cls != null) {
            if (cls.isArray()) {
                return Modifier.isFinal(Util.getElementClass(cls).getModifiers());
            }
            return Modifier.isFinal(cls.getModifiers());
        }
        throw new IllegalArgumentException("type cannot be null.");
    }

    public Registration readClass(Input input) {
        if (input != null) {
            try {
                return this.f7233d.readClass(input);
            } finally {
                if (this.f7239j == 0 && this.f7241l) {
                    reset();
                }
            }
        }
        throw new IllegalArgumentException("input cannot be null.");
    }

    public Object readClassAndObject(Input input) {
        int i;
        Object read;
        if (input != null) {
            m23289b();
            try {
                Registration readClass = readClass(input);
                if (readClass == null) {
                    return null;
                }
                Class type = readClass.getType();
                if (this.f7247r) {
                    int m23287d = m23287d(input, type, false);
                    if (m23287d == -1) {
                        Object obj = this.f7249t;
                        int i2 = this.f7239j - 1;
                        this.f7239j = i2;
                        if (i2 == 0 && this.f7241l) {
                            reset();
                        }
                        return obj;
                    }
                    read = readClass.getSerializer().read(this, input, type);
                    if (m23287d == this.f7246q.size) {
                        reference(read);
                    }
                } else {
                    read = readClass.getSerializer().read(this, input, type);
                }
                if (Log.TRACE || (Log.DEBUG && this.f7239j == 1)) {
                    Util.log("Read", read, input.position());
                }
                int i3 = this.f7239j - 1;
                this.f7239j = i3;
                if (i3 == 0 && this.f7241l) {
                    reset();
                }
                return read;
            } finally {
                i = this.f7239j - 1;
                this.f7239j = i;
                if (i == 0 && this.f7241l) {
                    reset();
                }
            }
        }
        throw new IllegalArgumentException("input cannot be null.");
    }

    public void reference(Object obj) {
        int pop;
        if (this.f7250u > 0) {
            Object obj2 = this.f7253x;
            if (obj2 != null) {
                if (obj != null) {
                    this.f7252w.put(obj2, obj);
                    this.f7253x = null;
                    return;
                }
                throw new IllegalArgumentException("object cannot be null.");
            }
        } else if (this.f7247r && obj != null && (pop = this.f7246q.pop()) != -2) {
            this.f7245p.setReadObject(pop, obj);
        }
    }

    public void setClassLoader(ClassLoader classLoader) {
        if (classLoader != null) {
            this.f7235f = classLoader;
            return;
        }
        throw new IllegalArgumentException("classLoader cannot be null.");
    }

    public void setMaxDepth(int i) {
        if (i > 0) {
            this.f7240k = i;
            return;
        }
        throw new IllegalArgumentException("maxDepth must be > 0.");
    }

    public void setReferenceResolver(ReferenceResolver referenceResolver) {
        if (referenceResolver != null) {
            this.f7247r = true;
            this.f7245p = referenceResolver;
            if (Log.TRACE) {
                Log.trace("kryo", "Reference resolver: " + referenceResolver.getClass().getName());
                return;
            }
            return;
        }
        throw new IllegalArgumentException("referenceResolver cannot be null.");
    }

    public boolean setReferences(boolean z) {
        boolean z2 = this.f7247r;
        if (z == z2) {
            return z;
        }
        if (z2) {
            this.f7245p.reset();
            this.f7249t = null;
        }
        this.f7247r = z;
        if (z && this.f7245p == null) {
            this.f7245p = new MapReferenceResolver();
        }
        if (Log.TRACE) {
            Log.trace("kryo", "References: " + z);
        }
        return !z;
    }

    public void setRegistrationRequired(boolean z) {
        this.f7237h = z;
        if (Log.TRACE) {
            Log.trace("kryo", "Registration required: " + z);
        }
    }

    public void setWarnUnregisteredClasses(boolean z) {
        this.f7238i = z;
        if (Log.TRACE) {
            Log.trace("kryo", "Warn unregistered classes: " + z);
        }
    }

    public String unregisteredClassMessage(Class cls) {
        return "Class is not registered: " + Util.className(cls) + "\nNote: To register this class use: kryo.register(" + Util.canonicalName(cls) + ".class);";
    }

    public Registration writeClass(Output output, Class cls) {
        if (output != null) {
            try {
                return this.f7233d.writeClass(output, cls);
            } finally {
                if (this.f7239j == 0 && this.f7241l) {
                    reset();
                }
            }
        }
        throw new IllegalArgumentException("output cannot be null.");
    }

    public void writeClassAndObject(Output output, Object obj) {
        int i;
        boolean z;
        if (output != null) {
            m23289b();
            try {
                if (obj == null) {
                    writeClass(output, null);
                    if (i == 0) {
                        if (z) {
                            return;
                        }
                        return;
                    }
                    return;
                }
                Registration writeClass = writeClass(output, obj.getClass());
                if (this.f7247r && m23286e(output, obj, false)) {
                    int i2 = this.f7239j - 1;
                    this.f7239j = i2;
                    if (i2 == 0 && this.f7241l) {
                        reset();
                        return;
                    }
                    return;
                }
                if (Log.TRACE || (Log.DEBUG && this.f7239j == 1)) {
                    Util.log("Write", obj, output.position());
                }
                writeClass.getSerializer().write(this, output, obj);
                int i3 = this.f7239j - 1;
                this.f7239j = i3;
                if (i3 == 0 && this.f7241l) {
                    reset();
                    return;
                }
                return;
            } finally {
                i = this.f7239j - 1;
                this.f7239j = i;
                if (i == 0 && this.f7241l) {
                    reset();
                }
            }
        }
        throw new IllegalArgumentException("output cannot be null.");
    }

    public Kryo(ClassResolver classResolver, ReferenceResolver referenceResolver) {
        this.f7230a = new SerializerFactory.FieldSerializerFactory();
        ArrayList<DefaultSerializerEntry> arrayList = new ArrayList<>(68);
        this.f7231b = arrayList;
        this.f7235f = getClass().getClassLoader();
        this.f7236g = new DefaultInstantiatorStrategy();
        this.f7237h = true;
        this.f7240k = Integer.MAX_VALUE;
        this.f7241l = true;
        this.f7246q = new IntArray(0);
        this.f7248s = true;
        this.f7254y = new DefaultGenerics(this);
        if (classResolver != null) {
            this.f7233d = classResolver;
            classResolver.setKryo(this);
            this.f7245p = referenceResolver;
            if (referenceResolver != null) {
                referenceResolver.setKryo(this);
                this.f7247r = true;
            }
            addDefaultSerializer(byte[].class, DefaultArraySerializers.ByteArraySerializer.class);
            addDefaultSerializer(char[].class, DefaultArraySerializers.CharArraySerializer.class);
            addDefaultSerializer(short[].class, DefaultArraySerializers.ShortArraySerializer.class);
            addDefaultSerializer(int[].class, DefaultArraySerializers.IntArraySerializer.class);
            addDefaultSerializer(long[].class, DefaultArraySerializers.LongArraySerializer.class);
            addDefaultSerializer(float[].class, DefaultArraySerializers.FloatArraySerializer.class);
            addDefaultSerializer(double[].class, DefaultArraySerializers.DoubleArraySerializer.class);
            addDefaultSerializer(boolean[].class, DefaultArraySerializers.BooleanArraySerializer.class);
            addDefaultSerializer(String[].class, DefaultArraySerializers.StringArraySerializer.class);
            addDefaultSerializer(Object[].class, DefaultArraySerializers.ObjectArraySerializer.class);
            addDefaultSerializer(BigInteger.class, DefaultSerializers.BigIntegerSerializer.class);
            addDefaultSerializer(BigDecimal.class, DefaultSerializers.BigDecimalSerializer.class);
            addDefaultSerializer(Class.class, DefaultSerializers.ClassSerializer.class);
            addDefaultSerializer(Date.class, DefaultSerializers.DateSerializer.class);
            addDefaultSerializer(Enum.class, DefaultSerializers.EnumSerializer.class);
            addDefaultSerializer(EnumSet.class, DefaultSerializers.EnumSetSerializer.class);
            addDefaultSerializer(Currency.class, DefaultSerializers.CurrencySerializer.class);
            addDefaultSerializer(StringBuffer.class, DefaultSerializers.StringBufferSerializer.class);
            addDefaultSerializer(StringBuilder.class, DefaultSerializers.StringBuilderSerializer.class);
            addDefaultSerializer(Collections.EMPTY_LIST.getClass(), DefaultSerializers.CollectionsEmptyListSerializer.class);
            addDefaultSerializer(Collections.EMPTY_MAP.getClass(), DefaultSerializers.CollectionsEmptyMapSerializer.class);
            addDefaultSerializer(Collections.EMPTY_SET.getClass(), DefaultSerializers.CollectionsEmptySetSerializer.class);
            addDefaultSerializer(Collections.singletonList(null).getClass(), DefaultSerializers.CollectionsSingletonListSerializer.class);
            addDefaultSerializer(Collections.singletonMap(null, null).getClass(), DefaultSerializers.CollectionsSingletonMapSerializer.class);
            addDefaultSerializer(Collections.singleton(null).getClass(), DefaultSerializers.CollectionsSingletonSetSerializer.class);
            addDefaultSerializer(TreeSet.class, DefaultSerializers.TreeSetSerializer.class);
            addDefaultSerializer(Collection.class, CollectionSerializer.class);
            addDefaultSerializer(ConcurrentSkipListMap.class, DefaultSerializers.ConcurrentSkipListMapSerializer.class);
            addDefaultSerializer(TreeMap.class, DefaultSerializers.TreeMapSerializer.class);
            addDefaultSerializer(Map.class, MapSerializer.class);
            addDefaultSerializer(TimeZone.class, DefaultSerializers.TimeZoneSerializer.class);
            addDefaultSerializer(Calendar.class, DefaultSerializers.CalendarSerializer.class);
            addDefaultSerializer(Locale.class, DefaultSerializers.LocaleSerializer.class);
            addDefaultSerializer(Charset.class, DefaultSerializers.CharsetSerializer.class);
            addDefaultSerializer(URL.class, DefaultSerializers.URLSerializer.class);
            addDefaultSerializer(Arrays.asList(new Object[0]).getClass(), DefaultSerializers.ArraysAsListSerializer.class);
            addDefaultSerializer(Void.TYPE, new DefaultSerializers.VoidSerializer());
            addDefaultSerializer(PriorityQueue.class, new DefaultSerializers.PriorityQueueSerializer());
            addDefaultSerializer(BitSet.class, new DefaultSerializers.BitSetSerializer());
            addDefaultSerializer(KryoSerializable.class, DefaultSerializers.KryoSerializableSerializer.class);
            OptionalSerializers.addDefaultSerializers(this);
            TimeSerializers.addDefaultSerializers(this);
            ImmutableCollectionsSerializers.addDefaultSerializers(this);
            if (Util.isClassAvailable("java.lang.Record")) {
                m23290a("java.lang.Record", RecordSerializer.class);
            }
            this.f7232c = arrayList.size();
            register(Integer.TYPE, new DefaultSerializers.IntSerializer());
            register(String.class, new DefaultSerializers.StringSerializer());
            register(Float.TYPE, new DefaultSerializers.FloatSerializer());
            register(Boolean.TYPE, new DefaultSerializers.BooleanSerializer());
            register(Byte.TYPE, new DefaultSerializers.ByteSerializer());
            register(Character.TYPE, new DefaultSerializers.CharSerializer());
            register(Short.TYPE, new DefaultSerializers.ShortSerializer());
            register(Long.TYPE, new DefaultSerializers.LongSerializer());
            register(Double.TYPE, new DefaultSerializers.DoubleSerializer());
            return;
        }
        throw new IllegalArgumentException("classResolver cannot be null.");
    }

    /* renamed from: a */
    public final void m23290a(String str, Class<? extends Serializer> cls) {
        try {
            addDefaultSerializer(Class.forName(str), cls);
        } catch (ClassNotFoundException unused) {
            throw new KryoException("default serializer cannot be added: " + str);
        }
    }

    /* renamed from: d */
    public int m23287d(Input input, Class cls, boolean z) {
        int readVarInt;
        if (cls.isPrimitive()) {
            cls = Util.getWrapperClass(cls);
        }
        boolean useReferences = this.f7245p.useReferences(cls);
        if (z) {
            readVarInt = input.readVarInt(true);
            if (readVarInt == 0) {
                if (Log.TRACE || (Log.DEBUG && this.f7239j == 1)) {
                    Util.log("Read", null, input.position());
                }
                this.f7249t = null;
                return -1;
            } else if (!useReferences) {
                this.f7246q.add(-2);
                return this.f7246q.size;
            }
        } else if (!useReferences) {
            this.f7246q.add(-2);
            return this.f7246q.size;
        } else {
            readVarInt = input.readVarInt(true);
        }
        if (readVarInt == 1) {
            if (Log.TRACE) {
                Log.trace("kryo", "Read: <not null>" + Util.pos(input.position()));
            }
            int nextReadId = this.f7245p.nextReadId(cls);
            if (Log.TRACE) {
                Log.trace("kryo", "Read initial reference " + nextReadId + ": " + Util.className(cls) + Util.pos(input.position()));
            }
            this.f7246q.add(nextReadId);
            return this.f7246q.size;
        }
        int i = readVarInt - 2;
        try {
            this.f7249t = this.f7245p.getReadObject(cls, i);
            if (Log.DEBUG) {
                Log.debug("kryo", "Read reference " + i + ": " + Util.string(this.f7249t) + Util.pos(input.position()));
            }
            return -1;
        } catch (Exception e) {
            throw new KryoException("Unable to resolve reference for " + Util.className(cls) + " with id: " + i, e);
        }
    }

    public <T> T newInstance(Class<T> cls) {
        Registration registration = getRegistration(cls);
        InterfaceC6946a instantiator = registration.getInstantiator();
        if (instantiator == null) {
            instantiator = newInstantiator(cls);
            registration.setInstantiator(instantiator);
        }
        return (T) instantiator.newInstance();
    }

    public Registration register(Class cls, int i) {
        Registration registration = this.f7233d.getRegistration(cls);
        return registration != null ? registration : register(cls, getDefaultSerializer(cls), i);
    }

    public void setDefaultSerializer(Class<? extends Serializer> cls) {
        if (cls != null) {
            this.f7230a = new SerializerFactory.ReflectionSerializerFactory(cls);
            return;
        }
        throw new IllegalArgumentException("serializer cannot be null.");
    }

    public void addDefaultSerializer(Class cls, SerializerFactory serializerFactory) {
        if (cls == null) {
            throw new IllegalArgumentException("type cannot be null.");
        }
        if (serializerFactory != null) {
            m23288c(cls, serializerFactory);
            return;
        }
        throw new IllegalArgumentException("serializerFactory cannot be null.");
    }

    public Registration register(Class cls, Serializer serializer) {
        Registration registration = this.f7233d.getRegistration(cls);
        if (registration != null) {
            registration.setSerializer(serializer);
            return registration;
        }
        return this.f7233d.register(new Registration(cls, serializer, getNextRegistrationId()));
    }

    public void addDefaultSerializer(Class cls, Class<? extends Serializer> cls2) {
        if (cls == null) {
            throw new IllegalArgumentException("type cannot be null.");
        }
        if (cls2 != null) {
            m23288c(cls, new SerializerFactory.ReflectionSerializerFactory(cls2));
            return;
        }
        throw new IllegalArgumentException("serializerClass cannot be null.");
    }

    public Registration register(Class cls, Serializer serializer, int i) {
        if (i >= 0) {
            return register(new Registration(cls, serializer, i));
        }
        throw new IllegalArgumentException("id must be >= 0: " + i);
    }

    public Registration register(Registration registration) {
        int id = registration.getId();
        if (id >= 0) {
            Registration unregister = this.f7233d.unregister(id);
            if (Log.DEBUG && unregister != null && unregister.getType() != registration.getType()) {
                Log.debug("kryo", "Registration overwritten: " + unregister + " -> " + registration);
            }
            return this.f7233d.register(registration);
        }
        throw new IllegalArgumentException("id must be > 0: " + id);
    }

    public void writeObject(Output output, Object obj, Serializer serializer) {
        int i;
        boolean z;
        if (output == null) {
            throw new IllegalArgumentException("output cannot be null.");
        }
        if (obj == null) {
            throw new IllegalArgumentException("object cannot be null.");
        }
        if (serializer != null) {
            m23289b();
            try {
                if (this.f7247r && m23286e(output, obj, false)) {
                    if (i == 0) {
                        if (z) {
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (Log.TRACE || (Log.DEBUG && this.f7239j == 1)) {
                    Util.log("Write", obj, output.position());
                }
                serializer.write(this, output, obj);
                int i2 = this.f7239j - 1;
                this.f7239j = i2;
                if (i2 == 0 && this.f7241l) {
                    reset();
                    return;
                }
                return;
            } finally {
                i = this.f7239j - 1;
                this.f7239j = i;
                if (i == 0 && this.f7241l) {
                    reset();
                }
            }
        }
        throw new IllegalArgumentException("serializer cannot be null.");
    }

    public <T> T copy(T t, Serializer serializer) {
        T t2;
        if (t == null) {
            return null;
        }
        if (this.f7251v) {
            return t;
        }
        this.f7250u++;
        try {
            if (this.f7252w == null) {
                this.f7252w = new IdentityMap();
            }
            T t3 = (T) this.f7252w.get(t);
            if (t3 != null) {
                return t3;
            }
            if (this.f7248s) {
                this.f7253x = t;
            }
            if (t instanceof KryoCopyable) {
                t2 = (T) ((KryoCopyable) t).copy(this);
            } else {
                t2 = (T) serializer.copy(this, t);
            }
            if (this.f7253x != null) {
                reference(t2);
            }
            if (Log.TRACE || (Log.DEBUG && this.f7250u == 1)) {
                Util.log("Copy", t2, -1);
            }
            int i = this.f7250u - 1;
            this.f7250u = i;
            if (i == 0) {
                reset();
            }
            return t2;
        } finally {
            int i2 = this.f7250u - 1;
            this.f7250u = i2;
            if (i2 == 0) {
                reset();
            }
        }
    }

    public <T> T readObject(Input input, Class<T> cls, Serializer serializer) {
        T t;
        if (input != null) {
            if (cls != null) {
                if (serializer != null) {
                    m23289b();
                    try {
                        if (this.f7247r) {
                            int m23287d = m23287d(input, cls, false);
                            if (m23287d == -1) {
                                return (T) this.f7249t;
                            }
                            t = (T) serializer.read(this, input, cls);
                            if (m23287d == this.f7246q.size) {
                                reference(t);
                            }
                        } else {
                            t = (T) serializer.read(this, input, cls);
                        }
                        if (Log.TRACE || (Log.DEBUG && this.f7239j == 1)) {
                            Util.log("Read", t, input.position());
                        }
                        int i = this.f7239j - 1;
                        this.f7239j = i;
                        if (i == 0 && this.f7241l) {
                            reset();
                        }
                        return t;
                    } finally {
                        int i2 = this.f7239j - 1;
                        this.f7239j = i2;
                        if (i2 == 0 && this.f7241l) {
                            reset();
                        }
                    }
                }
                throw new IllegalArgumentException("serializer cannot be null.");
            }
            throw new IllegalArgumentException("type cannot be null.");
        }
        throw new IllegalArgumentException("input cannot be null.");
    }

    public void writeObjectOrNull(Output output, Object obj, Serializer serializer) {
        int i;
        boolean z;
        if (output == null) {
            throw new IllegalArgumentException("output cannot be null.");
        }
        if (serializer != null) {
            m23289b();
            try {
                if (this.f7247r) {
                    if (m23286e(output, obj, true)) {
                        if (i == 0) {
                            if (z) {
                                return;
                            }
                            return;
                        }
                        return;
                    }
                } else if (!serializer.getAcceptsNull()) {
                    if (obj == null) {
                        if (Log.TRACE || (Log.DEBUG && this.f7239j == 1)) {
                            Util.log("Write", null, output.position());
                        }
                        output.writeByte((byte) 0);
                        int i2 = this.f7239j - 1;
                        this.f7239j = i2;
                        if (i2 == 0 && this.f7241l) {
                            reset();
                            return;
                        }
                        return;
                    }
                    if (Log.TRACE) {
                        Log.trace("kryo", "Write: <not null>" + Util.pos(output.position()));
                    }
                    output.writeByte((byte) 1);
                }
                if (Log.TRACE || (Log.DEBUG && this.f7239j == 1)) {
                    Util.log("Write", obj, output.position());
                }
                serializer.write(this, output, obj);
                int i3 = this.f7239j - 1;
                this.f7239j = i3;
                if (i3 == 0 && this.f7241l) {
                    reset();
                    return;
                }
                return;
            } finally {
                i = this.f7239j - 1;
                this.f7239j = i;
                if (i == 0 && this.f7241l) {
                    reset();
                }
            }
        }
        throw new IllegalArgumentException("serializer cannot be null.");
    }

    public <T> T copyShallow(T t, Serializer serializer) {
        T t2;
        if (t == null) {
            return null;
        }
        this.f7250u++;
        this.f7251v = true;
        try {
            if (this.f7252w == null) {
                this.f7252w = new IdentityMap();
            }
            T t3 = (T) this.f7252w.get(t);
            if (t3 != null) {
                return t3;
            }
            if (this.f7248s) {
                this.f7253x = t;
            }
            if (t instanceof KryoCopyable) {
                t2 = (T) ((KryoCopyable) t).copy(this);
            } else {
                t2 = (T) serializer.copy(this, t);
            }
            if (this.f7253x != null) {
                reference(t2);
            }
            if (Log.TRACE || (Log.DEBUG && this.f7250u == 1)) {
                Util.log("Shallow copy", t2, -1);
            }
            this.f7251v = false;
            int i = this.f7250u - 1;
            this.f7250u = i;
            if (i == 0) {
                reset();
            }
            return t2;
        } finally {
            this.f7251v = false;
            int i2 = this.f7250u - 1;
            this.f7250u = i2;
            if (i2 == 0) {
                reset();
            }
        }
    }

    public Registration getRegistration(int i) {
        return this.f7233d.getRegistration(i);
    }

    public <T> T readObjectOrNull(Input input, Class<T> cls, Serializer serializer) {
        T t;
        if (input != null) {
            if (cls != null) {
                if (serializer != null) {
                    m23289b();
                    try {
                        if (this.f7247r) {
                            int m23287d = m23287d(input, cls, true);
                            if (m23287d == -1) {
                                return (T) this.f7249t;
                            }
                            t = (T) serializer.read(this, input, cls);
                            if (m23287d == this.f7246q.size) {
                                reference(t);
                            }
                        } else if (!serializer.getAcceptsNull() && input.readByte() == 0) {
                            if (Log.TRACE || (Log.DEBUG && this.f7239j == 1)) {
                                Util.log("Read", null, input.position());
                            }
                            int i = this.f7239j - 1;
                            this.f7239j = i;
                            if (i == 0 && this.f7241l) {
                                reset();
                            }
                            return null;
                        } else {
                            t = (T) serializer.read(this, input, cls);
                        }
                        if (Log.TRACE || (Log.DEBUG && this.f7239j == 1)) {
                            Util.log("Read", t, input.position());
                        }
                        int i2 = this.f7239j - 1;
                        this.f7239j = i2;
                        if (i2 == 0 && this.f7241l) {
                            reset();
                        }
                        return t;
                    } finally {
                        int i3 = this.f7239j - 1;
                        this.f7239j = i3;
                        if (i3 == 0 && this.f7241l) {
                            reset();
                        }
                    }
                }
                throw new IllegalArgumentException("serializer cannot be null.");
            }
            throw new IllegalArgumentException("type cannot be null.");
        }
        throw new IllegalArgumentException("input cannot be null.");
    }
}
