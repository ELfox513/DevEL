package net.bytebuddy.build;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import net.bytebuddy.asm.Advice;
import net.bytebuddy.build.CachedReturnPlugin;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
/* loaded from: classes.dex */
class CachedReturnPlugin$Advice$Object {
    @Advice.OnMethodEnter(skipOn = Advice.OnNonDefaultValue.class)
    public static Object enter(@CachedReturnPlugin.CacheField Object obj) {
        return obj;
    }

    @SuppressFBWarnings(justification = "Advice method serves as a template", value = {"UC_USELESS_VOID_METHOD", "DLS_DEAD_LOCAL_STORE"})
    @Advice.OnMethodExit
    public static void exit(@Advice.Return(readOnly = false, typing = Assigner.Typing.DYNAMIC) Object obj, @CachedReturnPlugin.CacheField Object obj2) {
    }

    private CachedReturnPlugin$Advice$Object() {
        throw new UnsupportedOperationException("This class is merely an advice template and should not be instantiated");
    }
}
