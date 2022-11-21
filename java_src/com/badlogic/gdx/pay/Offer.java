package com.badlogic.gdx.pay;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class Offer {

    /* renamed from: a */
    public OfferType f5583a;

    /* renamed from: b */
    public String f5584b;

    /* renamed from: c */
    public Map<String, String> f5585c = new HashMap(16);

    public synchronized String getIdentifier() {
        return this.f5584b;
    }

    public synchronized String getIdentifierForStore(String str) {
        String str2 = this.f5585c.get(str);
        if (str2 != null) {
            return str2;
        }
        return this.f5584b;
    }

    public synchronized Set<Map.Entry<String, String>> getIdentifierForStores() {
        return this.f5585c.entrySet();
    }

    public synchronized OfferType getType() {
        return this.f5583a;
    }

    public synchronized Offer putIdentifierForStore(String str, String str2) {
        this.f5585c.put(str, str2);
        return this;
    }

    public synchronized Offer setIdentifier(String str) {
        this.f5584b = str;
        return this;
    }

    public synchronized Offer setType(OfferType offerType) {
        this.f5583a = offerType;
        return this;
    }

    public String toString() {
        return "Offer{type=" + this.f5583a + ", identifier='" + this.f5584b + "', identifierForStores=" + this.f5585c + '}';
    }
}
