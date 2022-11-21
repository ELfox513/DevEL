package com.badlogic.gdx;

import com.badlogic.gdx.utils.IntSet;
/* loaded from: classes.dex */
public abstract class AbstractInput implements Input {

    /* renamed from: k */
    public int f3114k;

    /* renamed from: p */
    public boolean f3115p;

    /* renamed from: d */
    public final IntSet f3113d = new IntSet();

    /* renamed from: a */
    public final boolean[] f3111a = new boolean[256];

    /* renamed from: b */
    public final boolean[] f3112b = new boolean[256];

    @Override // com.badlogic.gdx.Input
    public boolean isCatchBackKey() {
        return this.f3113d.contains(4);
    }

    @Override // com.badlogic.gdx.Input
    public boolean isCatchKey(int i) {
        return this.f3113d.contains(i);
    }

    @Override // com.badlogic.gdx.Input
    public boolean isCatchMenuKey() {
        return this.f3113d.contains(82);
    }

    @Override // com.badlogic.gdx.Input
    public boolean isKeyJustPressed(int i) {
        if (i == -1) {
            return this.f3115p;
        }
        if (i >= 0 && i <= 255) {
            return this.f3112b[i];
        }
        return false;
    }

    @Override // com.badlogic.gdx.Input
    public boolean isKeyPressed(int i) {
        if (i == -1) {
            return this.f3114k > 0;
        } else if (i < 0 || i > 255) {
            return false;
        } else {
            return this.f3111a[i];
        }
    }

    @Override // com.badlogic.gdx.Input
    public void setCatchBackKey(boolean z) {
        setCatchKey(4, z);
    }

    @Override // com.badlogic.gdx.Input
    public void setCatchMenuKey(boolean z) {
        setCatchKey(82, z);
    }

    @Override // com.badlogic.gdx.Input
    public void setCatchKey(int i, boolean z) {
        if (!z) {
            this.f3113d.remove(i);
        } else {
            this.f3113d.add(i);
        }
    }
}
