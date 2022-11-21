package net.bytebuddy.dynamic;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.NexusAccessor;
import net.bytebuddy.dynamic.loading.ClassLoadingStrategy;
import net.bytebuddy.dynamic.scaffold.TypeInitializer;
import net.bytebuddy.implementation.LoadedTypeInitializer;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface TypeResolutionStrategy {

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Active implements TypeResolutionStrategy {
        private final NexusAccessor nexusAccessor;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Resolved implements Resolved {
            private final int identification;
            private final NexusAccessor nexusAccessor;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Resolved resolved = (Resolved) obj;
                    return this.identification == resolved.identification && this.nexusAccessor.equals(resolved.nexusAccessor);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.nexusAccessor.hashCode()) * 31) + this.identification;
            }

            @Override // net.bytebuddy.dynamic.TypeResolutionStrategy.Resolved
            public TypeInitializer injectedInto(TypeInitializer typeInitializer) {
                return typeInitializer.expandWith(new NexusAccessor.InitializationAppender(this.identification));
            }

            @Override // net.bytebuddy.dynamic.TypeResolutionStrategy.Resolved
            public <S extends ClassLoader> Map<TypeDescription, Class<?>> initialize(DynamicType dynamicType, @MaybeNull S s, ClassLoadingStrategy<? super S> classLoadingStrategy) {
                HashMap hashMap = new HashMap(dynamicType.getLoadedTypeInitializers());
                TypeDescription typeDescription = dynamicType.getTypeDescription();
                Map<TypeDescription, Class<?>> load = classLoadingStrategy.load(s, dynamicType.getAllTypes());
                this.nexusAccessor.register(typeDescription.getName(), load.get(typeDescription).getClassLoader(), this.identification, (LoadedTypeInitializer) hashMap.remove(typeDescription));
                for (Map.Entry entry : hashMap.entrySet()) {
                    ((LoadedTypeInitializer) entry.getValue()).onLoad(load.get(entry.getKey()));
                }
                return load;
            }

            public Resolved(NexusAccessor nexusAccessor, int i) {
                this.nexusAccessor = nexusAccessor;
                this.identification = i;
            }
        }

        public Active() {
            this(new NexusAccessor());
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.nexusAccessor.equals(((Active) obj).nexusAccessor);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.nexusAccessor.hashCode();
        }

        @Override // net.bytebuddy.dynamic.TypeResolutionStrategy
        @SuppressFBWarnings(justification = "Avoids thread-contention.", value = {"DMI_RANDOM_USED_ONLY_ONCE"})
        public Resolved resolve() {
            return new Resolved(this.nexusAccessor, new Random().nextInt());
        }

        public Active(NexusAccessor nexusAccessor) {
            this.nexusAccessor = nexusAccessor;
        }
    }

    /* loaded from: classes2.dex */
    public enum Disabled implements TypeResolutionStrategy, Resolved {
        INSTANCE;

        @Override // net.bytebuddy.dynamic.TypeResolutionStrategy.Resolved
        public <S extends ClassLoader> Map<TypeDescription, Class<?>> initialize(DynamicType dynamicType, @MaybeNull S s, ClassLoadingStrategy<? super S> classLoadingStrategy) {
            throw new IllegalStateException("Cannot initialize a dynamic type for a disabled type resolution strategy");
        }

        @Override // net.bytebuddy.dynamic.TypeResolutionStrategy.Resolved
        public TypeInitializer injectedInto(TypeInitializer typeInitializer) {
            return typeInitializer;
        }

        @Override // net.bytebuddy.dynamic.TypeResolutionStrategy
        public Resolved resolve() {
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public enum Lazy implements TypeResolutionStrategy, Resolved {
        INSTANCE;

        @Override // net.bytebuddy.dynamic.TypeResolutionStrategy.Resolved
        public <S extends ClassLoader> Map<TypeDescription, Class<?>> initialize(DynamicType dynamicType, @MaybeNull S s, ClassLoadingStrategy<? super S> classLoadingStrategy) {
            return classLoadingStrategy.load(s, dynamicType.getAllTypes());
        }

        @Override // net.bytebuddy.dynamic.TypeResolutionStrategy.Resolved
        public TypeInitializer injectedInto(TypeInitializer typeInitializer) {
            return typeInitializer;
        }

        @Override // net.bytebuddy.dynamic.TypeResolutionStrategy
        public Resolved resolve() {
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public interface Resolved {
        <S extends ClassLoader> Map<TypeDescription, Class<?>> initialize(DynamicType dynamicType, @MaybeNull S s, ClassLoadingStrategy<? super S> classLoadingStrategy);

        TypeInitializer injectedInto(TypeInitializer typeInitializer);
    }

    Resolved resolve();

    /* loaded from: classes2.dex */
    public enum Passive implements TypeResolutionStrategy, Resolved {
        INSTANCE;

        @Override // net.bytebuddy.dynamic.TypeResolutionStrategy.Resolved
        public TypeInitializer injectedInto(TypeInitializer typeInitializer) {
            return typeInitializer;
        }

        @Override // net.bytebuddy.dynamic.TypeResolutionStrategy
        public Resolved resolve() {
            return this;
        }

        @Override // net.bytebuddy.dynamic.TypeResolutionStrategy.Resolved
        public <S extends ClassLoader> Map<TypeDescription, Class<?>> initialize(DynamicType dynamicType, @MaybeNull S s, ClassLoadingStrategy<? super S> classLoadingStrategy) {
            Map<TypeDescription, Class<?>> load = classLoadingStrategy.load(s, dynamicType.getAllTypes());
            for (Map.Entry<TypeDescription, LoadedTypeInitializer> entry : dynamicType.getLoadedTypeInitializers().entrySet()) {
                entry.getValue().onLoad(load.get(entry.getKey()));
            }
            return new HashMap(load);
        }
    }
}
