package com.badlogic.gdx.p032ai;

import com.badlogic.gdx.Gdx;
/* renamed from: com.badlogic.gdx.ai.GdxAI */
/* loaded from: classes.dex */
public final class GdxAI {

    /* renamed from: a */
    public static Timepiece f3184a = new DefaultTimepiece();

    /* renamed from: b */
    public static Logger f3185b;

    /* renamed from: c */
    public static FileSystem f3186c;

    public static FileSystem getFileSystem() {
        return f3186c;
    }

    public static Logger getLogger() {
        return f3185b;
    }

    public static Timepiece getTimepiece() {
        return f3184a;
    }

    public static void setFileSystem(FileSystem fileSystem) {
        f3186c = fileSystem;
    }

    public static void setLogger(Logger logger) {
        f3185b = logger;
    }

    public static void setTimepiece(Timepiece timepiece) {
        f3184a = timepiece;
    }

    static {
        Logger gdxLogger;
        FileSystem gdxFileSystem;
        if (Gdx.app == null) {
            gdxLogger = new NullLogger();
        } else {
            gdxLogger = new GdxLogger();
        }
        f3185b = gdxLogger;
        if (Gdx.files == null) {
            gdxFileSystem = new StandaloneFileSystem();
        } else {
            gdxFileSystem = new GdxFileSystem();
        }
        f3186c = gdxFileSystem;
    }
}
