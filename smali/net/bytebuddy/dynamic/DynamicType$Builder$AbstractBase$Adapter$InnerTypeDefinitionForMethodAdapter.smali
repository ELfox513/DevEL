.class public Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$InnerTypeDefinitionForMethodAdapter;
.super Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/DynamicType$Builder$InnerTypeDefinition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InnerTypeDefinitionForMethodAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator<",
        "TU;>;",
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$InnerTypeDefinition<",
        "TU;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$InnerTypeDefinitionForMethodAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    invoke-direct {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$InnerTypeDefinitionForMethodAdapter;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method


# virtual methods
.method public asAnonymousType()Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$InnerTypeDefinitionForMethodAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    move-object v1, v2

    iget-object v2, v2, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->instrumentedType:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    sget-object v3, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;->withDeclaringType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v2

    iget-object v3, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$InnerTypeDefinitionForMethodAdapter;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;->withEnclosingMethod(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;->withAnonymousClass(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v2

    iget-object v15, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$InnerTypeDefinitionForMethodAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v3, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->fieldRegistry:Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;

    iget-object v4, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->methodRegistry:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;

    iget-object v5, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->recordComponentRegistry:Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;

    iget-object v6, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    iget-object v7, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iget-object v8, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v9, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v10, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v11, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v12, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v13, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v14, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v0, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    move-object/from16 v19, v1

    move-object v1, v15

    move-object v15, v0

    iget-object v0, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    move-object/from16 v16, v0

    iget-object v0, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object/from16 v17, v0

    iget-object v0, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->auxiliaryTypes:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v1, v19

    invoke-virtual/range {v1 .. v18}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->materialize(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$InnerTypeDefinitionForMethodAdapter;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    check-cast p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$InnerTypeDefinitionForMethodAdapter;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$InnerTypeDefinitionForMethodAdapter;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$InnerTypeDefinitionForMethodAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$InnerTypeDefinitionForMethodAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$InnerTypeDefinitionForMethodAdapter;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$InnerTypeDefinitionForMethodAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    invoke-virtual {v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$InnerTypeDefinitionForMethodAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    move-object v1, v2

    iget-object v2, v2, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->instrumentedType:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    sget-object v3, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;->withDeclaringType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v2

    iget-object v3, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$InnerTypeDefinitionForMethodAdapter;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;->withEnclosingMethod(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;->withLocalClass(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v2

    iget-object v15, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$InnerTypeDefinitionForMethodAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v3, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->fieldRegistry:Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;

    iget-object v4, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->methodRegistry:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;

    iget-object v5, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->recordComponentRegistry:Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;

    iget-object v6, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    iget-object v7, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iget-object v8, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v9, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v10, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v11, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v12, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v13, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v14, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v0, v15, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    move-object/from16 v19, v1

    move-object v1, v15

    move-object v15, v0

    iget-object v0, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    move-object/from16 v16, v0

    iget-object v0, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object/from16 v17, v0

    iget-object v0, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->auxiliaryTypes:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v1, v19

    invoke-virtual/range {v1 .. v18}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->materialize(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    return-object v0
.end method
