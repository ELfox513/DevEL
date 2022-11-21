package com.prineside.tdi2.utils;

import com.badlogic.gdx.math.RandomXS128;
import com.prineside.tdi2.Game;
import java.util.Random;
/* loaded from: classes2.dex */
public class FastRandom {
    public static final RandomXS128 random = new RandomXS128();

    /* renamed from: a */
    public static final float[] f15077a = new float[8192];

    /* renamed from: b */
    public static int f15078b = 0;

    public static float getFairFloat() {
        return random.nextFloat();
    }

    public static int getFairInt(int i) {
        return random.nextInt(i);
    }

    public static int getInt(int i) {
        return (int) (getFloat() * i);
    }

    static {
        for (int i = 0; i < 8192; i++) {
            f15077a[i] = random.nextFloat();
        }
    }

    public static String getDistinguishableString(int i, RandomXS128 randomXS128) {
        if (randomXS128 == null) {
            randomXS128 = random;
        }
        StringBuilder sb = new StringBuilder(i);
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(StringFormatter.DISTINGUISHABLE_STRING_CHARS.charAt(randomXS128.nextInt(32)));
        }
        return sb.toString();
    }

    public static float getFloat() {
        int i = f15078b + 1;
        f15078b = i;
        if (i == 8192) {
            f15078b = 0;
        }
        return f15077a[f15078b];
    }

    public static String generateUniqueDistinguishableId() {
        String distinguishableString = StringFormatter.distinguishableString(Game.getTimestampSeconds());
        Random random2 = new Random();
        RandomXS128 randomXS128 = random;
        randomXS128.setState(random2.nextLong(), Game.getTimestampMillis());
        return getDistinguishableString(4, randomXS128) + "-" + getDistinguishableString(4, randomXS128) + "-" + distinguishableString.substring(distinguishableString.length() - 6, distinguishableString.length());
    }
}
