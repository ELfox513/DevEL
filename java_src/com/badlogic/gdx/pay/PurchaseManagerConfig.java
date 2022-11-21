package com.badlogic.gdx.pay;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class PurchaseManagerConfig {
    public static final String STORE_NAME_ANDROID_AMAZON = "Amazon";
    public static final String STORE_NAME_ANDROID_APPLAND = "Appland";
    public static final String STORE_NAME_ANDROID_APTOIDE = "Aptoide";
    public static final String STORE_NAME_ANDROID_GOOGLE = "GooglePlay";
    public static final String STORE_NAME_ANDROID_HUAWEI = "Huawei";
    public static final String STORE_NAME_ANDROID_NOKIA = "Nokia";
    public static final String STORE_NAME_ANDROID_SAMSUNG = "Samsung";
    public static final String STORE_NAME_ANDROID_SLIDEME = "SlideME";
    public static final String STORE_NAME_ANDROID_YANDEX = "Yandex";
    public static final String STORE_NAME_DESKTOP_APPLE = "AppleMac";
    public static final String STORE_NAME_DESKTOP_STEAM = "Steam";
    public static final String STORE_NAME_DESKTOP_WINDOWS = "Windows";
    public static final String STORE_NAME_GWT_GOOGLEWALLET = "GwtGoogleWallet";
    public static final String STORE_NAME_IOS_APPLE = "AppleiOS";

    /* renamed from: a */
    public List<Offer> f5587a = new ArrayList(16);

    /* renamed from: b */
    public Map<String, Object> f5588b = new HashMap(16);

    public synchronized void addOffer(Offer offer) {
        this.f5587a.add(offer);
    }

    public synchronized void addStoreParam(String str, Object obj) {
        this.f5588b.put(str, obj);
    }

    public synchronized Offer getOffer(String str) {
        for (int i = 0; i < this.f5587a.size(); i++) {
            if (this.f5587a.get(i).getIdentifier().equals(str)) {
                return this.f5587a.get(i);
            }
        }
        return null;
    }

    public synchronized int getOfferCount() {
        return this.f5587a.size();
    }

    public synchronized Offer getOfferForStore(String str, String str2) {
        for (int i = 0; i < this.f5587a.size(); i++) {
            if (this.f5587a.get(i).getIdentifierForStore(str).equals(str2)) {
                return this.f5587a.get(i);
            }
        }
        return null;
    }

    public synchronized Object getStoreParam(String str) {
        return this.f5588b.get(str);
    }

    public synchronized Offer getOffer(int i) {
        return this.f5587a.get(i);
    }
}
