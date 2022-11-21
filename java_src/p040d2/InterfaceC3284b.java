package p040d2;

import androidx.annotation.RecentlyNonNull;
import p040d2.AbstractC3287e;
@Deprecated
/* renamed from: d2.b */
/* loaded from: classes.dex */
public interface InterfaceC3284b<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS extends AbstractC3287e> {
    void destroy();

    @RecentlyNonNull
    Class<ADDITIONAL_PARAMETERS> getAdditionalParametersType();

    @RecentlyNonNull
    Class<SERVER_PARAMETERS> getServerParametersType();
}
