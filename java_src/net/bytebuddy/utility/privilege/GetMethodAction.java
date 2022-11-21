package net.bytebuddy.utility.privilege;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.reflect.Method;
import java.security.PrivilegedAction;
import java.util.Arrays;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class GetMethodAction implements PrivilegedAction<Method> {
    private final String name;
    private final Class<?>[] parameter;
    private final String type;

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            GetMethodAction getMethodAction = (GetMethodAction) obj;
            return this.type.equals(getMethodAction.type) && this.name.equals(getMethodAction.name) && Arrays.equals(this.parameter, getMethodAction.parameter);
        }
        return false;
    }

    public int hashCode() {
        return (((((getClass().hashCode() * 31) + this.type.hashCode()) * 31) + this.name.hashCode()) * 31) + Arrays.hashCode(this.parameter);
    }

    @Override // java.security.PrivilegedAction
    @SuppressFBWarnings(justification = "Exception should not be rethrown but trigger a fallback.", value = {"REC_CATCH_EXCEPTION"})
    @MaybeNull
    public Method run() {
        try {
            return Class.forName(this.type).getMethod(this.name, this.parameter);
        } catch (Exception unused) {
            return null;
        }
    }

    public GetMethodAction(String str, String str2, Class<?>... clsArr) {
        this.type = str;
        this.name = str2;
        this.parameter = clsArr;
    }
}
