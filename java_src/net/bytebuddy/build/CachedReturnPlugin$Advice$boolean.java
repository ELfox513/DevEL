package net.bytebuddy.build;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import net.bytebuddy.asm.Advice;
import net.bytebuddy.build.CachedReturnPlugin;
@SuppressFBWarnings(justification = "Name is chosen to optimize for simple lookup", value = {"NM_CLASS_NAMING_CONVENTION"})
/* loaded from: classes.dex */
class CachedReturnPlugin$Advice$boolean {
    @Advice.OnMethodEnter(skipOn = Advice.OnNonDefaultValue.class)
    public static boolean enter(@CachedReturnPlugin.CacheField boolean z) {
        return z;
    }

    @SuppressFBWarnings(justification = "Advice method serves as a template", value = {"UC_USELESS_VOID_METHOD", "IP_PARAMETER_IS_DEAD_BUT_OVERWRITTEN"})
    @Advice.OnMethodExit
    public static void exit(@Advice.Return(readOnly = false) boolean z, @CachedReturnPlugin.CacheField boolean z2) {
    }

    private CachedReturnPlugin$Advice$boolean() {
        throw new UnsupportedOperationException("This class is merely an advice template and should not be instantiated");
    }
}
