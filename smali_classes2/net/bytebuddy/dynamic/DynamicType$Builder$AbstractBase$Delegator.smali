.class public abstract Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;
.super Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Delegator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase<",
        "TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public annotateType(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->annotateType(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public attribute(Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->attribute(Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public declaredTypes(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->declaredTypes(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public define(Lnet/bytebuddy/description/type/RecordComponentDescription;)Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/RecordComponentDescription;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->define(Lnet/bytebuddy/description/type/RecordComponentDescription;)Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional;

    move-result-object p1

    return-object p1
.end method

.method public defineConstructor(I)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineConstructor(I)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object p1

    return-object p1
.end method

.method public defineField(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDefinition;I)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "I)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineField(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDefinition;I)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;

    move-result-object p1

    return-object p1
.end method

.method public defineMethod(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDefinition;I)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "I)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineMethod(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDefinition;I)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object p1

    return-object p1
.end method

.method public defineRecordComponent(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineRecordComponent(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional;

    move-result-object p1

    return-object p1
.end method

.method public field(Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Valuable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Valuable<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->field(Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Valuable;

    move-result-object p1

    return-object p1
.end method

.method public ignoreAlso(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->ignoreAlso(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public ignoreAlso(Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->ignoreAlso(Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public implement(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->implement(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object p1

    return-object p1
.end method

.method public initializer(Lnet/bytebuddy/implementation/LoadedTypeInitializer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/LoadedTypeInitializer;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->initializer(Lnet/bytebuddy/implementation/LoadedTypeInitializer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public initializer(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->initializer(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public innerTypeOf(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/DynamicType$Builder$InnerTypeDefinition$ForType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$InnerTypeDefinition$ForType<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->innerTypeOf(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/DynamicType$Builder$InnerTypeDefinition$ForType;

    move-result-object p1

    return-object p1
.end method

.method public innerTypeOf(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/dynamic/DynamicType$Builder$InnerTypeDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$InnerTypeDefinition<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->innerTypeOf(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/dynamic/DynamicType$Builder$InnerTypeDefinition;

    move-result-object p1

    return-object p1
.end method

.method public invokable(Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->invokable(Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object p1

    return-object p1
.end method

.method public make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v0

    return-object v0
.end method

.method public make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/TypeResolutionStrategy;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object p1

    return-object p1
.end method

.method public make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/TypeResolutionStrategy;",
            "Lnet/bytebuddy/pool/TypePool;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object p1

    return-object p1
.end method

.method public make(Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/pool/TypePool;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make(Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object p1

    return-object p1
.end method

.method public abstract materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation
.end method

.method public merge(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->merge(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public modifiers(I)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->modifiers(I)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public nestHost(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->nestHost(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public nestMembers(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->nestMembers(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public permittedSubclass(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->permittedSubclass(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public recordComponent(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/RecordComponentDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->recordComponent(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition;

    move-result-object p1

    return-object p1
.end method

.method public recordComponent(Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/RecordComponentDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->recordComponent(Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition;

    move-result-object p1

    return-object p1
.end method

.method public require(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->require(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public suffix(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->suffix(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public toTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->toTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public topLevelType()Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->topLevelType()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->transform(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public typeVariable(Ljava/lang/String;Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->typeVariable(Ljava/lang/String;Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$TypeVariableDefinition;

    move-result-object p1

    return-object p1
.end method

.method public unsealed()Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->unsealed()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lnet/bytebuddy/asm/AsmVisitorWrapper;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;->materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->visit(Lnet/bytebuddy/asm/AsmVisitorWrapper;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method
