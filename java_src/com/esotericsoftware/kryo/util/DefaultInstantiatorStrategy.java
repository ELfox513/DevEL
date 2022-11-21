package com.esotericsoftware.kryo.util;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.reflectasm.ConstructorAccess;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import p198u7.InterfaceC6946a;
import p207v7.InterfaceC7079a;
/* loaded from: classes.dex */
public class DefaultInstantiatorStrategy implements InterfaceC7079a {

    /* renamed from: a */
    public InterfaceC7079a f7405a;

    public DefaultInstantiatorStrategy() {
    }

    public InterfaceC7079a getFallbackInstantiatorStrategy() {
        return this.f7405a;
    }

    public void setFallbackInstantiatorStrategy(InterfaceC7079a interfaceC7079a) {
        this.f7405a = interfaceC7079a;
    }

    public DefaultInstantiatorStrategy(InterfaceC7079a interfaceC7079a) {
        this.f7405a = interfaceC7079a;
    }

    @Override // p207v7.InterfaceC7079a
    public InterfaceC6946a newInstantiatorOf(final Class cls) {
        final Constructor declaredConstructor;
        boolean z;
        if (!Util.isAndroid) {
            if (cls.getEnclosingClass() != null && cls.isMemberClass() && !Modifier.isStatic(cls.getModifiers())) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                try {
                    final ConstructorAccess constructorAccess = ConstructorAccess.get(cls);
                    return new InterfaceC6946a() { // from class: com.esotericsoftware.kryo.util.DefaultInstantiatorStrategy.1
                        @Override // p198u7.InterfaceC6946a
                        public Object newInstance() {
                            try {
                                return constructorAccess.newInstance();
                            } catch (Exception e) {
                                throw new KryoException("Error constructing instance of class: " + Util.className(cls), e);
                            }
                        }
                    };
                } catch (Exception unused) {
                }
            }
        }
        try {
            try {
                declaredConstructor = cls.getConstructor(null);
            } catch (Exception unused2) {
                declaredConstructor = cls.getDeclaredConstructor(null);
                declaredConstructor.setAccessible(true);
            }
            return new InterfaceC6946a() { // from class: com.esotericsoftware.kryo.util.DefaultInstantiatorStrategy.2
                @Override // p198u7.InterfaceC6946a
                public Object newInstance() {
                    try {
                        return declaredConstructor.newInstance(new Object[0]);
                    } catch (Exception e) {
                        throw new KryoException("Error constructing instance of class: " + Util.className(cls), e);
                    }
                }
            };
        } catch (Exception unused3) {
            InterfaceC7079a interfaceC7079a = this.f7405a;
            if (interfaceC7079a == null) {
                if (cls.isMemberClass() && !Modifier.isStatic(cls.getModifiers())) {
                    throw new KryoException("Class cannot be created (non-static member class): " + Util.className(cls));
                }
                StringBuilder sb = new StringBuilder("Class cannot be created (missing no-arg constructor): " + Util.className(cls));
                if (cls.getSimpleName().equals("")) {
                    sb.append("\nNote: This is an anonymous class, which is not serializable by default in Kryo. Possible solutions:\n");
                    sb.append("1. Remove uses of anonymous classes, including double brace initialization, from the containing\n");
                    sb.append("class. This is the safest solution, as anonymous classes don't have predictable names for serialization.\n");
                    sb.append("2. Register a FieldSerializer for the containing class and call FieldSerializer\n");
                    sb.append("setIgnoreSyntheticFields(false) on it. This is not safe but may be sufficient temporarily.");
                }
                throw new KryoException(sb.toString());
            }
            return interfaceC7079a.newInstantiatorOf(cls);
        }
    }
}
