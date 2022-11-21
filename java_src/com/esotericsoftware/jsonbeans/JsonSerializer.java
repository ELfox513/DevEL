package com.esotericsoftware.jsonbeans;
/* loaded from: classes.dex */
public interface JsonSerializer<T> {
    T read(Json json, JsonValue jsonValue, Class cls);

    void write(Json json, T t, Class cls);
}
