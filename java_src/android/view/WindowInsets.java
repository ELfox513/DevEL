package android.view;

import android.annotation.NonNull;
import android.annotation.Nullable;
import android.graphics.Insets;
/* loaded from: classes.dex */
public final /* synthetic */ class WindowInsets {

    /* loaded from: classes.dex */
    public final /* synthetic */ class Builder {
        static {
            throw new NoClassDefFoundError();
        }

        public /* synthetic */ Builder(@NonNull WindowInsets windowInsets) {
        }

        @NonNull
        public native /* synthetic */ WindowInsets build();

        @NonNull
        @Deprecated
        public native /* synthetic */ Builder setMandatorySystemGestureInsets(@NonNull Insets insets);

        @NonNull
        @Deprecated
        public native /* synthetic */ Builder setStableInsets(@NonNull Insets insets);

        @NonNull
        @Deprecated
        public native /* synthetic */ Builder setSystemGestureInsets(@NonNull Insets insets);

        @NonNull
        @Deprecated
        public native /* synthetic */ Builder setSystemWindowInsets(@NonNull Insets insets);

        @NonNull
        @Deprecated
        public native /* synthetic */ Builder setTappableElementInsets(@NonNull Insets insets);
    }

    /* loaded from: classes.dex */
    public final /* synthetic */ class Type {
        static {
            throw new NoClassDefFoundError();
        }

        public static native /* synthetic */ int captionBar();

        public static native /* synthetic */ int displayCutout();

        public static native /* synthetic */ int ime();

        public static native /* synthetic */ int mandatorySystemGestures();

        public static native /* synthetic */ int navigationBars();

        public static native /* synthetic */ int statusBars();

        public static native /* synthetic */ int systemGestures();

        public static native /* synthetic */ int tappableElement();
    }

    static {
        throw new NoClassDefFoundError();
    }

    public /* synthetic */ WindowInsets(WindowInsets windowInsets) {
    }

    @NonNull
    @Deprecated
    public native /* synthetic */ WindowInsets consumeSystemWindowInsets();

    public native /* synthetic */ boolean equals(@Nullable Object obj);

    @Deprecated
    public native /* synthetic */ int getSystemWindowInsetBottom();

    @Deprecated
    public native /* synthetic */ int getSystemWindowInsetLeft();

    @Deprecated
    public native /* synthetic */ int getSystemWindowInsetRight();

    @Deprecated
    public native /* synthetic */ int getSystemWindowInsetTop();

    public native /* synthetic */ int hashCode();

    public native /* synthetic */ boolean isRound();

    @NonNull
    @Deprecated
    public native /* synthetic */ WindowInsets replaceSystemWindowInsets(int i, int i2, int i3, int i4);
}
