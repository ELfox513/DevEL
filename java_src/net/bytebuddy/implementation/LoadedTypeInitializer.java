package net.bytebuddy.implementation;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.security.AccessControlContext;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import net.bytebuddy.build.AccessControllerPlugin;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.utility.JavaModule;
import net.bytebuddy.utility.nullability.MaybeNull;
import net.bytebuddy.utility.privilege.SetAccessibleAction;
/* loaded from: classes.dex */
public interface LoadedTypeInitializer {

    @SuppressFBWarnings(justification = "Serialization is considered opt-in for a rare use case", value = {"SE_BAD_FIELD"})
    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Compound implements LoadedTypeInitializer, Serializable {
        private static final long serialVersionUID = 1;
        private final List<LoadedTypeInitializer> loadedTypeInitializers;

        public Compound(LoadedTypeInitializer... loadedTypeInitializerArr) {
            this(Arrays.asList(loadedTypeInitializerArr));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.loadedTypeInitializers.equals(((Compound) obj).loadedTypeInitializers);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.loadedTypeInitializers.hashCode();
        }

        public Compound(List<? extends LoadedTypeInitializer> list) {
            this.loadedTypeInitializers = new ArrayList();
            for (LoadedTypeInitializer loadedTypeInitializer : list) {
                if (loadedTypeInitializer instanceof Compound) {
                    this.loadedTypeInitializers.addAll(((Compound) loadedTypeInitializer).loadedTypeInitializers);
                } else if (!(loadedTypeInitializer instanceof NoOp)) {
                    this.loadedTypeInitializers.add(loadedTypeInitializer);
                }
            }
        }

        @Override // net.bytebuddy.implementation.LoadedTypeInitializer
        public boolean isAlive() {
            for (LoadedTypeInitializer loadedTypeInitializer : this.loadedTypeInitializers) {
                if (loadedTypeInitializer.isAlive()) {
                    return true;
                }
            }
            return false;
        }

        @Override // net.bytebuddy.implementation.LoadedTypeInitializer
        public void onLoad(Class<?> cls) {
            for (LoadedTypeInitializer loadedTypeInitializer : this.loadedTypeInitializers) {
                loadedTypeInitializer.onLoad(cls);
            }
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForStaticField implements LoadedTypeInitializer, Serializable {
        private static final boolean ACCESS_CONTROLLER;
        private static final long serialVersionUID = 1;
        @MaybeNull
        @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.IGNORE)
        private final transient Object accessControlContext = getContext();
        private final String fieldName;
        private final Object value;

        static {
            boolean z = false;
            try {
                Class.forName("java.security.AccessController", false, null);
                ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
            } catch (ClassNotFoundException unused) {
                ACCESS_CONTROLLER = z;
            } catch (SecurityException unused2) {
                z = true;
                ACCESS_CONTROLLER = z;
            }
        }

        @AccessControllerPlugin.Enhance
        private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction, @MaybeNull Object obj) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction, (AccessControlContext) obj) : privilegedAction.run();
        }

        @MaybeNull
        @AccessControllerPlugin.Enhance
        private static Object getContext() {
            if (ACCESS_CONTROLLER) {
                return AccessController.getContext();
            }
            return null;
        }

        private Object readResolve() {
            return new ForStaticField(this.fieldName, this.value);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                ForStaticField forStaticField = (ForStaticField) obj;
                return this.fieldName.equals(forStaticField.fieldName) && this.value.equals(forStaticField.value);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.fieldName.hashCode()) * 31) + this.value.hashCode();
        }

        @Override // net.bytebuddy.implementation.LoadedTypeInitializer
        public boolean isAlive() {
            return true;
        }

        @Override // net.bytebuddy.implementation.LoadedTypeInitializer
        @SuppressFBWarnings(justification = "Modules are assumed available when module system is supported", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        public void onLoad(Class<?> cls) {
            try {
                Field declaredField = cls.getDeclaredField(this.fieldName);
                if (!Modifier.isPublic(declaredField.getModifiers()) || !Modifier.isPublic(declaredField.getDeclaringClass().getModifiers()) || (JavaModule.isSupported() && !JavaModule.ofType(cls).isExported(TypeDescription.ForLoadedType.m15196of(cls).getPackage(), JavaModule.ofType(ForStaticField.class)))) {
                    doPrivileged(new SetAccessibleAction(declaredField), this.accessControlContext);
                }
                declaredField.set(null, this.value);
            } catch (IllegalAccessException e) {
                throw new IllegalArgumentException("Cannot access " + this.fieldName + " from " + cls, e);
            } catch (NoSuchFieldException e2) {
                throw new IllegalStateException("There is no field " + this.fieldName + " defined on " + cls, e2);
            }
        }

        public ForStaticField(String str, Object obj) {
            this.fieldName = str;
            this.value = obj;
        }
    }

    /* loaded from: classes.dex */
    public enum NoOp implements LoadedTypeInitializer {
        INSTANCE;

        @Override // net.bytebuddy.implementation.LoadedTypeInitializer
        public boolean isAlive() {
            return false;
        }

        @Override // net.bytebuddy.implementation.LoadedTypeInitializer
        public void onLoad(Class<?> cls) {
        }
    }

    boolean isAlive();

    void onLoad(Class<?> cls);
}
