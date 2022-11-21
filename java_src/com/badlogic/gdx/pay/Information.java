package com.badlogic.gdx.pay;
/* loaded from: classes.dex */
public final class Information {
    public static final Information UNAVAILABLE = new Information(null, null, null);

    /* renamed from: a */
    public final String f5569a;

    /* renamed from: b */
    public final String f5570b;

    /* renamed from: c */
    public final String f5571c;
    @Deprecated

    /* renamed from: d */
    public Integer f5572d;

    /* renamed from: e */
    public Double f5573e;

    /* renamed from: f */
    public String f5574f;

    /* renamed from: g */
    public FreeTrialPeriod f5575g;

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a */
        public String f5576a;

        /* renamed from: b */
        public String f5577b;

        /* renamed from: c */
        public String f5578c;
        @Deprecated

        /* renamed from: d */
        public Integer f5579d;

        /* renamed from: e */
        public Double f5580e;

        /* renamed from: f */
        public String f5581f;

        /* renamed from: g */
        public FreeTrialPeriod f5582g;

        public Information build() {
            return new Information(this);
        }

        public Builder freeTrialPeriod(FreeTrialPeriod freeTrialPeriod) {
            this.f5582g = freeTrialPeriod;
            return this;
        }

        public Builder localDescription(String str) {
            this.f5577b = str;
            return this;
        }

        public Builder localName(String str) {
            this.f5576a = str;
            return this;
        }

        public Builder localPricing(String str) {
            this.f5578c = str;
            return this;
        }

        public Builder priceAsDouble(Double d) {
            this.f5580e = d;
            return this;
        }

        public Builder priceCurrencyCode(String str) {
            this.f5581f = str;
            return this;
        }

        @Deprecated
        public Builder priceInCents(Integer num) {
            this.f5579d = num;
            return this;
        }

        public Builder() {
        }
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Information.class != obj.getClass()) {
            return false;
        }
        Information information = (Information) obj;
        String str = this.f5569a;
        if (str == null ? information.f5569a != null : !str.equals(information.f5569a)) {
            return false;
        }
        String str2 = this.f5570b;
        if (str2 == null ? information.f5570b != null : !str2.equals(information.f5570b)) {
            return false;
        }
        String str3 = this.f5571c;
        String str4 = information.f5571c;
        if (str3 != null) {
            if (str3.equals(str4)) {
                return true;
            }
        } else if (str4 == null) {
            return true;
        }
        return false;
    }

    public FreeTrialPeriod getFreeTrialPeriod() {
        return this.f5575g;
    }

    public String getLocalDescription() {
        return this.f5570b;
    }

    public String getLocalName() {
        return this.f5569a;
    }

    public String getLocalPricing() {
        return this.f5571c;
    }

    public Double getPriceAsDouble() {
        return this.f5573e;
    }

    public String getPriceCurrencyCode() {
        return this.f5574f;
    }

    @Deprecated
    public Integer getPriceInCents() {
        return this.f5572d;
    }

    public String toString() {
        return "Information{localName='" + this.f5569a + "', localDescription='" + this.f5570b + "', localPricing='" + this.f5571c + "'}";
    }

    public Information(String str, String str2, String str3) {
        this.f5569a = str;
        this.f5570b = str2;
        this.f5571c = str3;
    }

    public int hashCode() {
        int i;
        int i2;
        String str = this.f5569a;
        int i3 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i4 = i * 31;
        String str2 = this.f5570b;
        if (str2 != null) {
            i2 = str2.hashCode();
        } else {
            i2 = 0;
        }
        int i5 = (i4 + i2) * 31;
        String str3 = this.f5571c;
        if (str3 != null) {
            i3 = str3.hashCode();
        }
        return i5 + i3;
    }

    public Information(Builder builder) {
        this.f5569a = builder.f5576a;
        this.f5570b = builder.f5577b;
        this.f5571c = builder.f5578c;
        this.f5572d = builder.f5579d;
        this.f5573e = builder.f5580e;
        this.f5574f = builder.f5581f;
        this.f5575g = builder.f5582g;
    }
}
