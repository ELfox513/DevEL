package com.esotericsoftware.jsonbeans;
/* loaded from: classes.dex */
public abstract class ReadOnlySerializer<T> implements JsonSerializer<T> {
    @Override // com.esotericsoftware.jsonbeans.JsonSerializer
    public abstract T read(Json json, JsonValue jsonValue, Class cls);

    @Override // com.esotericsoftware.jsonbeans.JsonSerializer
    public void write(Json json, T t, Class cls) {
    }
}
