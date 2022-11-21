package com.badlogic.gdx.maps;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.reflect.ClassReflection;
import java.util.Iterator;
/* loaded from: classes.dex */
public class MapLayers implements Iterable<MapLayer> {

    /* renamed from: a */
    public Array<MapLayer> f5259a = new Array<>();

    public void add(MapLayer mapLayer) {
        this.f5259a.add(mapLayer);
    }

    public MapLayer get(int i) {
        return this.f5259a.get(i);
    }

    public <T extends MapLayer> Array<T> getByType(Class<T> cls) {
        return getByType(cls, new Array<>());
    }

    public int getCount() {
        return this.f5259a.size;
    }

    public int getIndex(String str) {
        return getIndex(get(str));
    }

    @Override // java.lang.Iterable
    public Iterator<MapLayer> iterator() {
        return this.f5259a.iterator();
    }

    public void remove(int i) {
        this.f5259a.removeIndex(i);
    }

    public int size() {
        return this.f5259a.size;
    }

    public MapLayer get(String str) {
        int i = this.f5259a.size;
        for (int i2 = 0; i2 < i; i2++) {
            MapLayer mapLayer = this.f5259a.get(i2);
            if (str.equals(mapLayer.getName())) {
                return mapLayer;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends MapLayer> Array<T> getByType(Class<T> cls, Array<T> array) {
        array.clear();
        int i = this.f5259a.size;
        for (int i2 = 0; i2 < i; i2++) {
            MapLayer mapLayer = this.f5259a.get(i2);
            if (ClassReflection.isInstance(cls, mapLayer)) {
                array.add(mapLayer);
            }
        }
        return array;
    }

    public int getIndex(MapLayer mapLayer) {
        return this.f5259a.indexOf(mapLayer, true);
    }

    public void remove(MapLayer mapLayer) {
        this.f5259a.removeValue(mapLayer, true);
    }
}
