package com.badlogic.gdx.maps;

import com.badlogic.gdx.utils.ObjectMap;
import java.util.Iterator;
/* loaded from: classes.dex */
public class MapProperties {

    /* renamed from: a */
    public ObjectMap<String, Object> f5266a = new ObjectMap<>();

    public void clear() {
        this.f5266a.clear();
    }

    public boolean containsKey(String str) {
        return this.f5266a.containsKey(str);
    }

    public Object get(String str) {
        return this.f5266a.get(str);
    }

    public Iterator<String> getKeys() {
        return this.f5266a.keys();
    }

    public Iterator<Object> getValues() {
        return this.f5266a.values();
    }

    public void put(String str, Object obj) {
        this.f5266a.put(str, obj);
    }

    public void putAll(MapProperties mapProperties) {
        this.f5266a.putAll(mapProperties.f5266a);
    }

    public void remove(String str) {
        this.f5266a.remove(str);
    }

    public <T> T get(String str, Class<T> cls) {
        return (T) get(str);
    }

    public <T> T get(String str, T t, Class<T> cls) {
        T t2 = (T) get(str);
        return t2 == null ? t : t2;
    }
}
