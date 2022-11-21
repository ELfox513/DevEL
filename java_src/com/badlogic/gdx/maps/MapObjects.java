package com.badlogic.gdx.maps;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.reflect.ClassReflection;
import java.util.Iterator;
/* loaded from: classes.dex */
public class MapObjects implements Iterable<MapObject> {

    /* renamed from: a */
    public Array<MapObject> f5265a = new Array<>();

    public void add(MapObject mapObject) {
        this.f5265a.add(mapObject);
    }

    public MapObject get(int i) {
        return this.f5265a.get(i);
    }

    public <T extends MapObject> Array<T> getByType(Class<T> cls) {
        return getByType(cls, new Array<>());
    }

    public int getCount() {
        return this.f5265a.size;
    }

    public int getIndex(String str) {
        return getIndex(get(str));
    }

    @Override // java.lang.Iterable
    public Iterator<MapObject> iterator() {
        return this.f5265a.iterator();
    }

    public void remove(int i) {
        this.f5265a.removeIndex(i);
    }

    public MapObject get(String str) {
        int i = this.f5265a.size;
        for (int i2 = 0; i2 < i; i2++) {
            MapObject mapObject = this.f5265a.get(i2);
            if (str.equals(mapObject.getName())) {
                return mapObject;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends MapObject> Array<T> getByType(Class<T> cls, Array<T> array) {
        array.clear();
        int i = this.f5265a.size;
        for (int i2 = 0; i2 < i; i2++) {
            MapObject mapObject = this.f5265a.get(i2);
            if (ClassReflection.isInstance(cls, mapObject)) {
                array.add(mapObject);
            }
        }
        return array;
    }

    public int getIndex(MapObject mapObject) {
        return this.f5265a.indexOf(mapObject, true);
    }

    public void remove(MapObject mapObject) {
        this.f5265a.removeValue(mapObject, true);
    }
}
