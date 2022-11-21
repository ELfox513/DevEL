package com.badlogic.gdx;

import java.util.Map;
/* loaded from: classes.dex */
public interface Preferences {
    void clear();

    boolean contains(String str);

    void flush();

    Map<String, ?> get();

    boolean getBoolean(String str);

    boolean getBoolean(String str, boolean z);

    float getFloat(String str);

    float getFloat(String str, float f);

    int getInteger(String str);

    int getInteger(String str, int i);

    long getLong(String str);

    long getLong(String str, long j);

    String getString(String str);

    String getString(String str, String str2);

    Preferences put(Map<String, ?> map);

    Preferences putBoolean(String str, boolean z);

    Preferences putFloat(String str, float f);

    Preferences putInteger(String str, int i);

    Preferences putLong(String str, long j);

    Preferences putString(String str, String str2);

    void remove(String str);
}
