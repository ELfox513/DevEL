package com.badlogic.gdx.graphics.g3d.particles;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.reflect.ClassReflection;
import com.badlogic.gdx.utils.reflect.ReflectionException;
/* loaded from: classes.dex */
public class ResourceData<T> implements Json.Serializable {

    /* renamed from: a */
    public ObjectMap<String, SaveData> f4557a;

    /* renamed from: b */
    public Array<SaveData> f4558b;

    /* renamed from: d */
    public Array<AssetData> f4559d;

    /* renamed from: k */
    public int f4560k;
    public T resource;

    /* loaded from: classes.dex */
    public static class AssetData<T> implements Json.Serializable {
        public String filename;
        public Class<T> type;

        public AssetData() {
        }

        public AssetData(String str, Class<T> cls) {
            this.filename = str;
            this.type = cls;
        }

        @Override // com.badlogic.gdx.utils.Json.Serializable
        public void read(Json json, JsonValue jsonValue) {
            this.filename = (String) json.readValue("filename", String.class, jsonValue);
            String str = (String) json.readValue("type", String.class, jsonValue);
            try {
                this.type = ClassReflection.forName(str);
            } catch (ReflectionException e) {
                throw new GdxRuntimeException("Class not found: " + str, e);
            }
        }

        @Override // com.badlogic.gdx.utils.Json.Serializable
        public void write(Json json) {
            json.writeValue("filename", this.filename);
            json.writeValue("type", this.type.getName());
        }
    }

    /* loaded from: classes.dex */
    public interface Configurable<T> {
        void load(AssetManager assetManager, ResourceData<T> resourceData);

        void save(AssetManager assetManager, ResourceData<T> resourceData);
    }

    /* loaded from: classes.dex */
    public static class SaveData implements Json.Serializable {

        /* renamed from: a */
        public ObjectMap<String, Object> f4561a = new ObjectMap<>();

        /* renamed from: b */
        public IntArray f4562b = new IntArray();

        /* renamed from: d */
        public int f4563d = 0;

        /* renamed from: k */
        public ResourceData f4564k;

        public SaveData() {
        }

        public <K> K load(String str) {
            return (K) this.f4561a.get(str);
        }

        public void save(String str, Object obj) {
            this.f4561a.put(str, obj);
        }

        public AssetDescriptor loadAsset() {
            int i = this.f4563d;
            IntArray intArray = this.f4562b;
            if (i == intArray.size) {
                return null;
            }
            Array<AssetData> array = this.f4564k.f4559d;
            this.f4563d = i + 1;
            AssetData assetData = array.get(intArray.get(i));
            return new AssetDescriptor(assetData.filename, assetData.type);
        }

        @Override // com.badlogic.gdx.utils.Json.Serializable
        public void read(Json json, JsonValue jsonValue) {
            this.f4561a = (ObjectMap) json.readValue("data", ObjectMap.class, jsonValue);
            this.f4562b.addAll((int[]) json.readValue("indices", int[].class, jsonValue));
        }

        public <K> void saveAsset(String str, Class<K> cls) {
            int m24114a = this.f4564k.m24114a(str, cls);
            if (m24114a == -1) {
                this.f4564k.f4559d.add(new AssetData(str, cls));
                m24114a = this.f4564k.f4559d.size - 1;
            }
            this.f4562b.add(m24114a);
        }

        @Override // com.badlogic.gdx.utils.Json.Serializable
        public void write(Json json) {
            json.writeValue("data", this.f4561a, ObjectMap.class);
            json.writeValue("indices", this.f4562b.toArray(), int[].class);
        }

        public SaveData(ResourceData resourceData) {
            this.f4564k = resourceData;
        }
    }

    public ResourceData() {
        this.f4557a = new ObjectMap<>();
        this.f4558b = new Array<>(true, 3, SaveData.class);
        this.f4559d = new Array<>();
        this.f4560k = 0;
    }

    public SaveData createSaveData() {
        SaveData saveData = new SaveData(this);
        this.f4558b.add(saveData);
        return saveData;
    }

    public Array<AssetData> getAssets() {
        return this.f4559d;
    }

    public SaveData getSaveData() {
        Array<SaveData> array = this.f4558b;
        int i = this.f4560k;
        this.f4560k = i + 1;
        return array.get(i);
    }

    /* renamed from: a */
    public <K> int m24114a(String str, Class<K> cls) {
        Array.ArrayIterator<AssetData> it = this.f4559d.iterator();
        int i = 0;
        while (it.hasNext()) {
            AssetData next = it.next();
            if (next.filename.equals(str) && next.type.equals(cls)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public Array<AssetDescriptor> getAssetDescriptors() {
        Array<AssetDescriptor> array = new Array<>();
        Array.ArrayIterator<AssetData> it = this.f4559d.iterator();
        while (it.hasNext()) {
            AssetData next = it.next();
            array.add(new AssetDescriptor(next.filename, next.type));
        }
        return array;
    }

    public SaveData getSaveData(String str) {
        return this.f4557a.get(str);
    }

    @Override // com.badlogic.gdx.utils.Json.Serializable
    public void read(Json json, JsonValue jsonValue) {
        ObjectMap<String, SaveData> objectMap = (ObjectMap) json.readValue("unique", ObjectMap.class, jsonValue);
        this.f4557a = objectMap;
        ObjectMap.Entries<String, SaveData> it = objectMap.entries().iterator();
        while (it.hasNext()) {
            ((SaveData) it.next().value).f4564k = this;
        }
        Array<SaveData> array = (Array) json.readValue("data", (Class<Object>) Array.class, SaveData.class, jsonValue);
        this.f4558b = array;
        Array.ArrayIterator<SaveData> it2 = array.iterator();
        while (it2.hasNext()) {
            it2.next().f4564k = this;
        }
        this.f4559d.addAll((Array) json.readValue("assets", (Class<Object>) Array.class, AssetData.class, jsonValue));
        this.resource = (T) json.readValue("resource", (Class<Object>) null, jsonValue);
    }

    @Override // com.badlogic.gdx.utils.Json.Serializable
    public void write(Json json) {
        json.writeValue("unique", this.f4557a, ObjectMap.class);
        json.writeValue("data", this.f4558b, Array.class, SaveData.class);
        json.writeValue("assets", this.f4559d.toArray(AssetData.class), AssetData[].class);
        json.writeValue("resource", this.resource, (Class) null);
    }

    public SaveData createSaveData(String str) {
        SaveData saveData = new SaveData(this);
        if (!this.f4557a.containsKey(str)) {
            this.f4557a.put(str, saveData);
            return saveData;
        }
        throw new RuntimeException("Key already used, data must be unique, use a different key");
    }

    public ResourceData(T t) {
        this();
        this.resource = t;
    }
}
