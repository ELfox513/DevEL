package com.prineside.tdi2;

import com.prineside.tdi2.enums.GameValueType;
/* loaded from: classes2.dex */
public interface GameValueProvider {
    boolean getBooleanValue(GameValueType gameValueType);

    float getFloatValue(GameValueType gameValueType);

    float getFloatValue(GameValueType gameValueType, GameValueType gameValueType2);

    int getIntValue(GameValueType gameValueType);

    int getIntValue(GameValueType gameValueType, GameValueType gameValueType2);

    double getPercentValueAsMultiplier(GameValueType gameValueType);

    double getPercentValueAsMultiplier(GameValueType gameValueType, GameValueType gameValueType2);

    double getPercentValueAsMultiplier(GameValueType[] gameValueTypeArr);

    double getValue(GameValueType gameValueType);
}
