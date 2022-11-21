package com.badlogic.gdx.backends.android;

import android.content.SharedPreferences;
import com.badlogic.gdx.Preferences;
import java.util.Map;
/* loaded from: classes.dex */
public class AndroidPreferences implements Preferences {

    /* renamed from: a */
    public SharedPreferences f3739a;

    /* renamed from: b */
    public SharedPreferences.Editor f3740b;

    @Override // com.badlogic.gdx.Preferences
    public boolean contains(String str) {
        return this.f3739a.contains(str);
    }

    @Override // com.badlogic.gdx.Preferences
    public Map<String, ?> get() {
        return this.f3739a.getAll();
    }

    @Override // com.badlogic.gdx.Preferences
    public boolean getBoolean(String str) {
        return this.f3739a.getBoolean(str, false);
    }

    @Override // com.badlogic.gdx.Preferences
    public float getFloat(String str) {
        return this.f3739a.getFloat(str, 0.0f);
    }

    @Override // com.badlogic.gdx.Preferences
    public int getInteger(String str) {
        return this.f3739a.getInt(str, 0);
    }

    @Override // com.badlogic.gdx.Preferences
    public long getLong(String str) {
        return this.f3739a.getLong(str, 0L);
    }

    @Override // com.badlogic.gdx.Preferences
    public String getString(String str) {
        return this.f3739a.getString(str, "");
    }

    /* renamed from: a */
    public final void m24305a() {
        if (this.f3740b == null) {
            this.f3740b = this.f3739a.edit();
        }
    }

    @Override // com.badlogic.gdx.Preferences
    public void flush() {
        SharedPreferences.Editor editor = this.f3740b;
        if (editor != null) {
            editor.apply();
            this.f3740b = null;
        }
    }

    @Override // com.badlogic.gdx.Preferences
    public boolean getBoolean(String str, boolean z) {
        return this.f3739a.getBoolean(str, z);
    }

    @Override // com.badlogic.gdx.Preferences
    public float getFloat(String str, float f) {
        return this.f3739a.getFloat(str, f);
    }

    @Override // com.badlogic.gdx.Preferences
    public int getInteger(String str, int i) {
        return this.f3739a.getInt(str, i);
    }

    @Override // com.badlogic.gdx.Preferences
    public long getLong(String str, long j) {
        return this.f3739a.getLong(str, j);
    }

    @Override // com.badlogic.gdx.Preferences
    public String getString(String str, String str2) {
        return this.f3739a.getString(str, str2);
    }

    public AndroidPreferences(SharedPreferences sharedPreferences) {
        this.f3739a = sharedPreferences;
    }

    @Override // com.badlogic.gdx.Preferences
    public void clear() {
        m24305a();
        this.f3740b.clear();
    }

    @Override // com.badlogic.gdx.Preferences
    public Preferences put(Map<String, ?> map) {
        m24305a();
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            if (entry.getValue() instanceof Boolean) {
                putBoolean(entry.getKey(), ((Boolean) entry.getValue()).booleanValue());
            }
            if (entry.getValue() instanceof Integer) {
                putInteger(entry.getKey(), ((Integer) entry.getValue()).intValue());
            }
            if (entry.getValue() instanceof Long) {
                putLong(entry.getKey(), ((Long) entry.getValue()).longValue());
            }
            if (entry.getValue() instanceof String) {
                putString(entry.getKey(), (String) entry.getValue());
            }
            if (entry.getValue() instanceof Float) {
                putFloat(entry.getKey(), ((Float) entry.getValue()).floatValue());
            }
        }
        return this;
    }

    @Override // com.badlogic.gdx.Preferences
    public Preferences putBoolean(String str, boolean z) {
        m24305a();
        this.f3740b.putBoolean(str, z);
        return this;
    }

    @Override // com.badlogic.gdx.Preferences
    public Preferences putFloat(String str, float f) {
        m24305a();
        this.f3740b.putFloat(str, f);
        return this;
    }

    @Override // com.badlogic.gdx.Preferences
    public Preferences putInteger(String str, int i) {
        m24305a();
        this.f3740b.putInt(str, i);
        return this;
    }

    @Override // com.badlogic.gdx.Preferences
    public Preferences putLong(String str, long j) {
        m24305a();
        this.f3740b.putLong(str, j);
        return this;
    }

    @Override // com.badlogic.gdx.Preferences
    public Preferences putString(String str, String str2) {
        m24305a();
        this.f3740b.putString(str, str2);
        return this;
    }

    @Override // com.badlogic.gdx.Preferences
    public void remove(String str) {
        m24305a();
        this.f3740b.remove(str);
    }
}
