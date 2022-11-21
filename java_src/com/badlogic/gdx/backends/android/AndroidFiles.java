package com.badlogic.gdx.backends.android;

import com.badlogic.gdx.Files;
/* loaded from: classes.dex */
public interface AndroidFiles extends Files {
    ZipResourceFile getExpansionFile();

    boolean setAPKExpansion(int i, int i2);
}
