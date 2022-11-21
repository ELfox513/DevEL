package net.bytebuddy.utility.privilege;

import java.security.PrivilegedAction;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class GetSystemPropertyAction implements PrivilegedAction<String> {
    private final String key;

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.key.equals(((GetSystemPropertyAction) obj).key);
    }

    public int hashCode() {
        return (getClass().hashCode() * 31) + this.key.hashCode();
    }

    @Override // java.security.PrivilegedAction
    public String run() {
        return System.getProperty(this.key);
    }

    public GetSystemPropertyAction(String str) {
        this.key = str;
    }
}
