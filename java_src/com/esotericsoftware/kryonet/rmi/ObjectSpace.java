package com.esotericsoftware.kryonet.rmi;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import com.esotericsoftware.kryo.util.IntMap;
import com.esotericsoftware.kryonet.Connection;
import com.esotericsoftware.kryonet.FrameworkMessage;
import com.esotericsoftware.kryonet.KryoNetException;
import com.esotericsoftware.kryonet.Listener;
import com.esotericsoftware.kryonet.util.ObjectIntMap;
import com.esotericsoftware.minlog.Log;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.PriorityQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes.dex */
public class ObjectSpace {

    /* renamed from: g */
    public static final Object f7554g = new Object();

    /* renamed from: h */
    public static ObjectSpace[] f7555h = new ObjectSpace[0];

    /* renamed from: i */
    public static final HashMap<Class, CachedMethod[]> f7556i = new HashMap<>();

    /* renamed from: a */
    public final IntMap f7557a;

    /* renamed from: b */
    public final ObjectIntMap f7558b;

    /* renamed from: c */
    public Connection[] f7559c;

    /* renamed from: d */
    public final Object f7560d;

    /* renamed from: e */
    public Executor f7561e;

    /* renamed from: f */
    public final Listener f7562f;

    /* loaded from: classes.dex */
    public static class CachedMethod {

        /* renamed from: a */
        public Method f7568a;

        /* renamed from: b */
        public Serializer[] f7569b;
    }

    /* loaded from: classes.dex */
    public static class InvokeMethod implements FrameworkMessage, KryoSerializable {
        public Object[] args;
        public Method method;
        public int objectID;
        public byte responseID;

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.objectID = input.readInt(true);
            Class type = kryo.getRegistration(input.readInt(true)).getType();
            byte readByte = input.readByte();
            try {
                CachedMethod cachedMethod = ObjectSpace.m23140a(kryo, type)[readByte];
                this.method = cachedMethod.f7568a;
                Object[] objArr = new Object[cachedMethod.f7569b.length];
                this.args = objArr;
                int length = objArr.length;
                for (int i = 0; i < length; i++) {
                    Serializer serializer = cachedMethod.f7569b[i];
                    if (serializer != null) {
                        this.args[i] = kryo.readObjectOrNull(input, this.method.getParameterTypes()[i], serializer);
                    } else {
                        this.args[i] = kryo.readClassAndObject(input);
                    }
                }
                this.responseID = input.readByte();
            } catch (IndexOutOfBoundsException unused) {
                throw new KryoException("Invalid method index " + ((int) readByte) + " for class: " + type.getName());
            }
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            output.writeInt(this.objectID, true);
            output.writeInt(kryo.getRegistration(this.method.getDeclaringClass()).getId(), true);
            CachedMethod[] m23140a = ObjectSpace.m23140a(kryo, this.method.getDeclaringClass());
            int length = m23140a.length;
            CachedMethod cachedMethod = null;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                cachedMethod = m23140a[i];
                if (cachedMethod.f7568a.equals(this.method)) {
                    output.writeByte(i);
                    break;
                }
                i++;
            }
            int length2 = cachedMethod.f7569b.length;
            for (int i2 = 0; i2 < length2; i2++) {
                Serializer serializer = cachedMethod.f7569b[i2];
                if (serializer != null) {
                    kryo.writeObjectOrNull(output, this.args[i2], serializer);
                } else {
                    kryo.writeClassAndObject(output, this.args[i2]);
                }
            }
            output.writeByte(this.responseID);
        }
    }

    /* loaded from: classes.dex */
    public static class InvokeMethodResult implements FrameworkMessage {
        public int objectID;
        public byte responseID;
        public Object result;
    }

    /* loaded from: classes.dex */
    public static class RemoteInvocationHandler implements InvocationHandler {

        /* renamed from: a */
        public final Connection f7570a;

        /* renamed from: b */
        public final int f7571b;

        /* renamed from: k */
        public boolean f7573k;

        /* renamed from: r */
        public boolean f7576r;

        /* renamed from: s */
        public Byte f7577s;

        /* renamed from: u */
        public Listener f7579u;

        /* renamed from: v */
        public final ReentrantLock f7580v;

        /* renamed from: w */
        public final Condition f7581w;

        /* renamed from: x */
        public final ConcurrentHashMap<Byte, InvokeMethodResult> f7582x;

        /* renamed from: d */
        public int f7572d = 3000;

        /* renamed from: p */
        public boolean f7574p = true;

        /* renamed from: q */
        public boolean f7575q = true;

        /* renamed from: t */
        public byte f7578t = 1;

        /* renamed from: a */
        public void m23137a() {
            this.f7570a.removeListener(this.f7579u);
        }

        /* renamed from: b */
        public final Object m23136b(byte b) {
            if (this.f7570a.getEndPoint().getUpdateThread() != Thread.currentThread()) {
                long currentTimeMillis = System.currentTimeMillis() + this.f7572d;
                while (true) {
                    long currentTimeMillis2 = currentTimeMillis - System.currentTimeMillis();
                    if (this.f7582x.containsKey(Byte.valueOf(b))) {
                        this.f7582x.remove(Byte.valueOf(b));
                        this.f7577s = null;
                        return this.f7582x.get(Byte.valueOf(b)).result;
                    } else if (currentTimeMillis2 > 0) {
                        this.f7580v.lock();
                        try {
                            try {
                                this.f7581w.await(currentTimeMillis2, TimeUnit.MILLISECONDS);
                            } catch (InterruptedException e) {
                                Thread.currentThread().interrupt();
                                throw new KryoNetException(e);
                            }
                        } finally {
                            this.f7580v.unlock();
                        }
                    } else {
                        throw new TimeoutException("Response timed out.");
                    }
                }
            } else {
                throw new IllegalStateException("Cannot wait for an RMI response on the connection's update thread.");
            }
        }

        public RemoteInvocationHandler(Connection connection, final int i) {
            ReentrantLock reentrantLock = new ReentrantLock();
            this.f7580v = reentrantLock;
            this.f7581w = reentrantLock.newCondition();
            this.f7582x = new ConcurrentHashMap<>();
            this.f7570a = connection;
            this.f7571b = i;
            Listener listener = new Listener() { // from class: com.esotericsoftware.kryonet.rmi.ObjectSpace.RemoteInvocationHandler.1
                @Override // com.esotericsoftware.kryonet.Listener
                public void disconnected(Connection connection2) {
                    RemoteInvocationHandler.this.m23137a();
                }

                @Override // com.esotericsoftware.kryonet.Listener
                public void received(Connection connection2, Object obj) {
                    if (!(obj instanceof InvokeMethodResult)) {
                        return;
                    }
                    InvokeMethodResult invokeMethodResult = (InvokeMethodResult) obj;
                    if (invokeMethodResult.objectID != i) {
                        return;
                    }
                    RemoteInvocationHandler.this.f7582x.put(Byte.valueOf(invokeMethodResult.responseID), invokeMethodResult);
                    RemoteInvocationHandler.this.f7580v.lock();
                    try {
                        RemoteInvocationHandler.this.f7581w.signalAll();
                    } finally {
                        RemoteInvocationHandler.this.f7580v.unlock();
                    }
                }
            };
            this.f7579u = listener;
            connection.addListener(listener);
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            boolean z;
            byte b;
            Class<?> declaringClass = method.getDeclaringClass();
            if (declaringClass == RemoteObject.class) {
                String name = method.getName();
                if (name.equals("close")) {
                    m23137a();
                    return null;
                } else if (name.equals("setResponseTimeout")) {
                    this.f7572d = ((Integer) objArr[0]).intValue();
                    return null;
                } else if (name.equals("setNonBlocking")) {
                    this.f7573k = ((Boolean) objArr[0]).booleanValue();
                    return null;
                } else if (name.equals("setTransmitReturnValue")) {
                    this.f7574p = ((Boolean) objArr[0]).booleanValue();
                    return null;
                } else if (name.equals("setTransmitExceptions")) {
                    this.f7575q = ((Boolean) objArr[0]).booleanValue();
                    return null;
                } else if (name.equals("setRemoteToString")) {
                    this.f7576r = ((Boolean) objArr[0]).booleanValue();
                    return null;
                } else if (name.equals("waitForLastResponse")) {
                    Byte b2 = this.f7577s;
                    if (b2 != null) {
                        return m23136b(b2.byteValue());
                    }
                    throw new IllegalStateException("There is no last response to wait for.");
                } else if (name.equals("getLastResponseID")) {
                    Byte b3 = this.f7577s;
                    if (b3 != null) {
                        return b3;
                    }
                    throw new IllegalStateException("There is no last response ID.");
                } else if (name.equals("waitForResponse")) {
                    if (!this.f7574p && !this.f7575q && this.f7573k) {
                        throw new IllegalStateException("This RemoteObject is currently set to ignore all responses.");
                    }
                    return m23136b(((Byte) objArr[0]).byteValue());
                } else if (name.equals("getConnection")) {
                    return this.f7570a;
                } else {
                    throw new KryoNetException("Invocation handler could not find RemoteObject method. Check ObjectSpace.java");
                }
            } else if (!this.f7576r && declaringClass == Object.class && method.getName().equals("toString")) {
                return "<proxy>";
            } else {
                InvokeMethod invokeMethod = new InvokeMethod();
                invokeMethod.objectID = this.f7571b;
                invokeMethod.method = method;
                invokeMethod.args = objArr;
                if (!this.f7574p && !this.f7575q && this.f7573k) {
                    z = false;
                } else {
                    z = true;
                }
                if (z) {
                    synchronized (this) {
                        b = this.f7578t;
                        byte b4 = (byte) (b + 1);
                        this.f7578t = b4;
                        if (b4 == 64) {
                            this.f7578t = (byte) 1;
                        }
                    }
                    if (this.f7574p) {
                        b = (byte) (b | Byte.MIN_VALUE);
                    }
                    if (this.f7575q) {
                        b = (byte) (b | 64);
                    }
                    invokeMethod.responseID = b;
                } else {
                    invokeMethod.responseID = (byte) 0;
                }
                int sendTCP = this.f7570a.sendTCP(invokeMethod);
                if (Log.DEBUG) {
                    String str = "";
                    if (objArr != null) {
                        String deepToString = Arrays.deepToString(objArr);
                        str = deepToString.substring(1, deepToString.length() - 1);
                    }
                    Log.debug("kryonet", this.f7570a + " sent: " + method.getDeclaringClass().getSimpleName() + "#" + method.getName() + "(" + str + ") (" + sendTCP + ")");
                }
                byte b5 = invokeMethod.responseID;
                if (b5 != 0) {
                    this.f7577s = Byte.valueOf(b5);
                }
                if (this.f7573k) {
                    Class<?> returnType = method.getReturnType();
                    if (returnType.isPrimitive()) {
                        if (returnType == Integer.TYPE) {
                            return 0;
                        }
                        if (returnType == Boolean.TYPE) {
                            return Boolean.FALSE;
                        }
                        if (returnType == Float.TYPE) {
                            return Float.valueOf(0.0f);
                        }
                        if (returnType == Character.TYPE) {
                            return (char) 0;
                        }
                        if (returnType == Long.TYPE) {
                            return 0L;
                        }
                        if (returnType == Short.TYPE) {
                            return (short) 0;
                        }
                        if (returnType == Byte.TYPE) {
                            return (byte) 0;
                        }
                        if (returnType == Double.TYPE) {
                            return Double.valueOf(0.0d);
                        }
                    }
                    return null;
                }
                try {
                    Object m23136b = m23136b(invokeMethod.responseID);
                    if (m23136b != null && (m23136b instanceof Exception)) {
                        throw ((Exception) m23136b);
                    }
                    return m23136b;
                } catch (TimeoutException unused) {
                    throw new TimeoutException("Response timed out: " + method.getDeclaringClass().getName() + "." + method.getName());
                }
            }
        }
    }

    public ObjectSpace() {
        this.f7557a = new IntMap();
        this.f7558b = new ObjectIntMap();
        this.f7559c = new Connection[0];
        this.f7560d = new Object();
        this.f7562f = new Listener() { // from class: com.esotericsoftware.kryonet.rmi.ObjectSpace.1
            @Override // com.esotericsoftware.kryonet.Listener
            public void disconnected(Connection connection) {
                ObjectSpace.this.removeConnection(connection);
            }

            @Override // com.esotericsoftware.kryonet.Listener
            public void received(final Connection connection, Object obj) {
                if (!(obj instanceof InvokeMethod)) {
                    return;
                }
                Connection[] connectionArr = ObjectSpace.this.f7559c;
                if (connectionArr != null) {
                    int i = 0;
                    int length = connectionArr.length;
                    while (i < length && connection != ObjectSpace.this.f7559c[i]) {
                        i++;
                    }
                    if (i == length) {
                        return;
                    }
                }
                final InvokeMethod invokeMethod = (InvokeMethod) obj;
                final Object obj2 = ObjectSpace.this.f7557a.get(invokeMethod.objectID);
                if (obj2 == null) {
                    if (Log.WARN) {
                        Log.warn("kryonet", "Ignoring remote invocation request for unknown object ID: " + invokeMethod.objectID);
                        return;
                    }
                    return;
                }
                ObjectSpace objectSpace = ObjectSpace.this;
                Executor executor = objectSpace.f7561e;
                if (executor == null) {
                    objectSpace.invoke(connection, obj2, invokeMethod);
                } else {
                    executor.execute(new Runnable() { // from class: com.esotericsoftware.kryonet.rmi.ObjectSpace.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ObjectSpace.this.invoke(connection, obj2, invokeMethod);
                        }
                    });
                }
            }
        };
        synchronized (f7554g) {
            ObjectSpace[] objectSpaceArr = f7555h;
            ObjectSpace[] objectSpaceArr2 = new ObjectSpace[objectSpaceArr.length + 1];
            objectSpaceArr2[0] = this;
            System.arraycopy(objectSpaceArr, 0, objectSpaceArr2, 1, objectSpaceArr.length);
            f7555h = objectSpaceArr2;
        }
    }

    public static <T> T getRemoteObject(Connection connection, int i, Class<T> cls) {
        return (T) getRemoteObject(connection, i, cls);
    }

    public void remove(int i) {
        Object remove = this.f7557a.remove(i);
        if (remove != null) {
            this.f7558b.remove(remove, 0);
        }
        if (Log.TRACE) {
            Log.trace("kryonet", "Object " + i + " removed from ObjectSpace: " + remove);
        }
    }

    public void setExecutor(Executor executor) {
        this.f7561e = executor;
    }

    /* loaded from: classes.dex */
    public static class RemoteObjectSerializer extends Serializer {
        @Override // com.esotericsoftware.kryo.Serializer
        public Object read(Kryo kryo, Input input, Class cls) {
            return ObjectSpace.getRemoteObject((Connection) kryo.getContext().get("connection"), input.readInt(true), cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Object obj) {
            int m23139b = ObjectSpace.m23139b((Connection) kryo.getContext().get("connection"), obj);
            if (m23139b != Integer.MAX_VALUE) {
                output.writeInt(m23139b, true);
                return;
            }
            throw new KryoNetException("Object not found in an ObjectSpace: " + obj);
        }
    }

    /* renamed from: a */
    public static CachedMethod[] m23140a(Kryo kryo, Class cls) {
        CachedMethod[] cachedMethodArr = f7556i.get(cls);
        if (cachedMethodArr != null) {
            return cachedMethodArr;
        }
        ArrayList arrayList = new ArrayList();
        Class cls2 = cls;
        while (cls2 != null) {
            Collections.addAll(arrayList, cls2.getDeclaredMethods());
            cls2 = cls2.getSuperclass();
            if (cls2 == Object.class) {
                break;
            }
        }
        PriorityQueue priorityQueue = new PriorityQueue(Math.max(1, arrayList.size()), new Comparator<Method>() { // from class: com.esotericsoftware.kryonet.rmi.ObjectSpace.2
            @Override // java.util.Comparator
            public int compare(Method method, Method method2) {
                int compareTo = method.getName().compareTo(method2.getName());
                if (compareTo != 0) {
                    return compareTo;
                }
                Class<?>[] parameterTypes = method.getParameterTypes();
                Class<?>[] parameterTypes2 = method2.getParameterTypes();
                if (parameterTypes.length > parameterTypes2.length) {
                    return 1;
                }
                if (parameterTypes.length < parameterTypes2.length) {
                    return -1;
                }
                for (int i = 0; i < parameterTypes.length; i++) {
                    int compareTo2 = parameterTypes[i].getName().compareTo(parameterTypes2[i].getName());
                    if (compareTo2 != 0) {
                        return compareTo2;
                    }
                }
                throw new RuntimeException("Two methods with same signature!");
            }
        });
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Method method = (Method) arrayList.get(i);
            int modifiers = method.getModifiers();
            if (!Modifier.isStatic(modifiers) && !Modifier.isPrivate(modifiers) && !method.isSynthetic()) {
                priorityQueue.add(method);
            }
        }
        int size2 = priorityQueue.size();
        CachedMethod[] cachedMethodArr2 = new CachedMethod[size2];
        for (int i2 = 0; i2 < size2; i2++) {
            CachedMethod cachedMethod = new CachedMethod();
            Method method2 = (Method) priorityQueue.poll();
            cachedMethod.f7568a = method2;
            Class<?>[] parameterTypes = method2.getParameterTypes();
            cachedMethod.f7569b = new Serializer[parameterTypes.length];
            int length = parameterTypes.length;
            for (int i3 = 0; i3 < length; i3++) {
                if (kryo.isFinal(parameterTypes[i3])) {
                    cachedMethod.f7569b[i3] = kryo.getSerializer(parameterTypes[i3]);
                }
            }
            cachedMethodArr2[i2] = cachedMethod;
        }
        f7556i.put(cls, cachedMethodArr2);
        return cachedMethodArr2;
    }

    /* renamed from: b */
    public static int m23139b(Connection connection, Object obj) {
        ObjectSpace[] objectSpaceArr;
        int i;
        for (ObjectSpace objectSpace : f7555h) {
            for (Connection connection2 : objectSpace.f7559c) {
                if (connection2 == connection && (i = objectSpace.f7558b.get(obj, Integer.MAX_VALUE)) != Integer.MAX_VALUE) {
                    return i;
                }
            }
        }
        return Integer.MAX_VALUE;
    }

    /* renamed from: c */
    public static Object m23138c(Connection connection, int i) {
        ObjectSpace[] objectSpaceArr;
        Object obj;
        for (ObjectSpace objectSpace : f7555h) {
            for (Connection connection2 : objectSpace.f7559c) {
                if (connection2 == connection && (obj = objectSpace.f7557a.get(i)) != null) {
                    return obj;
                }
            }
        }
        return null;
    }

    public static RemoteObject getRemoteObject(Connection connection, int i, Class... clsArr) {
        if (connection != null) {
            if (clsArr != null) {
                Class[] clsArr2 = new Class[clsArr.length + 1];
                clsArr2[0] = RemoteObject.class;
                System.arraycopy(clsArr, 0, clsArr2, 1, clsArr.length);
                return (RemoteObject) Proxy.newProxyInstance(ObjectSpace.class.getClassLoader(), clsArr2, new RemoteInvocationHandler(connection, i));
            }
            throw new IllegalArgumentException("ifaces cannot be null.");
        }
        throw new IllegalArgumentException("connection cannot be null.");
    }

    public static void registerClasses(Kryo kryo) {
        kryo.register(Object[].class);
        kryo.register(InvokeMethod.class);
        FieldSerializer<InvokeMethodResult> fieldSerializer = new FieldSerializer<InvokeMethodResult>(kryo, InvokeMethodResult.class) { // from class: com.esotericsoftware.kryonet.rmi.ObjectSpace.3
            @Override // com.esotericsoftware.kryo.serializers.FieldSerializer, com.esotericsoftware.kryo.Serializer
            public /* bridge */ /* synthetic */ Object read(Kryo kryo2, Input input, Class cls) {
                return read(kryo2, input, (Class<InvokeMethodResult>) cls);
            }

            @Override // com.esotericsoftware.kryo.serializers.FieldSerializer, com.esotericsoftware.kryo.Serializer
            public InvokeMethodResult read(Kryo kryo2, Input input, Class<InvokeMethodResult> cls) {
                InvokeMethodResult invokeMethodResult = (InvokeMethodResult) super.read(kryo2, input, (Class<? extends Object>) cls);
                invokeMethodResult.objectID = input.readInt(true);
                return invokeMethodResult;
            }

            @Override // com.esotericsoftware.kryo.serializers.FieldSerializer, com.esotericsoftware.kryo.Serializer
            public void write(Kryo kryo2, Output output, InvokeMethodResult invokeMethodResult) {
                super.write(kryo2, output, (Output) invokeMethodResult);
                output.writeInt(invokeMethodResult.objectID, true);
            }
        };
        fieldSerializer.removeField("objectID");
        kryo.register(InvokeMethodResult.class, fieldSerializer);
        kryo.register(InvocationHandler.class, new Serializer() { // from class: com.esotericsoftware.kryonet.rmi.ObjectSpace.4
            @Override // com.esotericsoftware.kryo.Serializer
            public Object read(Kryo kryo2, Input input, Class cls) {
                int readInt = input.readInt(true);
                Connection connection = (Connection) kryo2.getContext().get("connection");
                Object m23138c = ObjectSpace.m23138c(connection, readInt);
                if (Log.WARN && m23138c == null) {
                    Log.warn("kryonet", "Unknown object ID " + readInt + " for connection: " + connection);
                }
                return m23138c;
            }

            @Override // com.esotericsoftware.kryo.Serializer
            public void write(Kryo kryo2, Output output, Object obj) {
                output.writeInt(((RemoteInvocationHandler) Proxy.getInvocationHandler(obj)).f7571b, true);
            }
        });
    }

    public void addConnection(Connection connection) {
        if (connection != null) {
            synchronized (this.f7560d) {
                Connection[] connectionArr = this.f7559c;
                Connection[] connectionArr2 = new Connection[connectionArr.length + 1];
                connectionArr2[0] = connection;
                System.arraycopy(connectionArr, 0, connectionArr2, 1, connectionArr.length);
                this.f7559c = connectionArr2;
            }
            connection.addListener(this.f7562f);
            if (Log.TRACE) {
                Log.trace("kryonet", "Added connection to ObjectSpace: " + connection);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("connection cannot be null.");
    }

    public void close() {
        for (Connection connection : this.f7559c) {
            connection.removeListener(this.f7562f);
        }
        synchronized (f7554g) {
            ArrayList arrayList = new ArrayList(Arrays.asList(f7555h));
            arrayList.remove(this);
            f7555h = (ObjectSpace[]) arrayList.toArray(new ObjectSpace[arrayList.size()]);
        }
        if (Log.TRACE) {
            Log.trace("kryonet", "Closed ObjectSpace.");
        }
    }

    public void invoke(Connection connection, Object obj, InvokeMethod invokeMethod) {
        boolean z;
        Object cause;
        String str;
        boolean z2 = true;
        if (Log.DEBUG) {
            Object[] objArr = invokeMethod.args;
            if (objArr != null) {
                String deepToString = Arrays.deepToString(objArr);
                str = deepToString.substring(1, deepToString.length() - 1);
            } else {
                str = "";
            }
            Log.debug("kryonet", connection + " received: " + obj.getClass().getSimpleName() + "#" + invokeMethod.method.getName() + "(" + str + ")");
        }
        byte b = invokeMethod.responseID;
        if ((b & Byte.MIN_VALUE) == -128) {
            z = true;
        } else {
            z = false;
        }
        if ((b & 64) != 64) {
            z2 = false;
        }
        Method method = invokeMethod.method;
        try {
            cause = method.invoke(obj, invokeMethod.args);
        } catch (InvocationTargetException e) {
            if (z2) {
                cause = e.getCause();
            } else {
                throw new KryoNetException("Error invoking method: " + method.getDeclaringClass().getName() + "." + method.getName(), e);
            }
        } catch (Exception e2) {
            throw new KryoNetException("Error invoking method: " + method.getDeclaringClass().getName() + "." + method.getName(), e2);
        }
        if (b == 0) {
            return;
        }
        InvokeMethodResult invokeMethodResult = new InvokeMethodResult();
        invokeMethodResult.objectID = invokeMethod.objectID;
        invokeMethodResult.responseID = b;
        if (!z && !invokeMethod.method.getReturnType().isPrimitive()) {
            invokeMethodResult.result = null;
        } else {
            invokeMethodResult.result = cause;
        }
        int sendTCP = connection.sendTCP(invokeMethodResult);
        if (Log.DEBUG) {
            Log.debug("kryonet", connection + " sent: " + cause + " (" + sendTCP + ")");
        }
    }

    public void removeConnection(Connection connection) {
        if (connection != null) {
            connection.removeListener(this.f7562f);
            synchronized (this.f7560d) {
                ArrayList arrayList = new ArrayList(Arrays.asList(this.f7559c));
                arrayList.remove(connection);
                this.f7559c = (Connection[]) arrayList.toArray(new Connection[arrayList.size()]);
            }
            if (Log.TRACE) {
                Log.trace("kryonet", "Removed connection from ObjectSpace: " + connection);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("connection cannot be null.");
    }

    public void register(int i, Object obj) {
        if (i != Integer.MAX_VALUE) {
            if (obj != null) {
                this.f7557a.put(i, obj);
                this.f7558b.put(obj, i);
                if (Log.TRACE) {
                    Log.trace("kryonet", "Object registered with ObjectSpace as " + i + ": " + obj);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("object cannot be null.");
        }
        throw new IllegalArgumentException("objectID cannot be Integer.MAX_VALUE.");
    }

    public void remove(Object obj) {
        if (this.f7557a.containsValue(obj, true)) {
            int findKey = this.f7557a.findKey(obj, true, -1);
            this.f7557a.remove(findKey);
            this.f7558b.remove(obj, 0);
            if (Log.TRACE) {
                Log.trace("kryonet", "Object " + findKey + " removed from ObjectSpace: " + obj);
            }
        }
    }

    public ObjectSpace(Connection connection) {
        this();
        addConnection(connection);
    }
}
