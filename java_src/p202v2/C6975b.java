package p202v2;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.RecentlyNonNull;
import p184t2.InterfaceC6717n;
@Deprecated
/* renamed from: v2.b */
/* loaded from: classes.dex */
public class C6975b extends FrameLayout {

    /* renamed from: a */
    public InterfaceC6717n f35879a;

    /* renamed from: b */
    public ImageView.ScaleType f35880b;

    public C6975b(@RecentlyNonNull Context context) {
        super(context);
    }

    public void setImageScaleType(@RecentlyNonNull ImageView.ScaleType scaleType) {
        this.f35880b = scaleType;
    }

    public void setMediaContent(@RecentlyNonNull InterfaceC6717n interfaceC6717n) {
        this.f35879a = interfaceC6717n;
    }
}
