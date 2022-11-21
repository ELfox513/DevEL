package net.bytebuddy.dynamic.scaffold.subclass;

import java.util.Collections;
import java.util.List;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.asm.AsmVisitorWrapper;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.dynamic.TypeResolutionStrategy;
import net.bytebuddy.dynamic.VisibilityBridgeStrategy;
import net.bytebuddy.dynamic.scaffold.ClassWriterStrategy;
import net.bytebuddy.dynamic.scaffold.FieldRegistry;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.dynamic.scaffold.MethodGraph;
import net.bytebuddy.dynamic.scaffold.MethodRegistry;
import net.bytebuddy.dynamic.scaffold.RecordComponentRegistry;
import net.bytebuddy.dynamic.scaffold.TypeValidation;
import net.bytebuddy.dynamic.scaffold.TypeWriter;
import net.bytebuddy.dynamic.scaffold.subclass.SubclassImplementationTarget;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.attribute.AnnotationRetention;
import net.bytebuddy.implementation.attribute.AnnotationValueFilter;
import net.bytebuddy.implementation.attribute.TypeAttributeAppender;
import net.bytebuddy.implementation.auxiliary.AuxiliaryType;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.matcher.LatentMatcher;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class SubclassDynamicTypeBuilder<T> extends DynamicType.Builder.AbstractBase.Adapter<T> {
    private final ConstructorStrategy constructorStrategy;

    public SubclassDynamicTypeBuilder(InstrumentedType.WithFlexibleName withFlexibleName, ClassFileVersion classFileVersion, AuxiliaryType.NamingStrategy namingStrategy, AnnotationValueFilter.Factory factory, AnnotationRetention annotationRetention, Implementation.Context.Factory factory2, MethodGraph.Compiler compiler, TypeValidation typeValidation, VisibilityBridgeStrategy visibilityBridgeStrategy, ClassWriterStrategy classWriterStrategy, LatentMatcher<? super MethodDescription> latentMatcher, ConstructorStrategy constructorStrategy) {
        this(withFlexibleName, new FieldRegistry.Default(), new MethodRegistry.Default(), new RecordComponentRegistry.Default(), TypeAttributeAppender.ForInstrumentedType.INSTANCE, AsmVisitorWrapper.NoOp.INSTANCE, classFileVersion, namingStrategy, factory, annotationRetention, factory2, compiler, typeValidation, visibilityBridgeStrategy, classWriterStrategy, latentMatcher, Collections.emptyList(), constructorStrategy);
    }

    @Override // net.bytebuddy.dynamic.DynamicType.Builder.AbstractBase.Adapter
    public boolean equals(@MaybeNull Object obj) {
        if (super.equals(obj)) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.constructorStrategy.equals(((SubclassDynamicTypeBuilder) obj).constructorStrategy);
        }
        return false;
    }

    @Override // net.bytebuddy.dynamic.DynamicType.Builder.AbstractBase.Adapter
    public int hashCode() {
        return (super.hashCode() * 31) + this.constructorStrategy.hashCode();
    }

    @Override // net.bytebuddy.dynamic.DynamicType.Builder
    public DynamicType.Unloaded<T> make(TypeResolutionStrategy typeResolutionStrategy) {
        return make(typeResolutionStrategy, TypePool.ClassLoading.ofSystemLoader());
    }

    @Override // net.bytebuddy.dynamic.DynamicType.Builder.AbstractBase.Adapter
    public DynamicType.Builder<T> materialize(InstrumentedType.WithFlexibleName withFlexibleName, FieldRegistry fieldRegistry, MethodRegistry methodRegistry, RecordComponentRegistry recordComponentRegistry, TypeAttributeAppender typeAttributeAppender, AsmVisitorWrapper asmVisitorWrapper, ClassFileVersion classFileVersion, AuxiliaryType.NamingStrategy namingStrategy, AnnotationValueFilter.Factory factory, AnnotationRetention annotationRetention, Implementation.Context.Factory factory2, MethodGraph.Compiler compiler, TypeValidation typeValidation, VisibilityBridgeStrategy visibilityBridgeStrategy, ClassWriterStrategy classWriterStrategy, LatentMatcher<? super MethodDescription> latentMatcher, List<? extends DynamicType> list) {
        return new SubclassDynamicTypeBuilder(withFlexibleName, fieldRegistry, methodRegistry, recordComponentRegistry, typeAttributeAppender, asmVisitorWrapper, classFileVersion, namingStrategy, factory, annotationRetention, factory2, compiler, typeValidation, visibilityBridgeStrategy, classWriterStrategy, latentMatcher, list, this.constructorStrategy);
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class InstrumentableMatcher implements LatentMatcher<MethodDescription> {
        private final LatentMatcher<? super MethodDescription> ignoredMethods;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.ignoredMethods.equals(((InstrumentableMatcher) obj).ignoredMethods);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.ignoredMethods.hashCode();
        }

        public InstrumentableMatcher(LatentMatcher<? super MethodDescription> latentMatcher) {
            this.ignoredMethods = latentMatcher;
        }

        @Override // net.bytebuddy.matcher.LatentMatcher
        public ElementMatcher<? super MethodDescription> resolve(TypeDescription typeDescription) {
            return ElementMatchers.isVirtual().and(ElementMatchers.not(ElementMatchers.isFinal())).and(ElementMatchers.isVisibleTo(typeDescription)).and(ElementMatchers.not(this.ignoredMethods.resolve(typeDescription))).mo14830or(ElementMatchers.isDeclaredBy(typeDescription));
        }
    }

    @Override // net.bytebuddy.dynamic.DynamicType.Builder
    public DynamicType.Unloaded<T> make(TypeResolutionStrategy typeResolutionStrategy, TypePool typePool) {
        MethodRegistry.Compiled compile = this.constructorStrategy.inject(this.instrumentedType, this.methodRegistry).prepare(applyConstructorStrategy(this.instrumentedType), this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, new InstrumentableMatcher(this.ignoredMethods)).compile(SubclassImplementationTarget.Factory.SUPER_CLASS, this.classFileVersion);
        return TypeWriter.Default.forCreation(compile, this.auxiliaryTypes, this.fieldRegistry.compile(compile.getInstrumentedType()), this.recordComponentRegistry.compile(compile.getInstrumentedType()), this.typeAttributeAppender, this.asmVisitorWrapper, this.classFileVersion, this.annotationValueFilterFactory, this.annotationRetention, this.auxiliaryTypeNamingStrategy, this.implementationContextFactory, this.typeValidation, this.classWriterStrategy, typePool).make(typeResolutionStrategy.resolve());
    }

    private InstrumentedType applyConstructorStrategy(InstrumentedType instrumentedType) {
        if (!instrumentedType.isInterface()) {
            for (MethodDescription.Token token : this.constructorStrategy.extractConstructors(instrumentedType)) {
                instrumentedType = instrumentedType.withMethod(token);
            }
        }
        return instrumentedType;
    }

    public SubclassDynamicTypeBuilder(InstrumentedType.WithFlexibleName withFlexibleName, FieldRegistry fieldRegistry, MethodRegistry methodRegistry, RecordComponentRegistry recordComponentRegistry, TypeAttributeAppender typeAttributeAppender, AsmVisitorWrapper asmVisitorWrapper, ClassFileVersion classFileVersion, AuxiliaryType.NamingStrategy namingStrategy, AnnotationValueFilter.Factory factory, AnnotationRetention annotationRetention, Implementation.Context.Factory factory2, MethodGraph.Compiler compiler, TypeValidation typeValidation, VisibilityBridgeStrategy visibilityBridgeStrategy, ClassWriterStrategy classWriterStrategy, LatentMatcher<? super MethodDescription> latentMatcher, List<? extends DynamicType> list, ConstructorStrategy constructorStrategy) {
        super(withFlexibleName, fieldRegistry, methodRegistry, recordComponentRegistry, typeAttributeAppender, asmVisitorWrapper, classFileVersion, namingStrategy, factory, annotationRetention, factory2, compiler, typeValidation, visibilityBridgeStrategy, classWriterStrategy, latentMatcher, list);
        this.constructorStrategy = constructorStrategy;
    }
}
