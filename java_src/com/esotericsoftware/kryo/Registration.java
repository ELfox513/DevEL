package com.esotericsoftware.kryo;

import com.esotericsoftware.kryo.util.Util;
import com.esotericsoftware.minlog.Log;
import p198u7.InterfaceC6946a;
/* loaded from: classes.dex */
public class Registration {

    /* renamed from: a */
    public final Class f7258a;

    /* renamed from: b */
    public final boolean f7259b;

    /* renamed from: c */
    public final int f7260c;

    /* renamed from: d */
    public Serializer f7261d;

    /* renamed from: e */
    public InterfaceC6946a f7262e;

    public int getId() {
        return this.f7260c;
    }

    public InterfaceC6946a getInstantiator() {
        return this.f7262e;
    }

    public Serializer getSerializer() {
        return this.f7261d;
    }

    public Class getType() {
        return this.f7258a;
    }

    public boolean isTypeNameAscii() {
        return this.f7259b;
    }

    public String toString() {
        return "[" + this.f7260c + ", " + Util.className(this.f7258a) + "]";
    }

    public void setInstantiator(InterfaceC6946a interfaceC6946a) {
        if (interfaceC6946a != null) {
            this.f7262e = interfaceC6946a;
            return;
        }
        throw new IllegalArgumentException("instantiator cannot be null.");
    }

    public void setSerializer(Serializer serializer) {
        if (serializer != null) {
            this.f7261d = serializer;
            if (Log.TRACE) {
                Log.trace("kryo", "Update registered serializer: " + this.f7258a.getName() + " (" + serializer.getClass().getName() + ")");
                return;
            }
            return;
        }
        throw new IllegalArgumentException("serializer cannot be null.");
    }

    public Registration(Class cls, Serializer serializer, int i) {
        if (cls != null) {
            if (serializer != null) {
                this.f7258a = cls;
                this.f7261d = serializer;
                this.f7260c = i;
                this.f7259b = Util.isAscii(cls.getName());
                return;
            }
            throw new IllegalArgumentException("serializer cannot be null.");
        }
        throw new IllegalArgumentException("type cannot be null.");
    }
}
