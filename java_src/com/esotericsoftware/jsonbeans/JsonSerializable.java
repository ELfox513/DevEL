package com.esotericsoftware.jsonbeans;
/* loaded from: classes.dex */
public interface JsonSerializable {
    void read(Json json, JsonValue jsonValue);

    void write(Json json);
}
