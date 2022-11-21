package com.google.android.gms.common;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepName;
@KeepName
/* loaded from: classes.dex */
public class GooglePlayServicesManifestException extends IllegalStateException {

    /* renamed from: a */
    public final int f7705a;

    public GooglePlayServicesManifestException(int i, @RecentlyNonNull String str) {
        super(str);
        this.f7705a = i;
    }
}
