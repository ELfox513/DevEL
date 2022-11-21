package android.transition;

import android.view.View;
import java.util.List;
/* loaded from: classes.dex */
public /* synthetic */ class Transition implements Cloneable {

    /* loaded from: classes.dex */
    public /* synthetic */ class EpicenterCallback {
        static {
            throw new NoClassDefFoundError();
        }
    }

    /* loaded from: classes.dex */
    public /* synthetic */ interface TransitionListener {
        static {
            throw new NoClassDefFoundError();
        }
    }

    static {
        throw new NoClassDefFoundError();
    }

    public native /* synthetic */ Transition addListener(TransitionListener transitionListener);

    public native /* synthetic */ Transition addTarget(View view);

    public native /* synthetic */ Transition clone();

    public native /* synthetic */ List<Integer> getTargetIds();

    public native /* synthetic */ List<View> getTargets();

    public native /* synthetic */ Transition removeListener(TransitionListener transitionListener);

    public native /* synthetic */ Transition removeTarget(View view);
}
