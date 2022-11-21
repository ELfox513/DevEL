package net.bytebuddy.build;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import net.bytebuddy.asm.Advice;
import net.bytebuddy.build.CachedReturnPlugin;
@SuppressFBWarnings(justification = "Name is chosen to optimize for simple lookup", value = {"NM_CLASS_NAMING_CONVENTION"})
/* loaded from: classes.dex */
class CachedReturnPlugin$Advice$short {
    @Advice.OnMethodEnter(skipOn = Advice.OnNonDefaultValue.class)
    public static short enter(@CachedReturnPlugin.CacheField short s) {
        return s;
    }

    @SuppressFBWarnings(justification = "Advice method serves as a template", value = {"UC_USELESS_VOID_METHOD", "DLS_DEAD_LOCAL_STORE"})
    @Advice.OnMethodExit
    public static void exit(@Advice.Return(readOnly = false) short s, @CachedReturnPlugin.CacheField short s2) {
    }

    private CachedReturnPlugin$Advice$short() {
        throw new UnsupportedOperationException("This class is merely an advice template and should not be instantiated");
    }
}
