package net.bytebuddy.utility;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public interface Invoker {
    @MaybeNull
    Object invoke(Method method, @MaybeNull Object obj, @MaybeNull Object[] objArr);

    Object newInstance(Constructor<?> constructor, Object[] objArr);
}
