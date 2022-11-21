package net.bytebuddy.agent.builder;

import java.lang.instrument.ClassFileTransformer;
import java.lang.instrument.Instrumentation;
import java.security.ProtectionDomain;
import java.util.Iterator;
import net.bytebuddy.agent.builder.AgentBuilder;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.utility.JavaModule;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface ResettableClassFileTransformer extends ClassFileTransformer {

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase implements ResettableClassFileTransformer {
        @Override // net.bytebuddy.agent.builder.ResettableClassFileTransformer
        public boolean reset(Instrumentation instrumentation, AgentBuilder.RedefinitionStrategy redefinitionStrategy) {
            return reset(instrumentation, redefinitionStrategy, AgentBuilder.RedefinitionStrategy.BatchAllocator.ForTotal.INSTANCE);
        }

        @Override // net.bytebuddy.agent.builder.ResettableClassFileTransformer
        public boolean reset(Instrumentation instrumentation, AgentBuilder.RedefinitionStrategy redefinitionStrategy, AgentBuilder.RedefinitionStrategy.BatchAllocator batchAllocator) {
            return reset(instrumentation, redefinitionStrategy, batchAllocator, AgentBuilder.RedefinitionStrategy.Listener.NoOp.INSTANCE);
        }

        @Override // net.bytebuddy.agent.builder.ResettableClassFileTransformer
        public boolean reset(Instrumentation instrumentation, AgentBuilder.RedefinitionStrategy redefinitionStrategy, AgentBuilder.RedefinitionStrategy.DiscoveryStrategy discoveryStrategy) {
            return reset(instrumentation, redefinitionStrategy, discoveryStrategy, AgentBuilder.RedefinitionStrategy.Listener.NoOp.INSTANCE);
        }

        @Override // net.bytebuddy.agent.builder.ResettableClassFileTransformer
        public boolean reset(Instrumentation instrumentation, AgentBuilder.RedefinitionStrategy redefinitionStrategy, AgentBuilder.RedefinitionStrategy.BatchAllocator batchAllocator, AgentBuilder.RedefinitionStrategy.DiscoveryStrategy discoveryStrategy) {
            return reset(instrumentation, redefinitionStrategy, discoveryStrategy, batchAllocator, AgentBuilder.RedefinitionStrategy.Listener.NoOp.INSTANCE);
        }

        @Override // net.bytebuddy.agent.builder.ResettableClassFileTransformer
        public boolean reset(Instrumentation instrumentation, AgentBuilder.RedefinitionStrategy redefinitionStrategy, AgentBuilder.RedefinitionStrategy.DiscoveryStrategy discoveryStrategy, AgentBuilder.RedefinitionStrategy.Listener listener) {
            return reset(instrumentation, redefinitionStrategy, discoveryStrategy, AgentBuilder.RedefinitionStrategy.BatchAllocator.ForTotal.INSTANCE, listener);
        }

        @Override // net.bytebuddy.agent.builder.ResettableClassFileTransformer
        public boolean reset(Instrumentation instrumentation, AgentBuilder.RedefinitionStrategy redefinitionStrategy, AgentBuilder.RedefinitionStrategy.BatchAllocator batchAllocator, AgentBuilder.RedefinitionStrategy.Listener listener) {
            return reset(instrumentation, redefinitionStrategy, AgentBuilder.RedefinitionStrategy.DiscoveryStrategy.SinglePass.INSTANCE, batchAllocator, listener);
        }

        @Override // net.bytebuddy.agent.builder.ResettableClassFileTransformer
        public boolean reset(Instrumentation instrumentation, AgentBuilder.RedefinitionStrategy redefinitionStrategy, AgentBuilder.RedefinitionStrategy.DiscoveryStrategy discoveryStrategy, AgentBuilder.RedefinitionStrategy.BatchAllocator batchAllocator, AgentBuilder.RedefinitionStrategy.Listener listener) {
            return reset(instrumentation, this, redefinitionStrategy, discoveryStrategy, batchAllocator, listener);
        }
    }

    Iterator<AgentBuilder.Transformer> iterator(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain);

    boolean reset(Instrumentation instrumentation, AgentBuilder.RedefinitionStrategy redefinitionStrategy);

    boolean reset(Instrumentation instrumentation, AgentBuilder.RedefinitionStrategy redefinitionStrategy, AgentBuilder.RedefinitionStrategy.BatchAllocator batchAllocator);

    boolean reset(Instrumentation instrumentation, AgentBuilder.RedefinitionStrategy redefinitionStrategy, AgentBuilder.RedefinitionStrategy.BatchAllocator batchAllocator, AgentBuilder.RedefinitionStrategy.DiscoveryStrategy discoveryStrategy);

    boolean reset(Instrumentation instrumentation, AgentBuilder.RedefinitionStrategy redefinitionStrategy, AgentBuilder.RedefinitionStrategy.BatchAllocator batchAllocator, AgentBuilder.RedefinitionStrategy.Listener listener);

    boolean reset(Instrumentation instrumentation, AgentBuilder.RedefinitionStrategy redefinitionStrategy, AgentBuilder.RedefinitionStrategy.DiscoveryStrategy discoveryStrategy);

    boolean reset(Instrumentation instrumentation, AgentBuilder.RedefinitionStrategy redefinitionStrategy, AgentBuilder.RedefinitionStrategy.DiscoveryStrategy discoveryStrategy, AgentBuilder.RedefinitionStrategy.BatchAllocator batchAllocator, AgentBuilder.RedefinitionStrategy.Listener listener);

    boolean reset(Instrumentation instrumentation, AgentBuilder.RedefinitionStrategy redefinitionStrategy, AgentBuilder.RedefinitionStrategy.DiscoveryStrategy discoveryStrategy, AgentBuilder.RedefinitionStrategy.Listener listener);

    boolean reset(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer, AgentBuilder.RedefinitionStrategy redefinitionStrategy, AgentBuilder.RedefinitionStrategy.DiscoveryStrategy discoveryStrategy, AgentBuilder.RedefinitionStrategy.BatchAllocator batchAllocator, AgentBuilder.RedefinitionStrategy.Listener listener);

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static abstract class WithDelegation extends AbstractBase {
        public final ResettableClassFileTransformer classFileTransformer;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.classFileTransformer.equals(((WithDelegation) obj).classFileTransformer);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.classFileTransformer.hashCode();
        }

        @Override // net.bytebuddy.agent.builder.ResettableClassFileTransformer
        public Iterator<AgentBuilder.Transformer> iterator(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain) {
            return this.classFileTransformer.iterator(typeDescription, classLoader, javaModule, cls, protectionDomain);
        }

        @Override // net.bytebuddy.agent.builder.ResettableClassFileTransformer
        public boolean reset(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer, AgentBuilder.RedefinitionStrategy redefinitionStrategy, AgentBuilder.RedefinitionStrategy.DiscoveryStrategy discoveryStrategy, AgentBuilder.RedefinitionStrategy.BatchAllocator batchAllocator, AgentBuilder.RedefinitionStrategy.Listener listener) {
            return this.classFileTransformer.reset(instrumentation, resettableClassFileTransformer, redefinitionStrategy, discoveryStrategy, batchAllocator, listener);
        }

        public WithDelegation(ResettableClassFileTransformer resettableClassFileTransformer) {
            this.classFileTransformer = resettableClassFileTransformer;
        }
    }
}
