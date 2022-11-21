package net.bytebuddy.dynamic;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarInputStream;
import java.util.jar.JarOutputStream;
import java.util.jar.Manifest;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.asm.AsmVisitorWrapper;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.annotation.AnnotationList;
import net.bytebuddy.description.annotation.AnnotationValue;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.method.ParameterList;
import net.bytebuddy.description.modifier.FieldManifestation;
import net.bytebuddy.description.modifier.MethodManifestation;
import net.bytebuddy.description.modifier.ModifierContributor;
import net.bytebuddy.description.modifier.Ownership;
import net.bytebuddy.description.modifier.Visibility;
import net.bytebuddy.description.type.RecordComponentDescription;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.description.type.TypeVariableToken;
import net.bytebuddy.dynamic.ClassFileLocator;
import net.bytebuddy.dynamic.Transformer;
import net.bytebuddy.dynamic.TypeResolutionStrategy;
import net.bytebuddy.dynamic.loading.ClassLoadingStrategy;
import net.bytebuddy.dynamic.loading.InjectionClassLoader;
import net.bytebuddy.dynamic.scaffold.ClassWriterStrategy;
import net.bytebuddy.dynamic.scaffold.FieldRegistry;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.dynamic.scaffold.MethodGraph;
import net.bytebuddy.dynamic.scaffold.MethodRegistry;
import net.bytebuddy.dynamic.scaffold.RecordComponentRegistry;
import net.bytebuddy.dynamic.scaffold.TypeValidation;
import net.bytebuddy.implementation.EqualsMethod;
import net.bytebuddy.implementation.FieldAccessor;
import net.bytebuddy.implementation.HashCodeMethod;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.LoadedTypeInitializer;
import net.bytebuddy.implementation.ToStringMethod;
import net.bytebuddy.implementation.attribute.AnnotationRetention;
import net.bytebuddy.implementation.attribute.AnnotationValueFilter;
import net.bytebuddy.implementation.attribute.FieldAttributeAppender;
import net.bytebuddy.implementation.attribute.MethodAttributeAppender;
import net.bytebuddy.implementation.attribute.RecordComponentAttributeAppender;
import net.bytebuddy.implementation.attribute.TypeAttributeAppender;
import net.bytebuddy.implementation.auxiliary.AuxiliaryType;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.matcher.LatentMatcher;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.FileSystem;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface DynamicType extends ClassFileLocator {

    /* loaded from: classes2.dex */
    public interface Builder<T> {

        /* loaded from: classes2.dex */
        public static abstract class AbstractBase<S> implements Builder<S> {

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static abstract class Adapter<U> extends AbstractBase<U> {
                public final AnnotationRetention annotationRetention;
                public final AnnotationValueFilter.Factory annotationValueFilterFactory;
                public final AsmVisitorWrapper asmVisitorWrapper;
                public final AuxiliaryType.NamingStrategy auxiliaryTypeNamingStrategy;
                public final List<? extends DynamicType> auxiliaryTypes;
                public final ClassFileVersion classFileVersion;
                public final ClassWriterStrategy classWriterStrategy;
                public final FieldRegistry fieldRegistry;
                public final LatentMatcher<? super MethodDescription> ignoredMethods;
                public final Implementation.Context.Factory implementationContextFactory;
                public final InstrumentedType.WithFlexibleName instrumentedType;
                public final MethodGraph.Compiler methodGraphCompiler;
                public final MethodRegistry methodRegistry;
                public final RecordComponentRegistry recordComponentRegistry;
                public final TypeAttributeAppender typeAttributeAppender;
                public final TypeValidation typeValidation;
                public final VisibilityBridgeStrategy visibilityBridgeStrategy;

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public class FieldDefinitionAdapter extends FieldDefinition.Optional.Valuable.AbstractBase.Adapter<U> {
                    private final FieldDescription.Token token;

                    public FieldDefinitionAdapter(Adapter adapter, FieldDescription.Token token) {
                        this(FieldAttributeAppender.ForInstrumentedField.INSTANCE, Transformer.NoOp.make(), FieldDescription.NO_DEFAULT_VALUE, token);
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Optional.Valuable.AbstractBase.Adapter
                    public boolean equals(@MaybeNull Object obj) {
                        if (super.equals(obj)) {
                            if (this == obj) {
                                return true;
                            }
                            if (obj != null && getClass() == obj.getClass()) {
                                FieldDefinitionAdapter fieldDefinitionAdapter = (FieldDefinitionAdapter) obj;
                                return this.token.equals(fieldDefinitionAdapter.token) && Adapter.this.equals(Adapter.this);
                            }
                            return false;
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Optional.Valuable.AbstractBase.Adapter
                    public int hashCode() {
                        return (((super.hashCode() * 31) + this.token.hashCode()) * 31) + Adapter.this.hashCode();
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.AbstractBase.Delegator
                    public Builder<U> materialize() {
                        Adapter adapter = Adapter.this;
                        InstrumentedType.WithFlexibleName withField = adapter.instrumentedType.withField(this.token);
                        FieldRegistry prepend = Adapter.this.fieldRegistry.prepend(new LatentMatcher.ForFieldToken(this.token), this.fieldAttributeAppenderFactory, this.defaultValue, this.transformer);
                        Adapter adapter2 = Adapter.this;
                        return adapter.materialize(withField, prepend, adapter2.methodRegistry, adapter2.recordComponentRegistry, adapter2.typeAttributeAppender, adapter2.asmVisitorWrapper, adapter2.classFileVersion, adapter2.auxiliaryTypeNamingStrategy, adapter2.annotationValueFilterFactory, adapter2.annotationRetention, adapter2.implementationContextFactory, adapter2.methodGraphCompiler, adapter2.typeValidation, adapter2.visibilityBridgeStrategy, adapter2.classWriterStrategy, adapter2.ignoredMethods, adapter2.auxiliaryTypes);
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition
                    public FieldDefinition.Optional<U> annotateField(Collection<? extends AnnotationDescription> collection) {
                        return new FieldDefinitionAdapter(this.fieldAttributeAppenderFactory, this.transformer, this.defaultValue, new FieldDescription.Token(this.token.getName(), this.token.getModifiers(), this.token.getType(), CompoundList.m14776of((List) this.token.getAnnotations(), (List) new ArrayList(collection))));
                    }

                    public FieldDefinitionAdapter(FieldAttributeAppender.Factory factory, Transformer<FieldDescription> transformer, @MaybeNull Object obj, FieldDescription.Token token) {
                        super(factory, transformer, obj);
                        this.token = token;
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Optional.Valuable.AbstractBase.Adapter
                    public FieldDefinition.Optional<U> materialize(FieldAttributeAppender.Factory factory, Transformer<FieldDescription> transformer, @MaybeNull Object obj) {
                        return new FieldDefinitionAdapter(factory, transformer, obj, this.token);
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public class InnerTypeDefinitionForMethodAdapter extends Delegator<U> implements InnerTypeDefinition<U> {
                    private final MethodDescription.InDefinedShape methodDescription;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            InnerTypeDefinitionForMethodAdapter innerTypeDefinitionForMethodAdapter = (InnerTypeDefinitionForMethodAdapter) obj;
                            return this.methodDescription.equals(innerTypeDefinitionForMethodAdapter.methodDescription) && Adapter.this.equals(Adapter.this);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.methodDescription.hashCode()) * 31) + Adapter.this.hashCode();
                    }

                    public InnerTypeDefinitionForMethodAdapter(MethodDescription.InDefinedShape inDefinedShape) {
                        this.methodDescription = inDefinedShape;
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.InnerTypeDefinition
                    public Builder<U> asAnonymousType() {
                        Adapter adapter = Adapter.this;
                        InstrumentedType.WithFlexibleName withAnonymousClass = adapter.instrumentedType.withDeclaringType(TypeDescription.UNDEFINED).withEnclosingMethod(this.methodDescription).withAnonymousClass(true);
                        Adapter adapter2 = Adapter.this;
                        return adapter.materialize(withAnonymousClass, adapter2.fieldRegistry, adapter2.methodRegistry, adapter2.recordComponentRegistry, adapter2.typeAttributeAppender, adapter2.asmVisitorWrapper, adapter2.classFileVersion, adapter2.auxiliaryTypeNamingStrategy, adapter2.annotationValueFilterFactory, adapter2.annotationRetention, adapter2.implementationContextFactory, adapter2.methodGraphCompiler, adapter2.typeValidation, adapter2.visibilityBridgeStrategy, adapter2.classWriterStrategy, adapter2.ignoredMethods, adapter2.auxiliaryTypes);
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.AbstractBase.Delegator
                    public Builder<U> materialize() {
                        Adapter adapter = Adapter.this;
                        InstrumentedType.WithFlexibleName withLocalClass = adapter.instrumentedType.withDeclaringType(TypeDescription.UNDEFINED).withEnclosingMethod(this.methodDescription).withLocalClass(true);
                        Adapter adapter2 = Adapter.this;
                        return adapter.materialize(withLocalClass, adapter2.fieldRegistry, adapter2.methodRegistry, adapter2.recordComponentRegistry, adapter2.typeAttributeAppender, adapter2.asmVisitorWrapper, adapter2.classFileVersion, adapter2.auxiliaryTypeNamingStrategy, adapter2.annotationValueFilterFactory, adapter2.annotationRetention, adapter2.implementationContextFactory, adapter2.methodGraphCompiler, adapter2.typeValidation, adapter2.visibilityBridgeStrategy, adapter2.classWriterStrategy, adapter2.ignoredMethods, adapter2.auxiliaryTypes);
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public class InnerTypeDefinitionForTypeAdapter extends Delegator<U> implements InnerTypeDefinition.ForType<U> {
                    private final TypeDescription typeDescription;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            InnerTypeDefinitionForTypeAdapter innerTypeDefinitionForTypeAdapter = (InnerTypeDefinitionForTypeAdapter) obj;
                            return this.typeDescription.equals(innerTypeDefinitionForTypeAdapter.typeDescription) && Adapter.this.equals(Adapter.this);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.typeDescription.hashCode()) * 31) + Adapter.this.hashCode();
                    }

                    public InnerTypeDefinitionForTypeAdapter(TypeDescription typeDescription) {
                        this.typeDescription = typeDescription;
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.InnerTypeDefinition
                    public Builder<U> asAnonymousType() {
                        Adapter adapter = Adapter.this;
                        InstrumentedType.WithFlexibleName withAnonymousClass = adapter.instrumentedType.withDeclaringType(TypeDescription.UNDEFINED).withEnclosingType(this.typeDescription).withAnonymousClass(true);
                        Adapter adapter2 = Adapter.this;
                        return adapter.materialize(withAnonymousClass, adapter2.fieldRegistry, adapter2.methodRegistry, adapter2.recordComponentRegistry, adapter2.typeAttributeAppender, adapter2.asmVisitorWrapper, adapter2.classFileVersion, adapter2.auxiliaryTypeNamingStrategy, adapter2.annotationValueFilterFactory, adapter2.annotationRetention, adapter2.implementationContextFactory, adapter2.methodGraphCompiler, adapter2.typeValidation, adapter2.visibilityBridgeStrategy, adapter2.classWriterStrategy, adapter2.ignoredMethods, adapter2.auxiliaryTypes);
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.InnerTypeDefinition.ForType
                    public Builder<U> asMemberType() {
                        Adapter adapter = Adapter.this;
                        InstrumentedType.WithFlexibleName withLocalClass = adapter.instrumentedType.withDeclaringType(this.typeDescription).withEnclosingType(this.typeDescription).withAnonymousClass(false).withLocalClass(false);
                        Adapter adapter2 = Adapter.this;
                        return adapter.materialize(withLocalClass, adapter2.fieldRegistry, adapter2.methodRegistry, adapter2.recordComponentRegistry, adapter2.typeAttributeAppender, adapter2.asmVisitorWrapper, adapter2.classFileVersion, adapter2.auxiliaryTypeNamingStrategy, adapter2.annotationValueFilterFactory, adapter2.annotationRetention, adapter2.implementationContextFactory, adapter2.methodGraphCompiler, adapter2.typeValidation, adapter2.visibilityBridgeStrategy, adapter2.classWriterStrategy, adapter2.ignoredMethods, adapter2.auxiliaryTypes);
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.AbstractBase.Delegator
                    public Builder<U> materialize() {
                        Adapter adapter = Adapter.this;
                        InstrumentedType.WithFlexibleName withLocalClass = adapter.instrumentedType.withDeclaringType(TypeDescription.UNDEFINED).withEnclosingType(this.typeDescription).withLocalClass(true);
                        Adapter adapter2 = Adapter.this;
                        return adapter.materialize(withLocalClass, adapter2.fieldRegistry, adapter2.methodRegistry, adapter2.recordComponentRegistry, adapter2.typeAttributeAppender, adapter2.asmVisitorWrapper, adapter2.classFileVersion, adapter2.auxiliaryTypeNamingStrategy, adapter2.annotationValueFilterFactory, adapter2.annotationRetention, adapter2.implementationContextFactory, adapter2.methodGraphCompiler, adapter2.typeValidation, adapter2.visibilityBridgeStrategy, adapter2.classWriterStrategy, adapter2.ignoredMethods, adapter2.auxiliaryTypes);
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public class MethodDefinitionAdapter extends MethodDefinition.ParameterDefinition.Initial.AbstractBase<U> {
                    private final MethodDescription.Token token;

                    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                    /* loaded from: classes.dex */
                    public class AnnotationAdapter extends MethodDefinition.AbstractBase.Adapter<U> {
                        public AnnotationAdapter(MethodDefinitionAdapter methodDefinitionAdapter, MethodRegistry.Handler handler) {
                            this(handler, MethodAttributeAppender.ForInstrumentedMethod.INCLUDING_RECEIVER, Transformer.NoOp.make());
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.AbstractBase.Adapter
                        public boolean equals(@MaybeNull Object obj) {
                            if (super.equals(obj)) {
                                if (this == obj) {
                                    return true;
                                }
                                return obj != null && getClass() == obj.getClass() && MethodDefinitionAdapter.this.equals(MethodDefinitionAdapter.this);
                            }
                            return false;
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.AbstractBase.Adapter
                        public int hashCode() {
                            return (super.hashCode() * 31) + MethodDefinitionAdapter.this.hashCode();
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.AbstractBase.Adapter
                        public MethodDefinition<U> materialize(MethodRegistry.Handler handler, MethodAttributeAppender.Factory factory, Transformer<MethodDescription> transformer) {
                            return new AnnotationAdapter(handler, factory, transformer);
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition
                        public MethodDefinition<U> annotateMethod(Collection<? extends AnnotationDescription> collection) {
                            MethodDefinitionAdapter methodDefinitionAdapter = MethodDefinitionAdapter.this;
                            return new AnnotationAdapter(this.handler, this.methodAttributeAppenderFactory, this.transformer);
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition
                        public MethodDefinition<U> annotateParameter(int i, Collection<? extends AnnotationDescription> collection) {
                            ArrayList arrayList = new ArrayList(MethodDefinitionAdapter.this.token.getParameterTokens());
                            arrayList.set(i, new ParameterDescription.Token(MethodDefinitionAdapter.this.token.getParameterTokens().get(i).getType(), CompoundList.m14776of((List) MethodDefinitionAdapter.this.token.getParameterTokens().get(i).getAnnotations(), (List) new ArrayList(collection)), MethodDefinitionAdapter.this.token.getParameterTokens().get(i).getName(), MethodDefinitionAdapter.this.token.getParameterTokens().get(i).getModifiers()));
                            MethodDefinitionAdapter methodDefinitionAdapter = MethodDefinitionAdapter.this;
                            return new AnnotationAdapter(this.handler, this.methodAttributeAppenderFactory, this.transformer);
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.AbstractBase.Delegator
                        public Builder<U> materialize() {
                            MethodDefinitionAdapter methodDefinitionAdapter = MethodDefinitionAdapter.this;
                            Adapter adapter = Adapter.this;
                            InstrumentedType.WithFlexibleName withMethod = adapter.instrumentedType.withMethod(methodDefinitionAdapter.token);
                            MethodDefinitionAdapter methodDefinitionAdapter2 = MethodDefinitionAdapter.this;
                            Adapter adapter2 = Adapter.this;
                            FieldRegistry fieldRegistry = adapter2.fieldRegistry;
                            MethodRegistry prepend = adapter2.methodRegistry.prepend(new LatentMatcher.ForMethodToken(methodDefinitionAdapter2.token), this.handler, this.methodAttributeAppenderFactory, this.transformer);
                            Adapter adapter3 = Adapter.this;
                            return adapter.materialize(withMethod, fieldRegistry, prepend, adapter3.recordComponentRegistry, adapter3.typeAttributeAppender, adapter3.asmVisitorWrapper, adapter3.classFileVersion, adapter3.auxiliaryTypeNamingStrategy, adapter3.annotationValueFilterFactory, adapter3.annotationRetention, adapter3.implementationContextFactory, adapter3.methodGraphCompiler, adapter3.typeValidation, adapter3.visibilityBridgeStrategy, adapter3.classWriterStrategy, adapter3.ignoredMethods, adapter3.auxiliaryTypes);
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ReceiverTypeDefinition
                        public MethodDefinition<U> receiverType(TypeDescription.Generic generic) {
                            MethodDefinitionAdapter methodDefinitionAdapter = MethodDefinitionAdapter.this;
                            return new AnnotationAdapter(this.handler, this.methodAttributeAppenderFactory, this.transformer);
                        }

                        public AnnotationAdapter(MethodRegistry.Handler handler, MethodAttributeAppender.Factory factory, Transformer<MethodDescription> transformer) {
                            super(handler, factory, transformer);
                        }
                    }

                    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                    /* loaded from: classes.dex */
                    public class ParameterAnnotationAdapter extends MethodDefinition.ParameterDefinition.Annotatable.AbstractBase.Adapter<U> {
                        private final ParameterDescription.Token token;

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            if (obj != null && getClass() == obj.getClass()) {
                                ParameterAnnotationAdapter parameterAnnotationAdapter = (ParameterAnnotationAdapter) obj;
                                return this.token.equals(parameterAnnotationAdapter.token) && MethodDefinitionAdapter.this.equals(MethodDefinitionAdapter.this);
                            }
                            return false;
                        }

                        public int hashCode() {
                            return (((getClass().hashCode() * 31) + this.token.hashCode()) * 31) + MethodDefinitionAdapter.this.hashCode();
                        }

                        public ParameterAnnotationAdapter(ParameterDescription.Token token) {
                            this.token = token;
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition.Annotatable
                        public MethodDefinition.ParameterDefinition.Annotatable<U> annotateParameter(Collection<? extends AnnotationDescription> collection) {
                            return new ParameterAnnotationAdapter(new ParameterDescription.Token(this.token.getType(), CompoundList.m14776of((List) this.token.getAnnotations(), (List) new ArrayList(collection)), this.token.getName(), this.token.getModifiers()));
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition.Annotatable.AbstractBase.Adapter
                        public MethodDefinition.ParameterDefinition<U> materialize() {
                            MethodDefinitionAdapter methodDefinitionAdapter = MethodDefinitionAdapter.this;
                            return new MethodDefinitionAdapter(new MethodDescription.Token(methodDefinitionAdapter.token.getName(), MethodDefinitionAdapter.this.token.getModifiers(), MethodDefinitionAdapter.this.token.getTypeVariableTokens(), MethodDefinitionAdapter.this.token.getReturnType(), CompoundList.m14777of(MethodDefinitionAdapter.this.token.getParameterTokens(), this.token), MethodDefinitionAdapter.this.token.getExceptionTypes(), MethodDefinitionAdapter.this.token.getAnnotations(), MethodDefinitionAdapter.this.token.getDefaultValue(), MethodDefinitionAdapter.this.token.getReceiverType()));
                        }
                    }

                    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                    /* loaded from: classes.dex */
                    public class SimpleParameterAnnotationAdapter extends MethodDefinition.ParameterDefinition.Simple.Annotatable.AbstractBase.Adapter<U> {
                        private final ParameterDescription.Token token;

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            if (obj != null && getClass() == obj.getClass()) {
                                SimpleParameterAnnotationAdapter simpleParameterAnnotationAdapter = (SimpleParameterAnnotationAdapter) obj;
                                return this.token.equals(simpleParameterAnnotationAdapter.token) && MethodDefinitionAdapter.this.equals(MethodDefinitionAdapter.this);
                            }
                            return false;
                        }

                        public int hashCode() {
                            return (((getClass().hashCode() * 31) + this.token.hashCode()) * 31) + MethodDefinitionAdapter.this.hashCode();
                        }

                        public SimpleParameterAnnotationAdapter(ParameterDescription.Token token) {
                            this.token = token;
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition.Simple.Annotatable
                        public MethodDefinition.ParameterDefinition.Simple.Annotatable<U> annotateParameter(Collection<? extends AnnotationDescription> collection) {
                            return new SimpleParameterAnnotationAdapter(new ParameterDescription.Token(this.token.getType(), CompoundList.m14776of((List) this.token.getAnnotations(), (List) new ArrayList(collection)), this.token.getName(), this.token.getModifiers()));
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition.Simple.Annotatable.AbstractBase.Adapter
                        public MethodDefinition.ParameterDefinition.Simple<U> materialize() {
                            MethodDefinitionAdapter methodDefinitionAdapter = MethodDefinitionAdapter.this;
                            return new MethodDefinitionAdapter(new MethodDescription.Token(methodDefinitionAdapter.token.getName(), MethodDefinitionAdapter.this.token.getModifiers(), MethodDefinitionAdapter.this.token.getTypeVariableTokens(), MethodDefinitionAdapter.this.token.getReturnType(), CompoundList.m14777of(MethodDefinitionAdapter.this.token.getParameterTokens(), this.token), MethodDefinitionAdapter.this.token.getExceptionTypes(), MethodDefinitionAdapter.this.token.getAnnotations(), MethodDefinitionAdapter.this.token.getDefaultValue(), MethodDefinitionAdapter.this.token.getReceiverType()));
                        }
                    }

                    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                    /* loaded from: classes.dex */
                    public class TypeVariableAnnotationAdapter extends MethodDefinition.TypeVariableDefinition.Annotatable.AbstractBase.Adapter<U> {
                        private final TypeVariableToken token;

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            if (obj != null && getClass() == obj.getClass()) {
                                TypeVariableAnnotationAdapter typeVariableAnnotationAdapter = (TypeVariableAnnotationAdapter) obj;
                                return this.token.equals(typeVariableAnnotationAdapter.token) && MethodDefinitionAdapter.this.equals(MethodDefinitionAdapter.this);
                            }
                            return false;
                        }

                        public int hashCode() {
                            return (((getClass().hashCode() * 31) + this.token.hashCode()) * 31) + MethodDefinitionAdapter.this.hashCode();
                        }

                        public TypeVariableAnnotationAdapter(TypeVariableToken typeVariableToken) {
                            this.token = typeVariableToken;
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.TypeVariableDefinition.Annotatable
                        public MethodDefinition.TypeVariableDefinition.Annotatable<U> annotateTypeVariable(Collection<? extends AnnotationDescription> collection) {
                            return new TypeVariableAnnotationAdapter(new TypeVariableToken(this.token.getSymbol(), this.token.getBounds(), CompoundList.m14776of((List) this.token.getAnnotations(), (List) new ArrayList(collection))));
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.TypeVariableDefinition.Annotatable.AbstractBase.Adapter
                        public MethodDefinition.ParameterDefinition<U> materialize() {
                            MethodDefinitionAdapter methodDefinitionAdapter = MethodDefinitionAdapter.this;
                            return new MethodDefinitionAdapter(new MethodDescription.Token(methodDefinitionAdapter.token.getName(), MethodDefinitionAdapter.this.token.getModifiers(), CompoundList.m14777of(MethodDefinitionAdapter.this.token.getTypeVariableTokens(), this.token), MethodDefinitionAdapter.this.token.getReturnType(), MethodDefinitionAdapter.this.token.getParameterTokens(), MethodDefinitionAdapter.this.token.getExceptionTypes(), MethodDefinitionAdapter.this.token.getAnnotations(), MethodDefinitionAdapter.this.token.getDefaultValue(), MethodDefinitionAdapter.this.token.getReceiverType()));
                        }
                    }

                    private MethodDefinition.ReceiverTypeDefinition<U> materialize(MethodRegistry.Handler handler) {
                        return new AnnotationAdapter(this, handler);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            MethodDefinitionAdapter methodDefinitionAdapter = (MethodDefinitionAdapter) obj;
                            return this.token.equals(methodDefinitionAdapter.token) && Adapter.this.equals(Adapter.this);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.token.hashCode()) * 31) + Adapter.this.hashCode();
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                    public MethodDefinition.ReceiverTypeDefinition<U> intercept(Implementation implementation) {
                        return materialize(new MethodRegistry.Handler.ForImplementation(implementation));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.TypeVariableDefinition
                    public MethodDefinition.TypeVariableDefinition.Annotatable<U> typeVariable(String str, Collection<? extends TypeDefinition> collection) {
                        return new TypeVariableAnnotationAdapter(new TypeVariableToken(str, new TypeList.Generic.Explicit(new ArrayList(collection))));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition
                    public MethodDefinition.ParameterDefinition.Annotatable<U> withParameter(TypeDefinition typeDefinition, String str, int i) {
                        return new ParameterAnnotationAdapter(new ParameterDescription.Token(typeDefinition.asGenericType(), str, Integer.valueOf(i)));
                    }

                    public MethodDefinitionAdapter(MethodDescription.Token token) {
                        this.token = token;
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                    public MethodDefinition.ReceiverTypeDefinition<U> defaultValue(AnnotationValue<?, ?> annotationValue) {
                        return new MethodDefinitionAdapter(new MethodDescription.Token(this.token.getName(), ModifierContributor.Resolver.m15203of(MethodManifestation.ABSTRACT).resolve(this.token.getModifiers()), this.token.getTypeVariableTokens(), this.token.getReturnType(), this.token.getParameterTokens(), this.token.getExceptionTypes(), this.token.getAnnotations(), annotationValue, this.token.getReceiverType())).materialize(new MethodRegistry.Handler.ForAnnotationValue(annotationValue));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ExceptionDefinition
                    public MethodDefinition.ExceptionDefinition<U> throwing(Collection<? extends TypeDefinition> collection) {
                        return new MethodDefinitionAdapter(new MethodDescription.Token(this.token.getName(), this.token.getModifiers(), this.token.getTypeVariableTokens(), this.token.getReturnType(), this.token.getParameterTokens(), CompoundList.m14776of((List) this.token.getExceptionTypes(), (List) new TypeList.Generic.Explicit(new ArrayList(collection))), this.token.getAnnotations(), this.token.getDefaultValue(), this.token.getReceiverType()));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition.Simple
                    public MethodDefinition.ParameterDefinition.Simple.Annotatable<U> withParameter(TypeDefinition typeDefinition) {
                        return new SimpleParameterAnnotationAdapter(new ParameterDescription.Token(typeDefinition.asGenericType()));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                    public MethodDefinition.ReceiverTypeDefinition<U> withoutCode() {
                        int modifiers;
                        Adapter adapter = Adapter.this;
                        String name = this.token.getName();
                        if ((this.token.getModifiers() & 256) == 0) {
                            modifiers = ModifierContributor.Resolver.m15203of(MethodManifestation.ABSTRACT).resolve(this.token.getModifiers());
                        } else {
                            modifiers = this.token.getModifiers();
                        }
                        return new MethodDefinitionAdapter(new MethodDescription.Token(name, modifiers, this.token.getTypeVariableTokens(), this.token.getReturnType(), this.token.getParameterTokens(), this.token.getExceptionTypes(), this.token.getAnnotations(), this.token.getDefaultValue(), this.token.getReceiverType())).materialize(MethodRegistry.Handler.ForAbstractMethod.INSTANCE);
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public class MethodMatchAdapter extends MethodDefinition.ImplementationDefinition.AbstractBase<U> {
                    private final LatentMatcher<? super MethodDescription> matcher;

                    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                    /* loaded from: classes.dex */
                    public class AnnotationAdapter extends MethodDefinition.AbstractBase.Adapter<U> {
                        public AnnotationAdapter(MethodMatchAdapter methodMatchAdapter, MethodRegistry.Handler handler) {
                            this(handler, MethodAttributeAppender.NoOp.INSTANCE, Transformer.NoOp.make());
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition
                        public MethodDefinition<U> annotateMethod(Collection<? extends AnnotationDescription> collection) {
                            return new AnnotationAdapter(this.handler, new MethodAttributeAppender.Factory.Compound(this.methodAttributeAppenderFactory, new MethodAttributeAppender.Explicit(new ArrayList(collection))), this.transformer);
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition
                        public MethodDefinition<U> annotateParameter(int i, Collection<? extends AnnotationDescription> collection) {
                            return new AnnotationAdapter(this.handler, new MethodAttributeAppender.Factory.Compound(this.methodAttributeAppenderFactory, new MethodAttributeAppender.Explicit(i, new ArrayList(collection))), this.transformer);
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.AbstractBase.Adapter
                        public boolean equals(@MaybeNull Object obj) {
                            if (super.equals(obj)) {
                                if (this == obj) {
                                    return true;
                                }
                                return obj != null && getClass() == obj.getClass() && MethodMatchAdapter.this.equals(MethodMatchAdapter.this);
                            }
                            return false;
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.AbstractBase.Adapter
                        public int hashCode() {
                            return (super.hashCode() * 31) + MethodMatchAdapter.this.hashCode();
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.AbstractBase.Adapter
                        public MethodDefinition<U> materialize(MethodRegistry.Handler handler, MethodAttributeAppender.Factory factory, Transformer<MethodDescription> transformer) {
                            return new AnnotationAdapter(handler, factory, transformer);
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ReceiverTypeDefinition
                        public MethodDefinition<U> receiverType(TypeDescription.Generic generic) {
                            return new AnnotationAdapter(this.handler, new MethodAttributeAppender.Factory.Compound(this.methodAttributeAppenderFactory, new MethodAttributeAppender.ForReceiverType(generic)), this.transformer);
                        }

                        public AnnotationAdapter(MethodRegistry.Handler handler, MethodAttributeAppender.Factory factory, Transformer<MethodDescription> transformer) {
                            super(handler, factory, transformer);
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.AbstractBase.Delegator
                        public Builder<U> materialize() {
                            MethodMatchAdapter methodMatchAdapter = MethodMatchAdapter.this;
                            Adapter adapter = Adapter.this;
                            InstrumentedType.WithFlexibleName withFlexibleName = adapter.instrumentedType;
                            FieldRegistry fieldRegistry = adapter.fieldRegistry;
                            MethodRegistry prepend = adapter.methodRegistry.prepend(methodMatchAdapter.matcher, this.handler, this.methodAttributeAppenderFactory, this.transformer);
                            Adapter adapter2 = Adapter.this;
                            return adapter.materialize(withFlexibleName, fieldRegistry, prepend, adapter2.recordComponentRegistry, adapter2.typeAttributeAppender, adapter2.asmVisitorWrapper, adapter2.classFileVersion, adapter2.auxiliaryTypeNamingStrategy, adapter2.annotationValueFilterFactory, adapter2.annotationRetention, adapter2.implementationContextFactory, adapter2.methodGraphCompiler, adapter2.typeValidation, adapter2.visibilityBridgeStrategy, adapter2.classWriterStrategy, adapter2.ignoredMethods, adapter2.auxiliaryTypes);
                        }
                    }

                    private MethodDefinition.ReceiverTypeDefinition<U> materialize(MethodRegistry.Handler handler) {
                        return new AnnotationAdapter(this, handler);
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                    public MethodDefinition.ReceiverTypeDefinition<U> defaultValue(AnnotationValue<?, ?> annotationValue) {
                        return materialize(new MethodRegistry.Handler.ForAnnotationValue(annotationValue));
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            MethodMatchAdapter methodMatchAdapter = (MethodMatchAdapter) obj;
                            return this.matcher.equals(methodMatchAdapter.matcher) && Adapter.this.equals(Adapter.this);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.matcher.hashCode()) * 31) + Adapter.this.hashCode();
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                    public MethodDefinition.ReceiverTypeDefinition<U> intercept(Implementation implementation) {
                        return materialize(new MethodRegistry.Handler.ForImplementation(implementation));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                    public MethodDefinition.ReceiverTypeDefinition<U> withoutCode() {
                        return materialize(MethodRegistry.Handler.ForAbstractMethod.INSTANCE);
                    }

                    public MethodMatchAdapter(LatentMatcher<? super MethodDescription> latentMatcher) {
                        this.matcher = latentMatcher;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public class OptionalMethodMatchAdapter extends Delegator<U> implements MethodDefinition.ImplementationDefinition.Optional<U> {
                    private final TypeList.Generic interfaces;

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                    public MethodDefinition.ReceiverTypeDefinition<U> defaultValue(AnnotationValue<?, ?> annotationValue) {
                        return interfaceType().defaultValue(annotationValue);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            OptionalMethodMatchAdapter optionalMethodMatchAdapter = (OptionalMethodMatchAdapter) obj;
                            return this.interfaces.equals(optionalMethodMatchAdapter.interfaces) && Adapter.this.equals(Adapter.this);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.interfaces.hashCode()) * 31) + Adapter.this.hashCode();
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                    public MethodDefinition.ReceiverTypeDefinition<U> intercept(Implementation implementation) {
                        return interfaceType().intercept(implementation);
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.AbstractBase.Delegator
                    public Builder<U> materialize() {
                        Adapter adapter = Adapter.this;
                        InstrumentedType.WithFlexibleName withInterfaces = adapter.instrumentedType.withInterfaces(this.interfaces);
                        Adapter adapter2 = Adapter.this;
                        return adapter.materialize(withInterfaces, adapter2.fieldRegistry, adapter2.methodRegistry, adapter2.recordComponentRegistry, adapter2.typeAttributeAppender, adapter2.asmVisitorWrapper, adapter2.classFileVersion, adapter2.auxiliaryTypeNamingStrategy, adapter2.annotationValueFilterFactory, adapter2.annotationRetention, adapter2.implementationContextFactory, adapter2.methodGraphCompiler, adapter2.typeValidation, adapter2.visibilityBridgeStrategy, adapter2.classWriterStrategy, adapter2.ignoredMethods, adapter2.auxiliaryTypes);
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                    public MethodDefinition.ReceiverTypeDefinition<U> withoutCode() {
                        return interfaceType().withoutCode();
                    }

                    public OptionalMethodMatchAdapter(TypeList.Generic generic) {
                        this.interfaces = generic;
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                    public <V> MethodDefinition.ReceiverTypeDefinition<U> defaultValue(V v, Class<? extends V> cls) {
                        return interfaceType().defaultValue(v, cls);
                    }

                    private MethodDefinition.ImplementationDefinition<U> interfaceType() {
                        ElementMatcher.Junction none = ElementMatchers.none();
                        for (TypeDescription typeDescription : this.interfaces.asErasures()) {
                            none = none.mo14830or(ElementMatchers.isSuperTypeOf(typeDescription));
                        }
                        return materialize().invokable(ElementMatchers.isDeclaredBy(ElementMatchers.isInterface().and(none)));
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public class RecordComponentDefinitionAdapter extends RecordComponentDefinition.Optional.AbstractBase<U> {
                    private final RecordComponentAttributeAppender.Factory recordComponentAttributeAppenderFactory;
                    private final RecordComponentDescription.Token token;
                    private final Transformer<RecordComponentDescription> transformer;

                    public RecordComponentDefinitionAdapter(Adapter adapter, RecordComponentDescription.Token token) {
                        this(RecordComponentAttributeAppender.ForInstrumentedRecordComponent.INSTANCE, Transformer.NoOp.make(), token);
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.RecordComponentDefinition
                    public RecordComponentDefinition.Optional<U> attribute(RecordComponentAttributeAppender.Factory factory) {
                        return new RecordComponentDefinitionAdapter(new RecordComponentAttributeAppender.Factory.Compound(this.recordComponentAttributeAppenderFactory, factory), this.transformer, this.token);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            RecordComponentDefinitionAdapter recordComponentDefinitionAdapter = (RecordComponentDefinitionAdapter) obj;
                            return this.recordComponentAttributeAppenderFactory.equals(recordComponentDefinitionAdapter.recordComponentAttributeAppenderFactory) && this.token.equals(recordComponentDefinitionAdapter.token) && this.transformer.equals(recordComponentDefinitionAdapter.transformer) && Adapter.this.equals(Adapter.this);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((((((getClass().hashCode() * 31) + this.recordComponentAttributeAppenderFactory.hashCode()) * 31) + this.token.hashCode()) * 31) + this.transformer.hashCode()) * 31) + Adapter.this.hashCode();
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.RecordComponentDefinition
                    public RecordComponentDefinition.Optional<U> transform(Transformer<RecordComponentDescription> transformer) {
                        return new RecordComponentDefinitionAdapter(this.recordComponentAttributeAppenderFactory, new Transformer.Compound(this.transformer, transformer), this.token);
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.RecordComponentDefinition
                    public RecordComponentDefinition.Optional<U> annotateRecordComponent(Collection<? extends AnnotationDescription> collection) {
                        return new RecordComponentDefinitionAdapter(this.recordComponentAttributeAppenderFactory, this.transformer, new RecordComponentDescription.Token(this.token.getName(), this.token.getType(), CompoundList.m14776of((List) this.token.getAnnotations(), (List) new ArrayList(collection))));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.AbstractBase.Delegator
                    public Builder<U> materialize() {
                        Adapter adapter = Adapter.this;
                        InstrumentedType.WithFlexibleName withRecordComponent = adapter.instrumentedType.withRecordComponent(this.token);
                        Adapter adapter2 = Adapter.this;
                        FieldRegistry fieldRegistry = adapter2.fieldRegistry;
                        MethodRegistry methodRegistry = adapter2.methodRegistry;
                        RecordComponentRegistry prepend = adapter2.recordComponentRegistry.prepend(new LatentMatcher.ForRecordComponentToken(this.token), this.recordComponentAttributeAppenderFactory, this.transformer);
                        Adapter adapter3 = Adapter.this;
                        return adapter.materialize(withRecordComponent, fieldRegistry, methodRegistry, prepend, adapter3.typeAttributeAppender, adapter3.asmVisitorWrapper, adapter3.classFileVersion, adapter3.auxiliaryTypeNamingStrategy, adapter3.annotationValueFilterFactory, adapter3.annotationRetention, adapter3.implementationContextFactory, adapter3.methodGraphCompiler, adapter3.typeValidation, adapter3.visibilityBridgeStrategy, adapter3.classWriterStrategy, adapter3.ignoredMethods, adapter3.auxiliaryTypes);
                    }

                    public RecordComponentDefinitionAdapter(RecordComponentAttributeAppender.Factory factory, Transformer<RecordComponentDescription> transformer, RecordComponentDescription.Token token) {
                        this.recordComponentAttributeAppenderFactory = factory;
                        this.transformer = transformer;
                        this.token = token;
                    }
                }

                /* loaded from: classes2.dex */
                public class RecordComponentMatchAdapter extends RecordComponentDefinition.Optional.AbstractBase<U> {
                    private final LatentMatcher<? super RecordComponentDescription> matcher;
                    private final RecordComponentAttributeAppender.Factory recordComponentAttributeAppenderFactory;
                    private final Transformer<RecordComponentDescription> transformer;

                    public RecordComponentMatchAdapter(Adapter adapter, LatentMatcher<? super RecordComponentDescription> latentMatcher) {
                        this(latentMatcher, RecordComponentAttributeAppender.NoOp.INSTANCE, Transformer.NoOp.make());
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.RecordComponentDefinition
                    public RecordComponentDefinition.Optional<U> annotateRecordComponent(Collection<? extends AnnotationDescription> collection) {
                        return attribute(new RecordComponentAttributeAppender.Explicit(new ArrayList(collection)));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.RecordComponentDefinition
                    public RecordComponentDefinition.Optional<U> attribute(RecordComponentAttributeAppender.Factory factory) {
                        return new RecordComponentMatchAdapter(this.matcher, new RecordComponentAttributeAppender.Factory.Compound(this.recordComponentAttributeAppenderFactory, factory), this.transformer);
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.RecordComponentDefinition
                    public RecordComponentDefinition.Optional<U> transform(Transformer<RecordComponentDescription> transformer) {
                        return new RecordComponentMatchAdapter(this.matcher, this.recordComponentAttributeAppenderFactory, new Transformer.Compound(this.transformer, transformer));
                    }

                    public RecordComponentMatchAdapter(LatentMatcher<? super RecordComponentDescription> latentMatcher, RecordComponentAttributeAppender.Factory factory, Transformer<RecordComponentDescription> transformer) {
                        this.matcher = latentMatcher;
                        this.recordComponentAttributeAppenderFactory = factory;
                        this.transformer = transformer;
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.AbstractBase.Delegator
                    public Builder<U> materialize() {
                        Adapter adapter = Adapter.this;
                        InstrumentedType.WithFlexibleName withFlexibleName = adapter.instrumentedType;
                        FieldRegistry fieldRegistry = adapter.fieldRegistry;
                        MethodRegistry methodRegistry = adapter.methodRegistry;
                        RecordComponentRegistry prepend = adapter.recordComponentRegistry.prepend(this.matcher, this.recordComponentAttributeAppenderFactory, this.transformer);
                        Adapter adapter2 = Adapter.this;
                        return adapter.materialize(withFlexibleName, fieldRegistry, methodRegistry, prepend, adapter2.typeAttributeAppender, adapter2.asmVisitorWrapper, adapter2.classFileVersion, adapter2.auxiliaryTypeNamingStrategy, adapter2.annotationValueFilterFactory, adapter2.annotationRetention, adapter2.implementationContextFactory, adapter2.methodGraphCompiler, adapter2.typeValidation, adapter2.visibilityBridgeStrategy, adapter2.classWriterStrategy, adapter2.ignoredMethods, adapter2.auxiliaryTypes);
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public class TypeVariableDefinitionAdapter extends TypeVariableDefinition.AbstractBase<U> {
                    private final TypeVariableToken token;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            TypeVariableDefinitionAdapter typeVariableDefinitionAdapter = (TypeVariableDefinitionAdapter) obj;
                            return this.token.equals(typeVariableDefinitionAdapter.token) && Adapter.this.equals(Adapter.this);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.token.hashCode()) * 31) + Adapter.this.hashCode();
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.AbstractBase.Delegator
                    public Builder<U> materialize() {
                        Adapter adapter = Adapter.this;
                        InstrumentedType.WithFlexibleName withTypeVariable = adapter.instrumentedType.withTypeVariable(this.token);
                        Adapter adapter2 = Adapter.this;
                        return adapter.materialize(withTypeVariable, adapter2.fieldRegistry, adapter2.methodRegistry, adapter2.recordComponentRegistry, adapter2.typeAttributeAppender, adapter2.asmVisitorWrapper, adapter2.classFileVersion, adapter2.auxiliaryTypeNamingStrategy, adapter2.annotationValueFilterFactory, adapter2.annotationRetention, adapter2.implementationContextFactory, adapter2.methodGraphCompiler, adapter2.typeValidation, adapter2.visibilityBridgeStrategy, adapter2.classWriterStrategy, adapter2.ignoredMethods, adapter2.auxiliaryTypes);
                    }

                    public TypeVariableDefinitionAdapter(TypeVariableToken typeVariableToken) {
                        this.token = typeVariableToken;
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.TypeVariableDefinition
                    public TypeVariableDefinition<U> annotateTypeVariable(Collection<? extends AnnotationDescription> collection) {
                        return new TypeVariableDefinitionAdapter(new TypeVariableToken(this.token.getSymbol(), this.token.getBounds(), CompoundList.m14776of((List) this.token.getAnnotations(), (List) new ArrayList(collection))));
                    }
                }

                public Adapter(InstrumentedType.WithFlexibleName withFlexibleName, FieldRegistry fieldRegistry, MethodRegistry methodRegistry, RecordComponentRegistry recordComponentRegistry, TypeAttributeAppender typeAttributeAppender, AsmVisitorWrapper asmVisitorWrapper, ClassFileVersion classFileVersion, AuxiliaryType.NamingStrategy namingStrategy, AnnotationValueFilter.Factory factory, AnnotationRetention annotationRetention, Implementation.Context.Factory factory2, MethodGraph.Compiler compiler, TypeValidation typeValidation, VisibilityBridgeStrategy visibilityBridgeStrategy, ClassWriterStrategy classWriterStrategy, LatentMatcher<? super MethodDescription> latentMatcher, List<? extends DynamicType> list) {
                    this.instrumentedType = withFlexibleName;
                    this.fieldRegistry = fieldRegistry;
                    this.methodRegistry = methodRegistry;
                    this.recordComponentRegistry = recordComponentRegistry;
                    this.typeAttributeAppender = typeAttributeAppender;
                    this.asmVisitorWrapper = asmVisitorWrapper;
                    this.classFileVersion = classFileVersion;
                    this.auxiliaryTypeNamingStrategy = namingStrategy;
                    this.annotationValueFilterFactory = factory;
                    this.annotationRetention = annotationRetention;
                    this.implementationContextFactory = factory2;
                    this.methodGraphCompiler = compiler;
                    this.typeValidation = typeValidation;
                    this.visibilityBridgeStrategy = visibilityBridgeStrategy;
                    this.classWriterStrategy = classWriterStrategy;
                    this.ignoredMethods = latentMatcher;
                    this.auxiliaryTypes = list;
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> annotateType(Collection<? extends AnnotationDescription> collection) {
                    return materialize(this.instrumentedType.withAnnotations((List<? extends AnnotationDescription>) new ArrayList(collection)), this.fieldRegistry, this.methodRegistry, this.recordComponentRegistry, this.typeAttributeAppender, this.asmVisitorWrapper, this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, this.auxiliaryTypes);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> attribute(TypeAttributeAppender typeAttributeAppender) {
                    return materialize(this.instrumentedType, this.fieldRegistry, this.methodRegistry, this.recordComponentRegistry, new TypeAttributeAppender.Compound(this.typeAttributeAppender, typeAttributeAppender), this.asmVisitorWrapper, this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, this.auxiliaryTypes);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> declaredTypes(Collection<? extends TypeDescription> collection) {
                    return materialize(this.instrumentedType.withDeclaredTypes((TypeList) new TypeList.Explicit(new ArrayList(collection))), this.fieldRegistry, this.methodRegistry, this.recordComponentRegistry, this.typeAttributeAppender, this.asmVisitorWrapper, this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, this.auxiliaryTypes);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public MethodDefinition.ParameterDefinition.Initial<U> defineConstructor(int i) {
                    return new MethodDefinitionAdapter(new MethodDescription.Token(i));
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public FieldDefinition.Optional.Valuable<U> defineField(String str, TypeDefinition typeDefinition, int i) {
                    return new FieldDefinitionAdapter(this, new FieldDescription.Token(str, i, typeDefinition.asGenericType()));
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public MethodDefinition.ParameterDefinition.Initial<U> defineMethod(String str, TypeDefinition typeDefinition, int i) {
                    return new MethodDefinitionAdapter(new MethodDescription.Token(str, i, typeDefinition.asGenericType()));
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public RecordComponentDefinition.Optional<U> defineRecordComponent(String str, TypeDefinition typeDefinition) {
                    return new RecordComponentDefinitionAdapter(this, new RecordComponentDescription.Token(str, typeDefinition.asGenericType()));
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Adapter adapter = (Adapter) obj;
                        return this.annotationRetention.equals(adapter.annotationRetention) && this.typeValidation.equals(adapter.typeValidation) && this.instrumentedType.equals(adapter.instrumentedType) && this.fieldRegistry.equals(adapter.fieldRegistry) && this.methodRegistry.equals(adapter.methodRegistry) && this.recordComponentRegistry.equals(adapter.recordComponentRegistry) && this.typeAttributeAppender.equals(adapter.typeAttributeAppender) && this.asmVisitorWrapper.equals(adapter.asmVisitorWrapper) && this.classFileVersion.equals(adapter.classFileVersion) && this.auxiliaryTypeNamingStrategy.equals(adapter.auxiliaryTypeNamingStrategy) && this.annotationValueFilterFactory.equals(adapter.annotationValueFilterFactory) && this.implementationContextFactory.equals(adapter.implementationContextFactory) && this.methodGraphCompiler.equals(adapter.methodGraphCompiler) && this.visibilityBridgeStrategy.equals(adapter.visibilityBridgeStrategy) && this.classWriterStrategy.equals(adapter.classWriterStrategy) && this.ignoredMethods.equals(adapter.ignoredMethods) && this.auxiliaryTypes.equals(adapter.auxiliaryTypes);
                    }
                    return false;
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public FieldDefinition.Valuable<U> field(LatentMatcher<? super FieldDescription> latentMatcher) {
                    return new FieldMatchAdapter(this, latentMatcher);
                }

                public int hashCode() {
                    return (((((((((((((((((((((((((((((((((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31) + this.fieldRegistry.hashCode()) * 31) + this.methodRegistry.hashCode()) * 31) + this.recordComponentRegistry.hashCode()) * 31) + this.typeAttributeAppender.hashCode()) * 31) + this.asmVisitorWrapper.hashCode()) * 31) + this.classFileVersion.hashCode()) * 31) + this.auxiliaryTypeNamingStrategy.hashCode()) * 31) + this.annotationValueFilterFactory.hashCode()) * 31) + this.annotationRetention.hashCode()) * 31) + this.implementationContextFactory.hashCode()) * 31) + this.methodGraphCompiler.hashCode()) * 31) + this.typeValidation.hashCode()) * 31) + this.visibilityBridgeStrategy.hashCode()) * 31) + this.classWriterStrategy.hashCode()) * 31) + this.ignoredMethods.hashCode()) * 31) + this.auxiliaryTypes.hashCode();
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> ignoreAlso(LatentMatcher<? super MethodDescription> latentMatcher) {
                    return materialize(this.instrumentedType, this.fieldRegistry, this.methodRegistry, this.recordComponentRegistry, this.typeAttributeAppender, this.asmVisitorWrapper, this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, new LatentMatcher.Disjunction(this.ignoredMethods, latentMatcher), this.auxiliaryTypes);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public MethodDefinition.ImplementationDefinition.Optional<U> implement(Collection<? extends TypeDefinition> collection) {
                    return new OptionalMethodMatchAdapter(new TypeList.Generic.Explicit(new ArrayList(collection)));
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> initializer(ByteCodeAppender byteCodeAppender) {
                    return materialize(this.instrumentedType.withInitializer(byteCodeAppender), this.fieldRegistry, this.methodRegistry, this.recordComponentRegistry, this.typeAttributeAppender, this.asmVisitorWrapper, this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, this.auxiliaryTypes);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public InnerTypeDefinition.ForType<U> innerTypeOf(TypeDescription typeDescription) {
                    return new InnerTypeDefinitionForTypeAdapter(typeDescription);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public MethodDefinition.ImplementationDefinition<U> invokable(LatentMatcher<? super MethodDescription> latentMatcher) {
                    return new MethodMatchAdapter(latentMatcher);
                }

                public abstract Builder<U> materialize(InstrumentedType.WithFlexibleName withFlexibleName, FieldRegistry fieldRegistry, MethodRegistry methodRegistry, RecordComponentRegistry recordComponentRegistry, TypeAttributeAppender typeAttributeAppender, AsmVisitorWrapper asmVisitorWrapper, ClassFileVersion classFileVersion, AuxiliaryType.NamingStrategy namingStrategy, AnnotationValueFilter.Factory factory, AnnotationRetention annotationRetention, Implementation.Context.Factory factory2, MethodGraph.Compiler compiler, TypeValidation typeValidation, VisibilityBridgeStrategy visibilityBridgeStrategy, ClassWriterStrategy classWriterStrategy, LatentMatcher<? super MethodDescription> latentMatcher, List<? extends DynamicType> list);

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> merge(Collection<? extends ModifierContributor.ForType> collection) {
                    return materialize(this.instrumentedType.withModifiers(ModifierContributor.Resolver.m15205of(collection).resolve(this.instrumentedType.getModifiers())), this.fieldRegistry, this.methodRegistry, this.recordComponentRegistry, this.typeAttributeAppender, this.asmVisitorWrapper, this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, this.auxiliaryTypes);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> modifiers(int i) {
                    return materialize(this.instrumentedType.withModifiers(i), this.fieldRegistry, this.methodRegistry, this.recordComponentRegistry, this.typeAttributeAppender, this.asmVisitorWrapper, this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, this.auxiliaryTypes);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> name(String str) {
                    return materialize(this.instrumentedType.withName(str), this.fieldRegistry, this.methodRegistry, this.recordComponentRegistry, this.typeAttributeAppender, this.asmVisitorWrapper, this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, this.auxiliaryTypes);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> nestHost(TypeDescription typeDescription) {
                    return materialize(this.instrumentedType.withNestHost(typeDescription), this.fieldRegistry, this.methodRegistry, this.recordComponentRegistry, this.typeAttributeAppender, this.asmVisitorWrapper, this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, this.auxiliaryTypes);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> nestMembers(Collection<? extends TypeDescription> collection) {
                    return materialize(this.instrumentedType.withNestMembers((TypeList) new TypeList.Explicit(new ArrayList(collection))), this.fieldRegistry, this.methodRegistry, this.recordComponentRegistry, this.typeAttributeAppender, this.asmVisitorWrapper, this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, this.auxiliaryTypes);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> permittedSubclass(Collection<? extends TypeDescription> collection) {
                    return materialize(this.instrumentedType.withPermittedSubclasses((TypeList) new TypeList.Explicit(new ArrayList(collection))), this.fieldRegistry, this.methodRegistry, this.recordComponentRegistry, this.typeAttributeAppender, this.asmVisitorWrapper, this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, this.auxiliaryTypes);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public RecordComponentDefinition<U> recordComponent(LatentMatcher<? super RecordComponentDescription> latentMatcher) {
                    return new RecordComponentMatchAdapter(this, latentMatcher);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> suffix(String str) {
                    return name(this.instrumentedType.getName() + "$" + str);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public TypeDescription toTypeDescription() {
                    return this.instrumentedType;
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> transform(ElementMatcher<? super TypeDescription.Generic> elementMatcher, Transformer<TypeVariableToken> transformer) {
                    return materialize(this.instrumentedType.withTypeVariables(elementMatcher, transformer), this.fieldRegistry, this.methodRegistry, this.recordComponentRegistry, this.typeAttributeAppender, this.asmVisitorWrapper, this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, this.auxiliaryTypes);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public TypeVariableDefinition<U> typeVariable(String str, Collection<? extends TypeDefinition> collection) {
                    return new TypeVariableDefinitionAdapter(new TypeVariableToken(str, new TypeList.Generic.Explicit(new ArrayList(collection))));
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> unsealed() {
                    return materialize(this.instrumentedType.withPermittedSubclasses(TypeList.UNDEFINED), this.fieldRegistry, this.methodRegistry, this.recordComponentRegistry, this.typeAttributeAppender, this.asmVisitorWrapper, this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, this.auxiliaryTypes);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> visit(AsmVisitorWrapper asmVisitorWrapper) {
                    return materialize(this.instrumentedType, this.fieldRegistry, this.methodRegistry, this.recordComponentRegistry, this.typeAttributeAppender, new AsmVisitorWrapper.Compound(this.asmVisitorWrapper, asmVisitorWrapper), this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, this.auxiliaryTypes);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> initializer(LoadedTypeInitializer loadedTypeInitializer) {
                    return materialize(this.instrumentedType.withInitializer(loadedTypeInitializer), this.fieldRegistry, this.methodRegistry, this.recordComponentRegistry, this.typeAttributeAppender, this.asmVisitorWrapper, this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, this.auxiliaryTypes);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public InnerTypeDefinition<U> innerTypeOf(MethodDescription.InDefinedShape inDefinedShape) {
                    return inDefinedShape.isTypeInitializer() ? new InnerTypeDefinitionForTypeAdapter(inDefinedShape.getDeclaringType()) : new InnerTypeDefinitionForMethodAdapter(inDefinedShape);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> require(Collection<DynamicType> collection) {
                    return materialize(this.instrumentedType, this.fieldRegistry, this.methodRegistry, this.recordComponentRegistry, this.typeAttributeAppender, this.asmVisitorWrapper, this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, CompoundList.m14776of((List) this.auxiliaryTypes, (List) new ArrayList(collection)));
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> topLevelType() {
                    InstrumentedType.WithFlexibleName withFlexibleName = this.instrumentedType;
                    TypeDescription typeDescription = TypeDescription.UNDEFINED;
                    return materialize(withFlexibleName.withDeclaringType(typeDescription).withEnclosingType(typeDescription).withLocalClass(false), this.fieldRegistry, this.methodRegistry, this.recordComponentRegistry, this.typeAttributeAppender, this.asmVisitorWrapper, this.classFileVersion, this.auxiliaryTypeNamingStrategy, this.annotationValueFilterFactory, this.annotationRetention, this.implementationContextFactory, this.methodGraphCompiler, this.typeValidation, this.visibilityBridgeStrategy, this.classWriterStrategy, this.ignoredMethods, this.auxiliaryTypes);
                }

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public class FieldMatchAdapter extends FieldDefinition.Optional.Valuable.AbstractBase.Adapter<U> {
                    private final LatentMatcher<? super FieldDescription> matcher;

                    public FieldMatchAdapter(Adapter adapter, LatentMatcher<? super FieldDescription> latentMatcher) {
                        this(FieldAttributeAppender.NoOp.INSTANCE, Transformer.NoOp.make(), FieldDescription.NO_DEFAULT_VALUE, latentMatcher);
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition
                    public FieldDefinition.Optional<U> annotateField(Collection<? extends AnnotationDescription> collection) {
                        return attribute(new FieldAttributeAppender.Explicit(new ArrayList(collection)));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Optional.Valuable.AbstractBase.Adapter
                    public boolean equals(@MaybeNull Object obj) {
                        if (super.equals(obj)) {
                            if (this == obj) {
                                return true;
                            }
                            if (obj != null && getClass() == obj.getClass()) {
                                FieldMatchAdapter fieldMatchAdapter = (FieldMatchAdapter) obj;
                                return this.matcher.equals(fieldMatchAdapter.matcher) && Adapter.this.equals(Adapter.this);
                            }
                            return false;
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Optional.Valuable.AbstractBase.Adapter
                    public int hashCode() {
                        return (((super.hashCode() * 31) + this.matcher.hashCode()) * 31) + Adapter.this.hashCode();
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.AbstractBase.Delegator
                    public Builder<U> materialize() {
                        Adapter adapter = Adapter.this;
                        InstrumentedType.WithFlexibleName withFlexibleName = adapter.instrumentedType;
                        FieldRegistry prepend = adapter.fieldRegistry.prepend(this.matcher, this.fieldAttributeAppenderFactory, this.defaultValue, this.transformer);
                        Adapter adapter2 = Adapter.this;
                        return adapter.materialize(withFlexibleName, prepend, adapter2.methodRegistry, adapter2.recordComponentRegistry, adapter2.typeAttributeAppender, adapter2.asmVisitorWrapper, adapter2.classFileVersion, adapter2.auxiliaryTypeNamingStrategy, adapter2.annotationValueFilterFactory, adapter2.annotationRetention, adapter2.implementationContextFactory, adapter2.methodGraphCompiler, adapter2.typeValidation, adapter2.visibilityBridgeStrategy, adapter2.classWriterStrategy, adapter2.ignoredMethods, adapter2.auxiliaryTypes);
                    }

                    public FieldMatchAdapter(FieldAttributeAppender.Factory factory, Transformer<FieldDescription> transformer, @MaybeNull Object obj, LatentMatcher<? super FieldDescription> latentMatcher) {
                        super(factory, transformer, obj);
                        this.matcher = latentMatcher;
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Optional.Valuable.AbstractBase.Adapter
                    public FieldDefinition.Optional<U> materialize(FieldAttributeAppender.Factory factory, Transformer<FieldDescription> transformer, @MaybeNull Object obj) {
                        return new FieldMatchAdapter(factory, transformer, obj, this.matcher);
                    }
                }
            }

            /* loaded from: classes2.dex */
            public static abstract class Delegator<U> extends AbstractBase<U> {
                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> annotateType(Collection<? extends AnnotationDescription> collection) {
                    return materialize().annotateType(collection);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> attribute(TypeAttributeAppender typeAttributeAppender) {
                    return materialize().attribute(typeAttributeAppender);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> declaredTypes(Collection<? extends TypeDescription> collection) {
                    return materialize().declaredTypes(collection);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder.AbstractBase, net.bytebuddy.dynamic.DynamicType.Builder
                public RecordComponentDefinition.Optional<U> define(RecordComponentDescription recordComponentDescription) {
                    return materialize().define(recordComponentDescription);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public MethodDefinition.ParameterDefinition.Initial<U> defineConstructor(int i) {
                    return materialize().defineConstructor(i);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public FieldDefinition.Optional.Valuable<U> defineField(String str, TypeDefinition typeDefinition, int i) {
                    return materialize().defineField(str, typeDefinition, i);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public MethodDefinition.ParameterDefinition.Initial<U> defineMethod(String str, TypeDefinition typeDefinition, int i) {
                    return materialize().defineMethod(str, typeDefinition, i);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public RecordComponentDefinition.Optional<U> defineRecordComponent(String str, TypeDefinition typeDefinition) {
                    return materialize().defineRecordComponent(str, typeDefinition);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public FieldDefinition.Valuable<U> field(LatentMatcher<? super FieldDescription> latentMatcher) {
                    return materialize().field(latentMatcher);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder.AbstractBase, net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> ignoreAlso(ElementMatcher<? super MethodDescription> elementMatcher) {
                    return materialize().ignoreAlso(elementMatcher);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public MethodDefinition.ImplementationDefinition.Optional<U> implement(Collection<? extends TypeDefinition> collection) {
                    return materialize().implement(collection);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> initializer(LoadedTypeInitializer loadedTypeInitializer) {
                    return materialize().initializer(loadedTypeInitializer);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public InnerTypeDefinition.ForType<U> innerTypeOf(TypeDescription typeDescription) {
                    return materialize().innerTypeOf(typeDescription);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public MethodDefinition.ImplementationDefinition<U> invokable(LatentMatcher<? super MethodDescription> latentMatcher) {
                    return materialize().invokable(latentMatcher);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder.AbstractBase, net.bytebuddy.dynamic.DynamicType.Builder
                public Unloaded<U> make() {
                    return materialize().make();
                }

                public abstract Builder<U> materialize();

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> merge(Collection<? extends ModifierContributor.ForType> collection) {
                    return materialize().merge(collection);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> modifiers(int i) {
                    return materialize().modifiers(i);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> name(String str) {
                    return materialize().name(str);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> nestHost(TypeDescription typeDescription) {
                    return materialize().nestHost(typeDescription);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> nestMembers(Collection<? extends TypeDescription> collection) {
                    return materialize().nestMembers(collection);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> permittedSubclass(Collection<? extends TypeDescription> collection) {
                    return materialize().permittedSubclass(collection);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder.AbstractBase, net.bytebuddy.dynamic.DynamicType.Builder
                public RecordComponentDefinition<U> recordComponent(ElementMatcher<? super RecordComponentDescription> elementMatcher) {
                    return materialize().recordComponent(elementMatcher);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> require(Collection<DynamicType> collection) {
                    return materialize().require(collection);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> suffix(String str) {
                    return materialize().suffix(str);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public TypeDescription toTypeDescription() {
                    return materialize().toTypeDescription();
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> topLevelType() {
                    return materialize().topLevelType();
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> transform(ElementMatcher<? super TypeDescription.Generic> elementMatcher, Transformer<TypeVariableToken> transformer) {
                    return materialize().transform(elementMatcher, transformer);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public TypeVariableDefinition<U> typeVariable(String str, Collection<? extends TypeDefinition> collection) {
                    return materialize().typeVariable(str, collection);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> unsealed() {
                    return materialize().unsealed();
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> visit(AsmVisitorWrapper asmVisitorWrapper) {
                    return materialize().visit(asmVisitorWrapper);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> ignoreAlso(LatentMatcher<? super MethodDescription> latentMatcher) {
                    return materialize().ignoreAlso(latentMatcher);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Builder<U> initializer(ByteCodeAppender byteCodeAppender) {
                    return materialize().initializer(byteCodeAppender);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public InnerTypeDefinition<U> innerTypeOf(MethodDescription.InDefinedShape inDefinedShape) {
                    return materialize().innerTypeOf(inDefinedShape);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Unloaded<U> make(TypeResolutionStrategy typeResolutionStrategy) {
                    return materialize().make(typeResolutionStrategy);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public RecordComponentDefinition<U> recordComponent(LatentMatcher<? super RecordComponentDescription> latentMatcher) {
                    return materialize().recordComponent(latentMatcher);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder.AbstractBase, net.bytebuddy.dynamic.DynamicType.Builder
                public Unloaded<U> make(TypePool typePool) {
                    return materialize().make(typePool);
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder
                public Unloaded<U> make(TypeResolutionStrategy typeResolutionStrategy, TypePool typePool) {
                    return materialize().make(typeResolutionStrategy, typePool);
                }
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> annotateType(Annotation... annotationArr) {
                return annotateType(Arrays.asList(annotationArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public MethodDefinition.ImplementationDefinition<S> constructor(ElementMatcher<? super MethodDescription> elementMatcher) {
                return invokable(ElementMatchers.isConstructor().and(elementMatcher));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> declaredTypes(Class<?>... clsArr) {
                return declaredTypes(Arrays.asList(clsArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public RecordComponentDefinition.Optional<S> define(RecordComponentDescription recordComponentDescription) {
                return defineRecordComponent(recordComponentDescription.getActualName(), recordComponentDescription.getType());
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public MethodDefinition.ParameterDefinition.Initial<S> defineConstructor(ModifierContributor.ForMethod... forMethodArr) {
                return defineConstructor(Arrays.asList(forMethodArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public FieldDefinition.Optional.Valuable<S> defineField(String str, Type type, ModifierContributor.ForField... forFieldArr) {
                return defineField(str, type, Arrays.asList(forFieldArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public MethodDefinition.ParameterDefinition.Initial<S> defineMethod(String str, Type type, ModifierContributor.ForMethod... forMethodArr) {
                return defineMethod(str, type, Arrays.asList(forMethodArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public FieldDefinition.Optional<S> defineProperty(String str, Type type) {
                return defineProperty(str, TypeDefinition.Sort.describe(type));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public RecordComponentDefinition.Optional<S> defineRecordComponent(String str, Type type) {
                return defineRecordComponent(str, TypeDefinition.Sort.describe(type));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public FieldDefinition.Valuable<S> field(ElementMatcher<? super FieldDescription> elementMatcher) {
                return field(new LatentMatcher.Resolved(elementMatcher));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> ignoreAlso(ElementMatcher<? super MethodDescription> elementMatcher) {
                return ignoreAlso(new LatentMatcher.Resolved(elementMatcher));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public MethodDefinition.ImplementationDefinition.Optional<S> implement(Type... typeArr) {
                return implement(Arrays.asList(typeArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public InnerTypeDefinition.ForType<S> innerTypeOf(Class<?> cls) {
                return innerTypeOf(TypeDescription.ForLoadedType.m15196of(cls));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public MethodDefinition.ImplementationDefinition<S> invokable(ElementMatcher<? super MethodDescription> elementMatcher) {
                return invokable(new LatentMatcher.Resolved(elementMatcher));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Unloaded<S> make(TypePool typePool) {
                return make(TypeResolutionStrategy.Passive.INSTANCE, typePool);
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> merge(ModifierContributor.ForType... forTypeArr) {
                return merge(Arrays.asList(forTypeArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public MethodDefinition.ImplementationDefinition<S> method(ElementMatcher<? super MethodDescription> elementMatcher) {
                return invokable(ElementMatchers.isMethod().and(elementMatcher));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> modifiers(ModifierContributor.ForType... forTypeArr) {
                return modifiers(Arrays.asList(forTypeArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> nestHost(Class<?> cls) {
                return nestHost(TypeDescription.ForLoadedType.m15196of(cls));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> nestMembers(Class<?>... clsArr) {
                return nestMembers(Arrays.asList(clsArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> noNestMate() {
                return nestHost(TargetType.DESCRIPTION);
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> permittedSubclass(Class<?>... clsArr) {
                return permittedSubclass(Arrays.asList(clsArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public RecordComponentDefinition<S> recordComponent(ElementMatcher<? super RecordComponentDescription> elementMatcher) {
                return recordComponent(new LatentMatcher.Resolved(elementMatcher));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> require(TypeDescription typeDescription, byte[] bArr) {
                return require(typeDescription, bArr, LoadedTypeInitializer.NoOp.INSTANCE);
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public FieldDefinition.Optional<S> serialVersionUid(long j) {
                return defineField("serialVersionUID", Long.TYPE, Visibility.PRIVATE, FieldManifestation.FINAL, Ownership.STATIC).value(j);
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public TypeVariableDefinition<S> typeVariable(String str) {
                return typeVariable(str, TypeDescription.Generic.OBJECT);
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> withToString() {
                return method(ElementMatchers.isToString()).intercept(ToStringMethod.prefixedBySimpleClassName());
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> annotateType(List<? extends Annotation> list) {
                return annotateType((Collection<? extends AnnotationDescription>) new AnnotationList.ForLoadedAnnotations(list));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> declaredTypes(TypeDescription... typeDescriptionArr) {
                return declaredTypes((Collection<? extends TypeDescription>) Arrays.asList(typeDescriptionArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public FieldDefinition.Optional.Valuable<S> define(Field field) {
                return define(new FieldDescription.ForLoadedField(field));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public MethodDefinition.ParameterDefinition.Initial<S> defineConstructor(Collection<? extends ModifierContributor.ForMethod> collection) {
                return defineConstructor(ModifierContributor.Resolver.m15205of(collection).resolve());
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public FieldDefinition.Optional.Valuable<S> defineField(String str, Type type, Collection<? extends ModifierContributor.ForField> collection) {
                return defineField(str, type, ModifierContributor.Resolver.m15205of(collection).resolve());
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public MethodDefinition.ParameterDefinition.Initial<S> defineMethod(String str, Type type, Collection<? extends ModifierContributor.ForMethod> collection) {
                return defineMethod(str, type, ModifierContributor.Resolver.m15205of(collection).resolve());
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public FieldDefinition.Optional<S> defineProperty(String str, Type type, boolean z) {
                return defineProperty(str, TypeDefinition.Sort.describe(type), z);
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public MethodDefinition.ImplementationDefinition.Optional<S> implement(List<? extends Type> list) {
                return implement((Collection<? extends TypeDefinition>) new TypeList.Generic.ForLoadedTypes(list));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public InnerTypeDefinition<S> innerTypeOf(Method method) {
                return innerTypeOf(new MethodDescription.ForLoadedMethod(method));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Unloaded<S> make() {
                return make(TypeResolutionStrategy.Passive.INSTANCE);
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> modifiers(Collection<? extends ModifierContributor.ForType> collection) {
                return modifiers(ModifierContributor.Resolver.m15205of(collection).resolve());
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> nestMembers(TypeDescription... typeDescriptionArr) {
                return nestMembers((Collection<? extends TypeDescription>) Arrays.asList(typeDescriptionArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> permittedSubclass(TypeDescription... typeDescriptionArr) {
                return permittedSubclass((Collection<? extends TypeDescription>) Arrays.asList(typeDescriptionArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> require(TypeDescription typeDescription, byte[] bArr, LoadedTypeInitializer loadedTypeInitializer) {
                return require(new Default(typeDescription, bArr, loadedTypeInitializer, Collections.emptyList()));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public TypeVariableDefinition<S> typeVariable(String str, Type... typeArr) {
                return typeVariable(str, Arrays.asList(typeArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> annotateType(AnnotationDescription... annotationDescriptionArr) {
                return annotateType((Collection<? extends AnnotationDescription>) Arrays.asList(annotationDescriptionArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> declaredTypes(List<? extends Class<?>> list) {
                return declaredTypes((Collection<? extends TypeDescription>) new TypeList.ForLoadedTypes(list));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public FieldDefinition.Optional.Valuable<S> define(FieldDescription fieldDescription) {
                return defineField(fieldDescription.getName(), fieldDescription.getType(), fieldDescription.getModifiers());
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public FieldDefinition.Optional.Valuable<S> defineField(String str, Type type, int i) {
                return defineField(str, TypeDefinition.Sort.describe(type), i);
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public MethodDefinition.ParameterDefinition.Initial<S> defineMethod(String str, Type type, int i) {
                return defineMethod(str, TypeDefinition.Sort.describe(type), i);
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public FieldDefinition.Optional<S> defineProperty(String str, TypeDefinition typeDefinition) {
                return defineProperty(str, typeDefinition, false);
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public MethodDefinition.ImplementationDefinition.Optional<S> implement(TypeDefinition... typeDefinitionArr) {
                return implement((Collection<? extends TypeDefinition>) Arrays.asList(typeDefinitionArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public InnerTypeDefinition<S> innerTypeOf(Constructor<?> constructor) {
                return innerTypeOf(new MethodDescription.ForLoadedConstructor(constructor));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> nestMembers(List<? extends Class<?>> list) {
                return nestMembers((Collection<? extends TypeDescription>) new TypeList.ForLoadedTypes(list));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> permittedSubclass(List<? extends Class<?>> list) {
                return permittedSubclass((Collection<? extends TypeDescription>) new TypeList.ForLoadedTypes(list));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> require(DynamicType... dynamicTypeArr) {
                return require(Arrays.asList(dynamicTypeArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public TypeVariableDefinition<S> typeVariable(String str, List<? extends Type> list) {
                return typeVariable(str, (Collection<? extends TypeDefinition>) new TypeList.Generic.ForLoadedTypes(list));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public Builder<S> withHashCodeEquals() {
                return method(ElementMatchers.isHashCode()).intercept(HashCodeMethod.usingDefaultOffset().withIgnoredFields(ElementMatchers.isSynthetic())).method(ElementMatchers.isEquals()).intercept(EqualsMethod.isolated().withIgnoredFields(ElementMatchers.isSynthetic()));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public MethodDefinition.ImplementationDefinition<S> define(Method method) {
                return define(new MethodDescription.ForLoadedMethod(method));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public FieldDefinition.Optional.Valuable<S> defineField(String str, TypeDefinition typeDefinition, ModifierContributor.ForField... forFieldArr) {
                return defineField(str, typeDefinition, Arrays.asList(forFieldArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public MethodDefinition.ParameterDefinition.Initial<S> defineMethod(String str, TypeDefinition typeDefinition, ModifierContributor.ForMethod... forMethodArr) {
                return defineMethod(str, typeDefinition, Arrays.asList(forMethodArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public FieldDefinition.Optional<S> defineProperty(String str, TypeDefinition typeDefinition, boolean z) {
                FieldManifestation fieldManifestation;
                MethodDefinition.ReceiverTypeDefinition<S> receiverTypeDefinition;
                if (str.length() != 0) {
                    if (!typeDefinition.represents(Void.TYPE)) {
                        if (!z) {
                            receiverTypeDefinition = defineMethod("set" + Character.toUpperCase(str.charAt(0)) + str.substring(1), Void.TYPE, Visibility.PUBLIC).withParameters(typeDefinition).intercept(FieldAccessor.ofField(str));
                            fieldManifestation = FieldManifestation.PLAIN;
                        } else {
                            fieldManifestation = FieldManifestation.FINAL;
                            receiverTypeDefinition = this;
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append(typeDefinition.represents(Boolean.TYPE) ? "is" : "get");
                        sb.append(Character.toUpperCase(str.charAt(0)));
                        sb.append(str.substring(1));
                        return receiverTypeDefinition.defineMethod(sb.toString(), typeDefinition, Visibility.PUBLIC).intercept(FieldAccessor.ofField(str)).defineField(str, typeDefinition, Visibility.PRIVATE, fieldManifestation);
                    }
                    throw new IllegalArgumentException("A bean property cannot have a void type");
                }
                throw new IllegalArgumentException("A bean property cannot have an empty name");
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public TypeVariableDefinition<S> typeVariable(String str, TypeDefinition... typeDefinitionArr) {
                return typeVariable(str, (Collection<? extends TypeDefinition>) Arrays.asList(typeDefinitionArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public MethodDefinition.ImplementationDefinition<S> define(Constructor<?> constructor) {
                return define(new MethodDescription.ForLoadedConstructor(constructor));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public FieldDefinition.Optional.Valuable<S> defineField(String str, TypeDefinition typeDefinition, Collection<? extends ModifierContributor.ForField> collection) {
                return defineField(str, typeDefinition, ModifierContributor.Resolver.m15205of(collection).resolve());
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public MethodDefinition.ParameterDefinition.Initial<S> defineMethod(String str, TypeDefinition typeDefinition, Collection<? extends ModifierContributor.ForMethod> collection) {
                return defineMethod(str, typeDefinition, ModifierContributor.Resolver.m15205of(collection).resolve());
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v17 */
            /* JADX WARN: Type inference failed for: r0v18 */
            /* JADX WARN: Type inference failed for: r0v4, types: [net.bytebuddy.dynamic.DynamicType$Builder$MethodDefinition$ExceptionDefinition] */
            /* JADX WARN: Type inference failed for: r0v5, types: [net.bytebuddy.dynamic.DynamicType$Builder$MethodDefinition$ExceptionDefinition] */
            /* JADX WARN: Type inference failed for: r0v9, types: [net.bytebuddy.dynamic.DynamicType$Builder$MethodDefinition$ParameterDefinition] */
            @Override // net.bytebuddy.dynamic.DynamicType.Builder
            public MethodDefinition.ImplementationDefinition<S> define(MethodDescription methodDescription) {
                MethodDefinition.ParameterDefinition.Initial<S> initial;
                ?? withParameters;
                if (methodDescription.isConstructor()) {
                    initial = defineConstructor(methodDescription.getModifiers());
                } else {
                    initial = defineMethod(methodDescription.getInternalName(), methodDescription.getReturnType(), methodDescription.getModifiers());
                }
                ParameterList<?> parameters = methodDescription.getParameters();
                if (parameters.hasExplicitMetaData()) {
                    Iterator<T> it = parameters.iterator();
                    withParameters = initial;
                    while (it.hasNext()) {
                        ParameterDescription parameterDescription = (ParameterDescription) it.next();
                        withParameters = withParameters.withParameter(parameterDescription.getType(), parameterDescription.getName(), parameterDescription.getModifiers());
                    }
                } else {
                    withParameters = initial.withParameters((Collection<? extends TypeDefinition>) parameters.asTypeList());
                }
                MethodDefinition.TypeVariableDefinition throwing = withParameters.throwing(methodDescription.getExceptionTypes());
                for (TypeDescription.Generic generic : methodDescription.getTypeVariables()) {
                    throwing = throwing.typeVariable(generic.getSymbol(), (Collection<? extends TypeDefinition>) generic.getUpperBounds());
                }
                return throwing;
            }
        }

        /* loaded from: classes2.dex */
        public interface FieldDefinition<S> {

            /* loaded from: classes2.dex */
            public interface Optional<U> extends FieldDefinition<U>, Builder<U> {

                /* loaded from: classes2.dex */
                public static abstract class AbstractBase<U> extends AbstractBase.Delegator<U> implements Optional<U> {
                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition
                    public Optional<U> annotateField(Annotation... annotationArr) {
                        return annotateField(Arrays.asList(annotationArr));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition
                    public Optional<U> annotateField(List<? extends Annotation> list) {
                        return annotateField((Collection<? extends AnnotationDescription>) new AnnotationList.ForLoadedAnnotations(list));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition
                    public Optional<U> annotateField(AnnotationDescription... annotationDescriptionArr) {
                        return annotateField((Collection<? extends AnnotationDescription>) Arrays.asList(annotationDescriptionArr));
                    }
                }

                /* loaded from: classes2.dex */
                public interface Valuable<V> extends Valuable<V>, Optional<V> {

                    /* loaded from: classes2.dex */
                    public static abstract class AbstractBase<U> extends AbstractBase<U> implements Valuable<U> {
                        public abstract Optional<U> defaultValue(Object obj);

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Valuable
                        public Optional<U> value(boolean z) {
                            return defaultValue(Integer.valueOf(z ? 1 : 0));
                        }

                        @HashCodeAndEqualsPlugin.Enhance
                        /* loaded from: classes.dex */
                        public static abstract class Adapter<V> extends AbstractBase<V> {
                            @MaybeNull
                            @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
                            public final Object defaultValue;
                            public final FieldAttributeAppender.Factory fieldAttributeAppenderFactory;
                            public final Transformer<FieldDescription> transformer;

                            @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition
                            public Optional<V> attribute(FieldAttributeAppender.Factory factory) {
                                return materialize(new FieldAttributeAppender.Factory.Compound(this.fieldAttributeAppenderFactory, factory), this.transformer, this.defaultValue);
                            }

                            @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Optional.Valuable.AbstractBase
                            public Optional<V> defaultValue(Object obj) {
                                return materialize(this.fieldAttributeAppenderFactory, this.transformer, obj);
                            }

                            /* JADX WARN: Removed duplicated region for block: B:25:0x003d A[RETURN] */
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct add '--show-bad-code' argument
                            */
                            public boolean equals(@net.bytebuddy.utility.nullability.MaybeNull java.lang.Object r5) {
                                /*
                                    r4 = this;
                                    r0 = 1
                                    if (r4 != r5) goto L4
                                    return r0
                                L4:
                                    r1 = 0
                                    if (r5 != 0) goto L8
                                    return r1
                                L8:
                                    java.lang.Class r2 = r4.getClass()
                                    java.lang.Class r3 = r5.getClass()
                                    if (r2 == r3) goto L13
                                    return r1
                                L13:
                                    net.bytebuddy.implementation.attribute.FieldAttributeAppender$Factory r2 = r4.fieldAttributeAppenderFactory
                                    net.bytebuddy.dynamic.DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter r5 = (net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Optional.Valuable.AbstractBase.Adapter) r5
                                    net.bytebuddy.implementation.attribute.FieldAttributeAppender$Factory r3 = r5.fieldAttributeAppenderFactory
                                    boolean r2 = r2.equals(r3)
                                    if (r2 != 0) goto L20
                                    return r1
                                L20:
                                    net.bytebuddy.dynamic.Transformer<net.bytebuddy.description.field.FieldDescription> r2 = r4.transformer
                                    net.bytebuddy.dynamic.Transformer<net.bytebuddy.description.field.FieldDescription> r3 = r5.transformer
                                    boolean r2 = r2.equals(r3)
                                    if (r2 != 0) goto L2b
                                    return r1
                                L2b:
                                    java.lang.Object r2 = r4.defaultValue
                                    java.lang.Object r5 = r5.defaultValue
                                    if (r5 == 0) goto L3a
                                    if (r2 == 0) goto L3c
                                    boolean r5 = r2.equals(r5)
                                    if (r5 != 0) goto L3d
                                    return r1
                                L3a:
                                    if (r2 == 0) goto L3d
                                L3c:
                                    return r1
                                L3d:
                                    return r0
                                */
                                throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Optional.Valuable.AbstractBase.Adapter.equals(java.lang.Object):boolean");
                            }

                            public int hashCode() {
                                int hashCode = ((((getClass().hashCode() * 31) + this.fieldAttributeAppenderFactory.hashCode()) * 31) + this.transformer.hashCode()) * 31;
                                Object obj = this.defaultValue;
                                return obj != null ? hashCode + obj.hashCode() : hashCode;
                            }

                            public abstract Optional<V> materialize(FieldAttributeAppender.Factory factory, Transformer<FieldDescription> transformer, @MaybeNull Object obj);

                            @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition
                            public Optional<V> transform(Transformer<FieldDescription> transformer) {
                                return materialize(this.fieldAttributeAppenderFactory, new Transformer.Compound(this.transformer, transformer), this.defaultValue);
                            }

                            public Adapter(FieldAttributeAppender.Factory factory, Transformer<FieldDescription> transformer, @MaybeNull Object obj) {
                                this.fieldAttributeAppenderFactory = factory;
                                this.transformer = transformer;
                                this.defaultValue = obj;
                            }
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Valuable
                        public Optional<U> value(int i) {
                            return defaultValue(Integer.valueOf(i));
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Valuable
                        public Optional<U> value(long j) {
                            return defaultValue(Long.valueOf(j));
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Valuable
                        public Optional<U> value(float f) {
                            return defaultValue(Float.valueOf(f));
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Valuable
                        public Optional<U> value(double d) {
                            return defaultValue(Double.valueOf(d));
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Valuable
                        public Optional<U> value(String str) {
                            if (str != null) {
                                return defaultValue(str);
                            }
                            throw new IllegalArgumentException("Cannot define 'null' as constant value");
                        }
                    }
                }
            }

            /* loaded from: classes2.dex */
            public interface Valuable<U> extends FieldDefinition<U> {
                Optional<U> value(double d);

                Optional<U> value(float f);

                Optional<U> value(int i);

                Optional<U> value(long j);

                Optional<U> value(String str);

                Optional<U> value(boolean z);
            }

            Optional<S> annotateField(Collection<? extends AnnotationDescription> collection);

            Optional<S> annotateField(List<? extends Annotation> list);

            Optional<S> annotateField(Annotation... annotationArr);

            Optional<S> annotateField(AnnotationDescription... annotationDescriptionArr);

            Optional<S> attribute(FieldAttributeAppender.Factory factory);

            Optional<S> transform(Transformer<FieldDescription> transformer);
        }

        /* loaded from: classes2.dex */
        public interface InnerTypeDefinition<S> extends Builder<S> {

            /* loaded from: classes2.dex */
            public interface ForType<U> extends InnerTypeDefinition<U> {
                Builder<U> asMemberType();
            }

            Builder<S> asAnonymousType();
        }

        /* loaded from: classes2.dex */
        public interface MethodDefinition<S> extends Builder<S> {

            /* loaded from: classes2.dex */
            public static abstract class AbstractBase<U> extends AbstractBase.Delegator<U> implements MethodDefinition<U> {
                @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition
                public MethodDefinition<U> annotateMethod(Annotation... annotationArr) {
                    return annotateMethod(Arrays.asList(annotationArr));
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition
                public MethodDefinition<U> annotateParameter(int i, Annotation... annotationArr) {
                    return annotateParameter(i, Arrays.asList(annotationArr));
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static abstract class Adapter<V> extends ReceiverTypeDefinition.AbstractBase<V> {
                    public final MethodRegistry.Handler handler;
                    public final MethodAttributeAppender.Factory methodAttributeAppenderFactory;
                    public final Transformer<MethodDescription> transformer;

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition
                    public MethodDefinition<V> attribute(MethodAttributeAppender.Factory factory) {
                        return materialize(this.handler, new MethodAttributeAppender.Factory.Compound(this.methodAttributeAppenderFactory, factory), this.transformer);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Adapter adapter = (Adapter) obj;
                            return this.handler.equals(adapter.handler) && this.methodAttributeAppenderFactory.equals(adapter.methodAttributeAppenderFactory) && this.transformer.equals(adapter.transformer);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((((getClass().hashCode() * 31) + this.handler.hashCode()) * 31) + this.methodAttributeAppenderFactory.hashCode()) * 31) + this.transformer.hashCode();
                    }

                    public abstract MethodDefinition<V> materialize(MethodRegistry.Handler handler, MethodAttributeAppender.Factory factory, Transformer<MethodDescription> transformer);

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition
                    public MethodDefinition<V> transform(Transformer<MethodDescription> transformer) {
                        return materialize(this.handler, this.methodAttributeAppenderFactory, new Transformer.Compound(this.transformer, transformer));
                    }

                    public Adapter(MethodRegistry.Handler handler, MethodAttributeAppender.Factory factory, Transformer<MethodDescription> transformer) {
                        this.handler = handler;
                        this.methodAttributeAppenderFactory = factory;
                        this.transformer = transformer;
                    }
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition
                public MethodDefinition<U> annotateMethod(List<? extends Annotation> list) {
                    return annotateMethod((Collection<? extends AnnotationDescription>) new AnnotationList.ForLoadedAnnotations(list));
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition
                public MethodDefinition<U> annotateParameter(int i, List<? extends Annotation> list) {
                    return annotateParameter(i, (Collection<? extends AnnotationDescription>) new AnnotationList.ForLoadedAnnotations(list));
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition
                public MethodDefinition<U> annotateMethod(AnnotationDescription... annotationDescriptionArr) {
                    return annotateMethod((Collection<? extends AnnotationDescription>) Arrays.asList(annotationDescriptionArr));
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition
                public MethodDefinition<U> annotateParameter(int i, AnnotationDescription... annotationDescriptionArr) {
                    return annotateParameter(i, (Collection<? extends AnnotationDescription>) Arrays.asList(annotationDescriptionArr));
                }
            }

            /* loaded from: classes2.dex */
            public interface ExceptionDefinition<U> extends TypeVariableDefinition<U> {

                /* loaded from: classes2.dex */
                public static abstract class AbstractBase<V> extends TypeVariableDefinition.AbstractBase<V> implements ExceptionDefinition<V> {
                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ExceptionDefinition
                    public ExceptionDefinition<V> throwing(Type... typeArr) {
                        return throwing(Arrays.asList(typeArr));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ExceptionDefinition
                    public ExceptionDefinition<V> throwing(List<? extends Type> list) {
                        return throwing((Collection<? extends TypeDefinition>) new TypeList.Generic.ForLoadedTypes(list));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ExceptionDefinition
                    public ExceptionDefinition<V> throwing(TypeDefinition... typeDefinitionArr) {
                        return throwing((Collection<? extends TypeDefinition>) Arrays.asList(typeDefinitionArr));
                    }
                }

                ExceptionDefinition<U> throwing(Collection<? extends TypeDefinition> collection);

                ExceptionDefinition<U> throwing(List<? extends Type> list);

                ExceptionDefinition<U> throwing(Type... typeArr);

                ExceptionDefinition<U> throwing(TypeDefinition... typeDefinitionArr);
            }

            /* loaded from: classes2.dex */
            public interface ImplementationDefinition<U> {

                /* loaded from: classes2.dex */
                public static abstract class AbstractBase<V> implements ImplementationDefinition<V> {
                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                    public <W> ReceiverTypeDefinition<V> defaultValue(W w, Class<? extends W> cls) {
                        return defaultValue(AnnotationDescription.ForLoadedAnnotation.asValue(w, cls));
                    }
                }

                /* loaded from: classes2.dex */
                public interface Optional<V> extends ImplementationDefinition<V>, Builder<V> {
                }

                <W> ReceiverTypeDefinition<U> defaultValue(W w, Class<? extends W> cls);

                ReceiverTypeDefinition<U> defaultValue(AnnotationValue<?, ?> annotationValue);

                ReceiverTypeDefinition<U> intercept(Implementation implementation);

                ReceiverTypeDefinition<U> withoutCode();
            }

            /* loaded from: classes2.dex */
            public interface ParameterDefinition<U> extends ExceptionDefinition<U> {

                /* loaded from: classes2.dex */
                public static abstract class AbstractBase<V> extends ExceptionDefinition.AbstractBase<V> implements ParameterDefinition<V> {
                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition
                    public Annotatable<V> withParameter(Type type, String str, ModifierContributor.ForParameter... forParameterArr) {
                        return withParameter(type, str, Arrays.asList(forParameterArr));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition
                    public Annotatable<V> withParameter(Type type, String str, Collection<? extends ModifierContributor.ForParameter> collection) {
                        return withParameter(type, str, ModifierContributor.Resolver.m15205of(collection).resolve());
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition
                    public Annotatable<V> withParameter(Type type, String str, int i) {
                        return withParameter(TypeDefinition.Sort.describe(type), str, i);
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition
                    public Annotatable<V> withParameter(TypeDefinition typeDefinition, String str, ModifierContributor.ForParameter... forParameterArr) {
                        return withParameter(typeDefinition, str, Arrays.asList(forParameterArr));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition
                    public Annotatable<V> withParameter(TypeDefinition typeDefinition, String str, Collection<? extends ModifierContributor.ForParameter> collection) {
                        return withParameter(typeDefinition, str, ModifierContributor.Resolver.m15205of(collection).resolve());
                    }
                }

                /* loaded from: classes2.dex */
                public interface Annotatable<V> extends ParameterDefinition<V> {

                    /* loaded from: classes2.dex */
                    public static abstract class AbstractBase<W> extends AbstractBase<W> implements Annotatable<W> {

                        /* loaded from: classes2.dex */
                        public static abstract class Adapter<X> extends AbstractBase<X> {
                            @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                            public ReceiverTypeDefinition<X> defaultValue(AnnotationValue<?, ?> annotationValue) {
                                return materialize().defaultValue(annotationValue);
                            }

                            @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                            public ReceiverTypeDefinition<X> intercept(Implementation implementation) {
                                return materialize().intercept(implementation);
                            }

                            public abstract ParameterDefinition<X> materialize();

                            @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ExceptionDefinition
                            public ExceptionDefinition<X> throwing(Collection<? extends TypeDefinition> collection) {
                                return materialize().throwing(collection);
                            }

                            @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.TypeVariableDefinition
                            public TypeVariableDefinition.Annotatable<X> typeVariable(String str, Collection<? extends TypeDefinition> collection) {
                                return materialize().typeVariable(str, collection);
                            }

                            @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition
                            public Annotatable<X> withParameter(TypeDefinition typeDefinition, String str, int i) {
                                return materialize().withParameter(typeDefinition, str, i);
                            }

                            @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                            public ReceiverTypeDefinition<X> withoutCode() {
                                return materialize().withoutCode();
                            }

                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition.AbstractBase, net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                            public <V> ReceiverTypeDefinition<X> defaultValue(V v, Class<? extends V> cls) {
                                return materialize().defaultValue(v, cls);
                            }
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition.Annotatable
                        public Annotatable<W> annotateParameter(Annotation... annotationArr) {
                            return annotateParameter(Arrays.asList(annotationArr));
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition.Annotatable
                        public Annotatable<W> annotateParameter(List<? extends Annotation> list) {
                            return annotateParameter((Collection<? extends AnnotationDescription>) new AnnotationList.ForLoadedAnnotations(list));
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition.Annotatable
                        public Annotatable<W> annotateParameter(AnnotationDescription... annotationDescriptionArr) {
                            return annotateParameter((Collection<? extends AnnotationDescription>) Arrays.asList(annotationDescriptionArr));
                        }
                    }

                    Annotatable<V> annotateParameter(Collection<? extends AnnotationDescription> collection);

                    Annotatable<V> annotateParameter(List<? extends Annotation> list);

                    Annotatable<V> annotateParameter(Annotation... annotationArr);

                    Annotatable<V> annotateParameter(AnnotationDescription... annotationDescriptionArr);
                }

                /* loaded from: classes2.dex */
                public interface Initial<V> extends ParameterDefinition<V>, Simple<V> {

                    /* loaded from: classes2.dex */
                    public static abstract class AbstractBase<W> extends AbstractBase<W> implements Initial<W> {
                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition.Simple
                        public Simple.Annotatable<W> withParameter(Type type) {
                            return withParameter(TypeDefinition.Sort.describe(type));
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition.Initial
                        public ExceptionDefinition<W> withParameters(Type... typeArr) {
                            return withParameters(Arrays.asList(typeArr));
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition.Initial
                        public ExceptionDefinition<W> withParameters(List<? extends Type> list) {
                            return withParameters((Collection<? extends TypeDefinition>) new TypeList.Generic.ForLoadedTypes(list));
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition.Initial
                        public ExceptionDefinition<W> withParameters(TypeDefinition... typeDefinitionArr) {
                            return withParameters((Collection<? extends TypeDefinition>) Arrays.asList(typeDefinitionArr));
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition.Initial
                        public ExceptionDefinition<W> withParameters(Collection<? extends TypeDefinition> collection) {
                            Simple.Annotatable<V> annotatable = this;
                            for (TypeDefinition typeDefinition : collection) {
                                annotatable = annotatable.withParameter(typeDefinition);
                            }
                            return annotatable;
                        }
                    }

                    ExceptionDefinition<V> withParameters(Collection<? extends TypeDefinition> collection);

                    ExceptionDefinition<V> withParameters(List<? extends Type> list);

                    ExceptionDefinition<V> withParameters(Type... typeArr);

                    ExceptionDefinition<V> withParameters(TypeDefinition... typeDefinitionArr);
                }

                /* loaded from: classes2.dex */
                public interface Simple<V> extends ExceptionDefinition<V> {

                    /* loaded from: classes2.dex */
                    public static abstract class AbstractBase<W> extends ExceptionDefinition.AbstractBase<W> implements Simple<W> {
                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition.Simple
                        public Annotatable<W> withParameter(Type type) {
                            return withParameter(TypeDefinition.Sort.describe(type));
                        }
                    }

                    /* loaded from: classes2.dex */
                    public interface Annotatable<V> extends Simple<V> {

                        /* loaded from: classes2.dex */
                        public static abstract class AbstractBase<W> extends AbstractBase<W> implements Annotatable<W> {

                            /* loaded from: classes2.dex */
                            public static abstract class Adapter<X> extends AbstractBase<X> {
                                @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                                public ReceiverTypeDefinition<X> defaultValue(AnnotationValue<?, ?> annotationValue) {
                                    return materialize().defaultValue(annotationValue);
                                }

                                @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                                public ReceiverTypeDefinition<X> intercept(Implementation implementation) {
                                    return materialize().intercept(implementation);
                                }

                                public abstract Simple<X> materialize();

                                @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ExceptionDefinition
                                public ExceptionDefinition<X> throwing(Collection<? extends TypeDefinition> collection) {
                                    return materialize().throwing(collection);
                                }

                                @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.TypeVariableDefinition
                                public TypeVariableDefinition.Annotatable<X> typeVariable(String str, Collection<? extends TypeDefinition> collection) {
                                    return materialize().typeVariable(str, collection);
                                }

                                @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition.Simple
                                public Annotatable<X> withParameter(TypeDefinition typeDefinition) {
                                    return materialize().withParameter(typeDefinition);
                                }

                                @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                                public ReceiverTypeDefinition<X> withoutCode() {
                                    return materialize().withoutCode();
                                }

                                /* JADX WARN: Multi-variable type inference failed */
                                @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition.AbstractBase, net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                                public <V> ReceiverTypeDefinition<X> defaultValue(V v, Class<? extends V> cls) {
                                    return materialize().defaultValue(v, cls);
                                }
                            }

                            @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition.Simple.Annotatable
                            public Annotatable<W> annotateParameter(Annotation... annotationArr) {
                                return annotateParameter(Arrays.asList(annotationArr));
                            }

                            @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition.Simple.Annotatable
                            public Annotatable<W> annotateParameter(List<? extends Annotation> list) {
                                return annotateParameter((Collection<? extends AnnotationDescription>) new AnnotationList.ForLoadedAnnotations(list));
                            }

                            @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ParameterDefinition.Simple.Annotatable
                            public Annotatable<W> annotateParameter(AnnotationDescription... annotationDescriptionArr) {
                                return annotateParameter((Collection<? extends AnnotationDescription>) Arrays.asList(annotationDescriptionArr));
                            }
                        }

                        Annotatable<V> annotateParameter(Collection<? extends AnnotationDescription> collection);

                        Annotatable<V> annotateParameter(List<? extends Annotation> list);

                        Annotatable<V> annotateParameter(Annotation... annotationArr);

                        Annotatable<V> annotateParameter(AnnotationDescription... annotationDescriptionArr);
                    }

                    Annotatable<V> withParameter(Type type);

                    Annotatable<V> withParameter(TypeDefinition typeDefinition);
                }

                Annotatable<U> withParameter(Type type, String str, int i);

                Annotatable<U> withParameter(Type type, String str, Collection<? extends ModifierContributor.ForParameter> collection);

                Annotatable<U> withParameter(Type type, String str, ModifierContributor.ForParameter... forParameterArr);

                Annotatable<U> withParameter(TypeDefinition typeDefinition, String str, int i);

                Annotatable<U> withParameter(TypeDefinition typeDefinition, String str, Collection<? extends ModifierContributor.ForParameter> collection);

                Annotatable<U> withParameter(TypeDefinition typeDefinition, String str, ModifierContributor.ForParameter... forParameterArr);
            }

            /* loaded from: classes2.dex */
            public interface ReceiverTypeDefinition<U> extends MethodDefinition<U> {

                /* loaded from: classes2.dex */
                public static abstract class AbstractBase<V> extends AbstractBase<V> implements ReceiverTypeDefinition<V> {
                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ReceiverTypeDefinition
                    public MethodDefinition<V> receiverType(AnnotatedElement annotatedElement) {
                        return receiverType(TypeDefinition.Sort.describeAnnotated(annotatedElement));
                    }
                }

                MethodDefinition<U> receiverType(AnnotatedElement annotatedElement);

                MethodDefinition<U> receiverType(TypeDescription.Generic generic);
            }

            /* loaded from: classes2.dex */
            public interface TypeVariableDefinition<U> extends ImplementationDefinition<U> {

                /* loaded from: classes2.dex */
                public static abstract class AbstractBase<V> extends ImplementationDefinition.AbstractBase<V> implements TypeVariableDefinition<V> {
                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.TypeVariableDefinition
                    public Annotatable<V> typeVariable(String str) {
                        return typeVariable(str, Collections.singletonList(Object.class));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.TypeVariableDefinition
                    public Annotatable<V> typeVariable(String str, Type... typeArr) {
                        return typeVariable(str, Arrays.asList(typeArr));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.TypeVariableDefinition
                    public Annotatable<V> typeVariable(String str, List<? extends Type> list) {
                        return typeVariable(str, (Collection<? extends TypeDefinition>) new TypeList.Generic.ForLoadedTypes(list));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.TypeVariableDefinition
                    public Annotatable<V> typeVariable(String str, TypeDefinition... typeDefinitionArr) {
                        return typeVariable(str, (Collection<? extends TypeDefinition>) Arrays.asList(typeDefinitionArr));
                    }
                }

                /* loaded from: classes2.dex */
                public interface Annotatable<V> extends TypeVariableDefinition<V> {

                    /* loaded from: classes2.dex */
                    public static abstract class AbstractBase<W> extends AbstractBase<W> implements Annotatable<W> {

                        /* loaded from: classes2.dex */
                        public static abstract class Adapter<X> extends AbstractBase<X> {
                            @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                            public ReceiverTypeDefinition<X> defaultValue(AnnotationValue<?, ?> annotationValue) {
                                return materialize().defaultValue(annotationValue);
                            }

                            @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                            public ReceiverTypeDefinition<X> intercept(Implementation implementation) {
                                return materialize().intercept(implementation);
                            }

                            public abstract ParameterDefinition<X> materialize();

                            @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.TypeVariableDefinition
                            public Annotatable<X> typeVariable(String str, Collection<? extends TypeDefinition> collection) {
                                return materialize().typeVariable(str, collection);
                            }

                            @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                            public ReceiverTypeDefinition<X> withoutCode() {
                                return materialize().withoutCode();
                            }

                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition.AbstractBase, net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.ImplementationDefinition
                            public <V> ReceiverTypeDefinition<X> defaultValue(V v, Class<? extends V> cls) {
                                return materialize().defaultValue(v, cls);
                            }
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.TypeVariableDefinition.Annotatable
                        public Annotatable<W> annotateTypeVariable(Annotation... annotationArr) {
                            return annotateTypeVariable(Arrays.asList(annotationArr));
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.TypeVariableDefinition.Annotatable
                        public Annotatable<W> annotateTypeVariable(List<? extends Annotation> list) {
                            return annotateTypeVariable((Collection<? extends AnnotationDescription>) new AnnotationList.ForLoadedAnnotations(list));
                        }

                        @Override // net.bytebuddy.dynamic.DynamicType.Builder.MethodDefinition.TypeVariableDefinition.Annotatable
                        public Annotatable<W> annotateTypeVariable(AnnotationDescription... annotationDescriptionArr) {
                            return annotateTypeVariable((Collection<? extends AnnotationDescription>) Arrays.asList(annotationDescriptionArr));
                        }
                    }

                    Annotatable<V> annotateTypeVariable(Collection<? extends AnnotationDescription> collection);

                    Annotatable<V> annotateTypeVariable(List<? extends Annotation> list);

                    Annotatable<V> annotateTypeVariable(Annotation... annotationArr);

                    Annotatable<V> annotateTypeVariable(AnnotationDescription... annotationDescriptionArr);
                }

                Annotatable<U> typeVariable(String str);

                Annotatable<U> typeVariable(String str, Collection<? extends TypeDefinition> collection);

                Annotatable<U> typeVariable(String str, List<? extends Type> list);

                Annotatable<U> typeVariable(String str, Type... typeArr);

                Annotatable<U> typeVariable(String str, TypeDefinition... typeDefinitionArr);
            }

            MethodDefinition<S> annotateMethod(Collection<? extends AnnotationDescription> collection);

            MethodDefinition<S> annotateMethod(List<? extends Annotation> list);

            MethodDefinition<S> annotateMethod(Annotation... annotationArr);

            MethodDefinition<S> annotateMethod(AnnotationDescription... annotationDescriptionArr);

            MethodDefinition<S> annotateParameter(int i, Collection<? extends AnnotationDescription> collection);

            MethodDefinition<S> annotateParameter(int i, List<? extends Annotation> list);

            MethodDefinition<S> annotateParameter(int i, Annotation... annotationArr);

            MethodDefinition<S> annotateParameter(int i, AnnotationDescription... annotationDescriptionArr);

            MethodDefinition<S> attribute(MethodAttributeAppender.Factory factory);

            MethodDefinition<S> transform(Transformer<MethodDescription> transformer);
        }

        /* loaded from: classes2.dex */
        public interface RecordComponentDefinition<S> {

            /* loaded from: classes2.dex */
            public interface Optional<U> extends RecordComponentDefinition<U>, Builder<U> {

                /* loaded from: classes2.dex */
                public static abstract class AbstractBase<U> extends AbstractBase.Delegator<U> implements Optional<U> {
                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.RecordComponentDefinition
                    public Optional<U> annotateRecordComponent(Annotation... annotationArr) {
                        return annotateRecordComponent(Arrays.asList(annotationArr));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.RecordComponentDefinition
                    public Optional<U> annotateRecordComponent(List<? extends Annotation> list) {
                        return annotateRecordComponent((Collection<? extends AnnotationDescription>) new AnnotationList.ForLoadedAnnotations(list));
                    }

                    @Override // net.bytebuddy.dynamic.DynamicType.Builder.RecordComponentDefinition
                    public Optional<U> annotateRecordComponent(AnnotationDescription... annotationDescriptionArr) {
                        return annotateRecordComponent((Collection<? extends AnnotationDescription>) Arrays.asList(annotationDescriptionArr));
                    }
                }
            }

            Optional<S> annotateRecordComponent(Collection<? extends AnnotationDescription> collection);

            Optional<S> annotateRecordComponent(List<? extends Annotation> list);

            Optional<S> annotateRecordComponent(Annotation... annotationArr);

            Optional<S> annotateRecordComponent(AnnotationDescription... annotationDescriptionArr);

            Optional<S> attribute(RecordComponentAttributeAppender.Factory factory);

            Optional<S> transform(Transformer<RecordComponentDescription> transformer);
        }

        /* loaded from: classes2.dex */
        public interface TypeVariableDefinition<S> extends Builder<S> {

            /* loaded from: classes2.dex */
            public static abstract class AbstractBase<U> extends AbstractBase.Delegator<U> implements TypeVariableDefinition<U> {
                @Override // net.bytebuddy.dynamic.DynamicType.Builder.TypeVariableDefinition
                public TypeVariableDefinition<U> annotateTypeVariable(Annotation... annotationArr) {
                    return annotateTypeVariable(Arrays.asList(annotationArr));
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder.TypeVariableDefinition
                public TypeVariableDefinition<U> annotateTypeVariable(List<? extends Annotation> list) {
                    return annotateTypeVariable((Collection<? extends AnnotationDescription>) new AnnotationList.ForLoadedAnnotations(list));
                }

                @Override // net.bytebuddy.dynamic.DynamicType.Builder.TypeVariableDefinition
                public TypeVariableDefinition<U> annotateTypeVariable(AnnotationDescription... annotationDescriptionArr) {
                    return annotateTypeVariable((Collection<? extends AnnotationDescription>) Arrays.asList(annotationDescriptionArr));
                }
            }

            TypeVariableDefinition<S> annotateTypeVariable(Collection<? extends AnnotationDescription> collection);

            TypeVariableDefinition<S> annotateTypeVariable(List<? extends Annotation> list);

            TypeVariableDefinition<S> annotateTypeVariable(Annotation... annotationArr);

            TypeVariableDefinition<S> annotateTypeVariable(AnnotationDescription... annotationDescriptionArr);
        }

        Builder<T> annotateType(Collection<? extends AnnotationDescription> collection);

        Builder<T> annotateType(List<? extends Annotation> list);

        Builder<T> annotateType(Annotation... annotationArr);

        Builder<T> annotateType(AnnotationDescription... annotationDescriptionArr);

        Builder<T> attribute(TypeAttributeAppender typeAttributeAppender);

        MethodDefinition.ImplementationDefinition<T> constructor(ElementMatcher<? super MethodDescription> elementMatcher);

        Builder<T> declaredTypes(Collection<? extends TypeDescription> collection);

        Builder<T> declaredTypes(List<? extends Class<?>> list);

        Builder<T> declaredTypes(Class<?>... clsArr);

        Builder<T> declaredTypes(TypeDescription... typeDescriptionArr);

        FieldDefinition.Optional.Valuable<T> define(Field field);

        FieldDefinition.Optional.Valuable<T> define(FieldDescription fieldDescription);

        MethodDefinition.ImplementationDefinition<T> define(Constructor<?> constructor);

        MethodDefinition.ImplementationDefinition<T> define(Method method);

        MethodDefinition.ImplementationDefinition<T> define(MethodDescription methodDescription);

        RecordComponentDefinition.Optional<T> define(RecordComponentDescription recordComponentDescription);

        MethodDefinition.ParameterDefinition.Initial<T> defineConstructor(int i);

        MethodDefinition.ParameterDefinition.Initial<T> defineConstructor(Collection<? extends ModifierContributor.ForMethod> collection);

        MethodDefinition.ParameterDefinition.Initial<T> defineConstructor(ModifierContributor.ForMethod... forMethodArr);

        FieldDefinition.Optional.Valuable<T> defineField(String str, Type type, int i);

        FieldDefinition.Optional.Valuable<T> defineField(String str, Type type, Collection<? extends ModifierContributor.ForField> collection);

        FieldDefinition.Optional.Valuable<T> defineField(String str, Type type, ModifierContributor.ForField... forFieldArr);

        FieldDefinition.Optional.Valuable<T> defineField(String str, TypeDefinition typeDefinition, int i);

        FieldDefinition.Optional.Valuable<T> defineField(String str, TypeDefinition typeDefinition, Collection<? extends ModifierContributor.ForField> collection);

        FieldDefinition.Optional.Valuable<T> defineField(String str, TypeDefinition typeDefinition, ModifierContributor.ForField... forFieldArr);

        MethodDefinition.ParameterDefinition.Initial<T> defineMethod(String str, Type type, int i);

        MethodDefinition.ParameterDefinition.Initial<T> defineMethod(String str, Type type, Collection<? extends ModifierContributor.ForMethod> collection);

        MethodDefinition.ParameterDefinition.Initial<T> defineMethod(String str, Type type, ModifierContributor.ForMethod... forMethodArr);

        MethodDefinition.ParameterDefinition.Initial<T> defineMethod(String str, TypeDefinition typeDefinition, int i);

        MethodDefinition.ParameterDefinition.Initial<T> defineMethod(String str, TypeDefinition typeDefinition, Collection<? extends ModifierContributor.ForMethod> collection);

        MethodDefinition.ParameterDefinition.Initial<T> defineMethod(String str, TypeDefinition typeDefinition, ModifierContributor.ForMethod... forMethodArr);

        FieldDefinition.Optional<T> defineProperty(String str, Type type);

        FieldDefinition.Optional<T> defineProperty(String str, Type type, boolean z);

        FieldDefinition.Optional<T> defineProperty(String str, TypeDefinition typeDefinition);

        FieldDefinition.Optional<T> defineProperty(String str, TypeDefinition typeDefinition, boolean z);

        RecordComponentDefinition.Optional<T> defineRecordComponent(String str, Type type);

        RecordComponentDefinition.Optional<T> defineRecordComponent(String str, TypeDefinition typeDefinition);

        FieldDefinition.Valuable<T> field(ElementMatcher<? super FieldDescription> elementMatcher);

        FieldDefinition.Valuable<T> field(LatentMatcher<? super FieldDescription> latentMatcher);

        Builder<T> ignoreAlso(ElementMatcher<? super MethodDescription> elementMatcher);

        Builder<T> ignoreAlso(LatentMatcher<? super MethodDescription> latentMatcher);

        MethodDefinition.ImplementationDefinition.Optional<T> implement(Collection<? extends TypeDefinition> collection);

        MethodDefinition.ImplementationDefinition.Optional<T> implement(List<? extends Type> list);

        MethodDefinition.ImplementationDefinition.Optional<T> implement(Type... typeArr);

        MethodDefinition.ImplementationDefinition.Optional<T> implement(TypeDefinition... typeDefinitionArr);

        Builder<T> initializer(LoadedTypeInitializer loadedTypeInitializer);

        Builder<T> initializer(ByteCodeAppender byteCodeAppender);

        InnerTypeDefinition.ForType<T> innerTypeOf(Class<?> cls);

        InnerTypeDefinition.ForType<T> innerTypeOf(TypeDescription typeDescription);

        InnerTypeDefinition<T> innerTypeOf(Constructor<?> constructor);

        InnerTypeDefinition<T> innerTypeOf(Method method);

        InnerTypeDefinition<T> innerTypeOf(MethodDescription.InDefinedShape inDefinedShape);

        MethodDefinition.ImplementationDefinition<T> invokable(ElementMatcher<? super MethodDescription> elementMatcher);

        MethodDefinition.ImplementationDefinition<T> invokable(LatentMatcher<? super MethodDescription> latentMatcher);

        Unloaded<T> make();

        Unloaded<T> make(TypeResolutionStrategy typeResolutionStrategy);

        Unloaded<T> make(TypeResolutionStrategy typeResolutionStrategy, TypePool typePool);

        Unloaded<T> make(TypePool typePool);

        Builder<T> merge(Collection<? extends ModifierContributor.ForType> collection);

        Builder<T> merge(ModifierContributor.ForType... forTypeArr);

        MethodDefinition.ImplementationDefinition<T> method(ElementMatcher<? super MethodDescription> elementMatcher);

        Builder<T> modifiers(int i);

        Builder<T> modifiers(Collection<? extends ModifierContributor.ForType> collection);

        Builder<T> modifiers(ModifierContributor.ForType... forTypeArr);

        Builder<T> name(String str);

        Builder<T> nestHost(Class<?> cls);

        Builder<T> nestHost(TypeDescription typeDescription);

        Builder<T> nestMembers(Collection<? extends TypeDescription> collection);

        Builder<T> nestMembers(List<? extends Class<?>> list);

        Builder<T> nestMembers(Class<?>... clsArr);

        Builder<T> nestMembers(TypeDescription... typeDescriptionArr);

        Builder<T> noNestMate();

        Builder<T> permittedSubclass(Collection<? extends TypeDescription> collection);

        Builder<T> permittedSubclass(List<? extends Class<?>> list);

        Builder<T> permittedSubclass(Class<?>... clsArr);

        Builder<T> permittedSubclass(TypeDescription... typeDescriptionArr);

        RecordComponentDefinition<T> recordComponent(ElementMatcher<? super RecordComponentDescription> elementMatcher);

        RecordComponentDefinition<T> recordComponent(LatentMatcher<? super RecordComponentDescription> latentMatcher);

        Builder<T> require(Collection<DynamicType> collection);

        Builder<T> require(TypeDescription typeDescription, byte[] bArr);

        Builder<T> require(TypeDescription typeDescription, byte[] bArr, LoadedTypeInitializer loadedTypeInitializer);

        Builder<T> require(DynamicType... dynamicTypeArr);

        FieldDefinition.Optional<T> serialVersionUid(long j);

        Builder<T> suffix(String str);

        TypeDescription toTypeDescription();

        Builder<T> topLevelType();

        Builder<T> transform(ElementMatcher<? super TypeDescription.Generic> elementMatcher, Transformer<TypeVariableToken> transformer);

        TypeVariableDefinition<T> typeVariable(String str);

        TypeVariableDefinition<T> typeVariable(String str, Collection<? extends TypeDefinition> collection);

        TypeVariableDefinition<T> typeVariable(String str, List<? extends Type> list);

        TypeVariableDefinition<T> typeVariable(String str, Type... typeArr);

        TypeVariableDefinition<T> typeVariable(String str, TypeDefinition... typeDefinitionArr);

        Builder<T> unsealed();

        Builder<T> visit(AsmVisitorWrapper asmVisitorWrapper);

        Builder<T> withHashCodeEquals();

        Builder<T> withToString();
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Default implements DynamicType {
        private static final int BUFFER_SIZE = 1024;
        private static final String CLASS_FILE_EXTENSION = ".class";
        private static final int END_OF_FILE = -1;
        private static final int FROM_BEGINNING = 0;
        private static final String MANIFEST_VERSION = "1.0";
        private static final String TEMP_SUFFIX = "tmp";
        public final List<? extends DynamicType> auxiliaryTypes;
        public final byte[] binaryRepresentation;
        public final LoadedTypeInitializer loadedTypeInitializer;
        public final TypeDescription typeDescription;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Loaded<T> extends Default implements Loaded<T> {
            private final Map<TypeDescription, Class<?>> loadedTypes;

            @Override // net.bytebuddy.dynamic.DynamicType.Default
            public boolean equals(@MaybeNull Object obj) {
                if (super.equals(obj)) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.loadedTypes.equals(((Loaded) obj).loadedTypes);
                }
                return false;
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Loaded
            public Map<TypeDescription, Class<?>> getAllLoaded() {
                return new HashMap(this.loadedTypes);
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Loaded
            public Class<? extends T> getLoaded() {
                return (Class<? extends T>) this.loadedTypes.get(this.typeDescription);
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Default
            public int hashCode() {
                return (super.hashCode() * 31) + this.loadedTypes.hashCode();
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Loaded
            public Map<TypeDescription, Class<?>> getLoadedAuxiliaryTypes() {
                HashMap hashMap = new HashMap(this.loadedTypes);
                hashMap.remove(this.typeDescription);
                return hashMap;
            }

            public Loaded(TypeDescription typeDescription, byte[] bArr, LoadedTypeInitializer loadedTypeInitializer, List<? extends DynamicType> list, Map<TypeDescription, Class<?>> map) {
                super(typeDescription, bArr, loadedTypeInitializer, list);
                this.loadedTypes = map;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Unloaded<T> extends Default implements Unloaded<T> {
            private final TypeResolutionStrategy.Resolved typeResolutionStrategy;

            @Override // net.bytebuddy.dynamic.DynamicType.Default
            public boolean equals(@MaybeNull Object obj) {
                if (super.equals(obj)) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.typeResolutionStrategy.equals(((Unloaded) obj).typeResolutionStrategy);
                }
                return false;
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Default
            public int hashCode() {
                return (super.hashCode() * 31) + this.typeResolutionStrategy.hashCode();
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Unloaded
            public Unloaded<T> include(DynamicType... dynamicTypeArr) {
                return include(Arrays.asList(dynamicTypeArr));
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Unloaded
            public Loaded<T> load(@MaybeNull ClassLoader classLoader) {
                if (classLoader instanceof InjectionClassLoader) {
                    InjectionClassLoader injectionClassLoader = (InjectionClassLoader) classLoader;
                    if (!injectionClassLoader.isSealed()) {
                        return load(injectionClassLoader, InjectionClassLoader.Strategy.INSTANCE);
                    }
                }
                return load(classLoader, ClassLoadingStrategy.Default.WRAPPER);
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Unloaded
            public Unloaded<T> include(List<? extends DynamicType> list) {
                return new Unloaded(this.typeDescription, this.binaryRepresentation, this.loadedTypeInitializer, CompoundList.m14776of((List) this.auxiliaryTypes, (List) list), this.typeResolutionStrategy);
            }

            public Unloaded(TypeDescription typeDescription, byte[] bArr, LoadedTypeInitializer loadedTypeInitializer, List<? extends DynamicType> list, TypeResolutionStrategy.Resolved resolved) {
                super(typeDescription, bArr, loadedTypeInitializer, list);
                this.typeResolutionStrategy = resolved;
            }

            @Override // net.bytebuddy.dynamic.DynamicType.Unloaded
            public <S extends ClassLoader> Loaded<T> load(@MaybeNull S s, ClassLoadingStrategy<? super S> classLoadingStrategy) {
                return new Loaded(this.typeDescription, this.binaryRepresentation, this.loadedTypeInitializer, this.auxiliaryTypes, this.typeResolutionStrategy.initialize(this, s, classLoadingStrategy));
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Default r5 = (Default) obj;
                return this.typeDescription.equals(r5.typeDescription) && Arrays.equals(this.binaryRepresentation, r5.binaryRepresentation) && this.loadedTypeInitializer.equals(r5.loadedTypeInitializer) && this.auxiliaryTypes.equals(r5.auxiliaryTypes);
            }
            return false;
        }

        @Override // net.bytebuddy.dynamic.DynamicType
        @SuppressFBWarnings(justification = "The array is not modified by class contract.", value = {"EI_EXPOSE_REP"})
        public byte[] getBytes() {
            return this.binaryRepresentation;
        }

        @Override // net.bytebuddy.dynamic.DynamicType
        public TypeDescription getTypeDescription() {
            return this.typeDescription;
        }

        public int hashCode() {
            return (((((((getClass().hashCode() * 31) + this.typeDescription.hashCode()) * 31) + Arrays.hashCode(this.binaryRepresentation)) * 31) + this.loadedTypeInitializer.hashCode()) * 31) + this.auxiliaryTypes.hashCode();
        }

        @Override // net.bytebuddy.dynamic.DynamicType
        public File inject(File file, File file2) {
            if (file.equals(file2)) {
                return inject(file);
            }
            return doInject(file, file2);
        }

        @Override // net.bytebuddy.dynamic.DynamicType
        public File toJar(File file) {
            Manifest manifest = new Manifest();
            manifest.getMainAttributes().put(Attributes.Name.MANIFEST_VERSION, MANIFEST_VERSION);
            return toJar(file, manifest);
        }

        private File doInject(File file, File file2) {
            JarOutputStream jarOutputStream;
            JarInputStream jarInputStream = new JarInputStream(new FileInputStream(file));
            try {
                if (!file2.isFile() && !file2.createNewFile()) {
                    throw new IllegalArgumentException("Could not create file: " + file2);
                }
                Manifest manifest = jarInputStream.getManifest();
                if (manifest == null) {
                    jarOutputStream = new JarOutputStream(new FileOutputStream(file2));
                } else {
                    jarOutputStream = new JarOutputStream(new FileOutputStream(file2), manifest);
                }
                Map<TypeDescription, byte[]> auxiliaryTypes = getAuxiliaryTypes();
                HashMap hashMap = new HashMap();
                for (Map.Entry<TypeDescription, byte[]> entry : auxiliaryTypes.entrySet()) {
                    hashMap.put(entry.getKey().getInternalName() + ".class", entry.getValue());
                }
                hashMap.put(this.typeDescription.getInternalName() + ".class", this.binaryRepresentation);
                while (true) {
                    JarEntry nextJarEntry = jarInputStream.getNextJarEntry();
                    if (nextJarEntry == null) {
                        break;
                    }
                    byte[] bArr = (byte[]) hashMap.remove(nextJarEntry.getName());
                    if (bArr == null) {
                        jarOutputStream.putNextEntry(nextJarEntry);
                        byte[] bArr2 = new byte[1024];
                        while (true) {
                            int read = jarInputStream.read(bArr2);
                            if (read != -1) {
                                jarOutputStream.write(bArr2, 0, read);
                            }
                        }
                    } else {
                        jarOutputStream.putNextEntry(new JarEntry(nextJarEntry.getName()));
                        jarOutputStream.write(bArr);
                    }
                    jarInputStream.closeEntry();
                    jarOutputStream.closeEntry();
                }
                for (Map.Entry entry2 : hashMap.entrySet()) {
                    jarOutputStream.putNextEntry(new JarEntry((String) entry2.getKey()));
                    jarOutputStream.write((byte[]) entry2.getValue());
                    jarOutputStream.closeEntry();
                }
                jarOutputStream.close();
                return file2;
            } finally {
                jarInputStream.close();
            }
        }

        @Override // net.bytebuddy.dynamic.DynamicType
        public Map<TypeDescription, byte[]> getAllTypes() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(this.typeDescription, this.binaryRepresentation);
            for (DynamicType dynamicType : this.auxiliaryTypes) {
                linkedHashMap.putAll(dynamicType.getAllTypes());
            }
            return linkedHashMap;
        }

        @Override // net.bytebuddy.dynamic.DynamicType
        public Map<TypeDescription, byte[]> getAuxiliaryTypes() {
            HashMap hashMap = new HashMap();
            for (DynamicType dynamicType : this.auxiliaryTypes) {
                hashMap.put(dynamicType.getTypeDescription(), dynamicType.getBytes());
                hashMap.putAll(dynamicType.getAuxiliaryTypes());
            }
            return hashMap;
        }

        @Override // net.bytebuddy.dynamic.DynamicType
        public Map<TypeDescription, LoadedTypeInitializer> getLoadedTypeInitializers() {
            HashMap hashMap = new HashMap();
            for (DynamicType dynamicType : this.auxiliaryTypes) {
                hashMap.putAll(dynamicType.getLoadedTypeInitializers());
            }
            hashMap.put(this.typeDescription, this.loadedTypeInitializer);
            return hashMap;
        }

        @Override // net.bytebuddy.dynamic.ClassFileLocator
        public ClassFileLocator.Resolution locate(String str) {
            if (this.typeDescription.getName().equals(str)) {
                return new ClassFileLocator.Resolution.Explicit(this.binaryRepresentation);
            }
            for (DynamicType dynamicType : this.auxiliaryTypes) {
                ClassFileLocator.Resolution locate = dynamicType.locate(str);
                if (locate.isResolved()) {
                    return locate;
                }
            }
            return new ClassFileLocator.Resolution.Illegal(str);
        }

        @Override // net.bytebuddy.dynamic.DynamicType
        public Map<TypeDescription, File> saveIn(File file) {
            HashMap hashMap = new HashMap();
            File file2 = new File(file, this.typeDescription.getName().replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, File.separatorChar) + ".class");
            if (file2.getParentFile() != null && !file2.getParentFile().isDirectory() && !file2.getParentFile().mkdirs()) {
                throw new IllegalArgumentException("Could not create directory: " + file2.getParentFile());
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                fileOutputStream.write(this.binaryRepresentation);
                fileOutputStream.close();
                hashMap.put(this.typeDescription, file2);
                for (DynamicType dynamicType : this.auxiliaryTypes) {
                    hashMap.putAll(dynamicType.saveIn(file));
                }
                return hashMap;
            } catch (Throwable th) {
                fileOutputStream.close();
                throw th;
            }
        }

        @SuppressFBWarnings(justification = "The array is not modified by class contract.", value = {"EI_EXPOSE_REP2"})
        public Default(TypeDescription typeDescription, byte[] bArr, LoadedTypeInitializer loadedTypeInitializer, List<? extends DynamicType> list) {
            this.typeDescription = typeDescription;
            this.binaryRepresentation = bArr;
            this.loadedTypeInitializer = loadedTypeInitializer;
            this.auxiliaryTypes = list;
        }

        @Override // net.bytebuddy.dynamic.DynamicType
        public boolean hasAliveLoadedTypeInitializers() {
            for (LoadedTypeInitializer loadedTypeInitializer : getLoadedTypeInitializers().values()) {
                if (loadedTypeInitializer.isAlive()) {
                    return true;
                }
            }
            return false;
        }

        @Override // net.bytebuddy.dynamic.DynamicType
        public File inject(File file) {
            FileSystem.getInstance().move(doInject(file, File.createTempFile(file.getName(), "tmp")), file);
            return file;
        }

        @Override // net.bytebuddy.dynamic.DynamicType
        public File toJar(File file, Manifest manifest) {
            if (!file.isFile() && !file.createNewFile()) {
                throw new IllegalArgumentException("Could not create file: " + file);
            }
            JarOutputStream jarOutputStream = new JarOutputStream(new FileOutputStream(file), manifest);
            try {
                for (Map.Entry<TypeDescription, byte[]> entry : getAuxiliaryTypes().entrySet()) {
                    jarOutputStream.putNextEntry(new JarEntry(entry.getKey().getInternalName() + ".class"));
                    jarOutputStream.write(entry.getValue());
                    jarOutputStream.closeEntry();
                }
                jarOutputStream.putNextEntry(new JarEntry(this.typeDescription.getInternalName() + ".class"));
                jarOutputStream.write(this.binaryRepresentation);
                jarOutputStream.closeEntry();
                return file;
            } finally {
                jarOutputStream.close();
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface Loaded<T> extends DynamicType {
        Map<TypeDescription, Class<?>> getAllLoaded();

        Class<? extends T> getLoaded();

        Map<TypeDescription, Class<?>> getLoadedAuxiliaryTypes();
    }

    /* loaded from: classes2.dex */
    public interface Unloaded<T> extends DynamicType {
        Unloaded<T> include(List<? extends DynamicType> list);

        Unloaded<T> include(DynamicType... dynamicTypeArr);

        Loaded<T> load(@MaybeNull ClassLoader classLoader);

        <S extends ClassLoader> Loaded<T> load(@MaybeNull S s, ClassLoadingStrategy<? super S> classLoadingStrategy);
    }

    Map<TypeDescription, byte[]> getAllTypes();

    Map<TypeDescription, byte[]> getAuxiliaryTypes();

    byte[] getBytes();

    Map<TypeDescription, LoadedTypeInitializer> getLoadedTypeInitializers();

    TypeDescription getTypeDescription();

    boolean hasAliveLoadedTypeInitializers();

    File inject(File file);

    File inject(File file, File file2);

    Map<TypeDescription, File> saveIn(File file);

    File toJar(File file);

    File toJar(File file, Manifest manifest);
}
