package com.badlogic.gdx.graphics;

import com.badlogic.gdx.utils.ObjectMap;
/* loaded from: classes.dex */
public final class Colors {

    /* renamed from: a */
    public static final ObjectMap<String, Color> f3893a = new ObjectMap<>();

    public static Color get(String str) {
        return f3893a.get(str);
    }

    public static ObjectMap<String, Color> getColors() {
        return f3893a;
    }

    public static Color put(String str, Color color) {
        return f3893a.put(str, color);
    }

    static {
        reset();
    }

    public static void reset() {
        ObjectMap<String, Color> objectMap = f3893a;
        objectMap.clear();
        objectMap.put("CLEAR", Color.CLEAR);
        objectMap.put("BLACK", Color.BLACK);
        objectMap.put("WHITE", Color.WHITE);
        objectMap.put("LIGHT_GRAY", Color.LIGHT_GRAY);
        objectMap.put("GRAY", Color.GRAY);
        objectMap.put("DARK_GRAY", Color.DARK_GRAY);
        objectMap.put("BLUE", Color.BLUE);
        objectMap.put("NAVY", Color.NAVY);
        objectMap.put("ROYAL", Color.ROYAL);
        objectMap.put("SLATE", Color.SLATE);
        objectMap.put("SKY", Color.SKY);
        objectMap.put("CYAN", Color.CYAN);
        objectMap.put("TEAL", Color.TEAL);
        objectMap.put("GREEN", Color.GREEN);
        objectMap.put("CHARTREUSE", Color.CHARTREUSE);
        objectMap.put("LIME", Color.LIME);
        objectMap.put("FOREST", Color.FOREST);
        objectMap.put("OLIVE", Color.OLIVE);
        objectMap.put("YELLOW", Color.YELLOW);
        objectMap.put("GOLD", Color.GOLD);
        objectMap.put("GOLDENROD", Color.GOLDENROD);
        objectMap.put("ORANGE", Color.ORANGE);
        objectMap.put("BROWN", Color.BROWN);
        objectMap.put("TAN", Color.TAN);
        objectMap.put("FIREBRICK", Color.FIREBRICK);
        objectMap.put("RED", Color.RED);
        objectMap.put("SCARLET", Color.SCARLET);
        objectMap.put("CORAL", Color.CORAL);
        objectMap.put("SALMON", Color.SALMON);
        objectMap.put("PINK", Color.PINK);
        objectMap.put("MAGENTA", Color.MAGENTA);
        objectMap.put("PURPLE", Color.PURPLE);
        objectMap.put("VIOLET", Color.VIOLET);
        objectMap.put("MAROON", Color.MAROON);
    }
}
