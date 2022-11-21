package net.bytebuddy.build;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import net.bytebuddy.asm.Advice;
import net.bytebuddy.build.CachedReturnPlugin;
@SuppressFBWarnings(justification = "Name is chosen to optimize for simple lookup", value = {"NM_CLASS_NAMING_CONVENTION"})
/* loaded from: classes.dex */
class CachedReturnPlugin$Advice$double {
    @Advice.OnMethodEnter(skipOn = Advice.OnNonDefaultValue.class)
    public static double enter(@CachedReturnPlugin.CacheField double d) {
        return d;
    }

    @SuppressFBWarnings(justification = "Advice method serves as a template", value = {"UC_USELESS_VOID_METHOD", "DLS_DEAD_LOCAL_STORE"})
    @Advice.OnMethodExit
    public static void exit(@Advice.Return(readOnly = false) double d, @CachedReturnPlugin.CacheField double d2) {
    }

    private CachedReturnPlugin$Advice$double() {
        throw new UnsupportedOperationException("This class is merely an advice template and should not be instantiated");
    }
}
