package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.pay.PurchaseManagerConfig;
/* loaded from: classes.dex */
public final class UIUtils {
    public static boolean isAndroid;
    public static boolean isIos;
    public static boolean isLinux;
    public static boolean isMac;
    public static boolean isWindows;

    public static boolean alt() {
        return Gdx.input.isKeyPressed(57) || Gdx.input.isKeyPressed(58);
    }

    public static boolean alt(int i) {
        return i == 57 || i == 58;
    }

    public static boolean ctrl() {
        if (isMac) {
            return Gdx.input.isKeyPressed(63);
        }
        return Gdx.input.isKeyPressed(129) || Gdx.input.isKeyPressed(130);
    }

    public static boolean left() {
        return Gdx.input.isButtonPressed(0);
    }

    public static boolean left(int i) {
        return i == 0;
    }

    public static boolean middle() {
        return Gdx.input.isButtonPressed(2);
    }

    public static boolean middle(int i) {
        return i == 2;
    }

    public static boolean right() {
        return Gdx.input.isButtonPressed(1);
    }

    public static boolean right(int i) {
        return i == 1;
    }

    public static boolean shift() {
        return Gdx.input.isKeyPressed(59) || Gdx.input.isKeyPressed(60);
    }

    public static boolean shift(int i) {
        return i == 59 || i == 60;
    }

    static {
        boolean z;
        boolean z2;
        boolean z3;
        boolean contains = System.getProperty("java.runtime.name").contains("Android");
        isAndroid = contains;
        boolean z4 = true;
        if (!contains && System.getProperty("os.name").contains("Mac")) {
            z = true;
        } else {
            z = false;
        }
        isMac = z;
        if (!isAndroid && System.getProperty("os.name").contains(PurchaseManagerConfig.STORE_NAME_DESKTOP_WINDOWS)) {
            z2 = true;
        } else {
            z2 = false;
        }
        isWindows = z2;
        if (!isAndroid && System.getProperty("os.name").contains("Linux")) {
            z3 = true;
        } else {
            z3 = false;
        }
        isLinux = z3;
        isIos = (isAndroid || isWindows || z3 || isMac) ? false : false;
    }

    public static boolean ctrl(int i) {
        return isMac ? i == 63 : i == 129 || i == 130;
    }
}
