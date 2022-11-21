package com.badlogic.gdx.pay.android.googlebilling;

import com.badlogic.gdx.pay.FreeTrialPeriod;
/* loaded from: classes.dex */
class Iso8601DurationStringToFreeTrialPeriodConverter {
    public static FreeTrialPeriod convertToFreeTrialPeriod(String str) {
        return new FreeTrialPeriod(Integer.parseInt(str.substring(1, str.length() - 1)), FreeTrialPeriod.PeriodUnit.parse(str.substring(str.length() - 1).charAt(0)));
    }
}
