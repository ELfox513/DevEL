package com.google.firebase.remoteconfig.internal;

import p126m7.C4662k;
import p126m7.InterfaceC4660i;
/* renamed from: com.google.firebase.remoteconfig.internal.d */
/* loaded from: classes2.dex */
public class C1440d implements InterfaceC4660i {

    /* renamed from: a */
    public final long f7912a;

    /* renamed from: b */
    public final int f7913b;

    /* renamed from: c */
    public final C4662k f7914c;

    /* renamed from: com.google.firebase.remoteconfig.internal.d$b */
    /* loaded from: classes2.dex */
    public static class C1442b {

        /* renamed from: a */
        public long f7915a;

        /* renamed from: b */
        public int f7916b;

        /* renamed from: c */
        public C4662k f7917c;

        public C1442b() {
        }

        /* renamed from: a */
        public C1440d m22847a() {
            return new C1440d(this.f7915a, this.f7916b, this.f7917c);
        }

        /* renamed from: b */
        public C1442b m22846b(C4662k c4662k) {
            this.f7917c = c4662k;
            return this;
        }

        /* renamed from: c */
        public C1442b m22845c(int i) {
            this.f7916b = i;
            return this;
        }

        /* renamed from: d */
        public C1442b m22844d(long j) {
            this.f7915a = j;
            return this;
        }
    }

    /* renamed from: b */
    public static C1442b m22848b() {
        return new C1442b();
    }

    @Override // p126m7.InterfaceC4660i
    /* renamed from: a */
    public int mo15856a() {
        return this.f7913b;
    }

    public C1440d(long j, int i, C4662k c4662k) {
        this.f7912a = j;
        this.f7913b = i;
        this.f7914c = c4662k;
    }
}
