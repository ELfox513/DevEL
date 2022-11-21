package com.badlogic.gdx.utils;
/* loaded from: classes.dex */
public class GdxNativesLoader {

    /* renamed from: a */
    public static boolean f6443a = false;
    public static boolean disableNativesLoading = false;

    public static synchronized void load() {
        synchronized (GdxNativesLoader.class) {
            if (f6443a) {
                return;
            }
            if (disableNativesLoading) {
                return;
            }
            new SharedLibraryLoader().load("gdx");
            f6443a = true;
        }
    }
}
