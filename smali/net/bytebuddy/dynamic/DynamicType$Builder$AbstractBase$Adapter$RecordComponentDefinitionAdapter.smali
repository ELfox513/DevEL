.class public Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;
.super Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordComponentDefinitionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional$AbstractBase<",
        "TU;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

.field private final recordComponentAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;

.field private final token:Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

.field private final transformer:Lnet/bytebuddy/dynamic/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/type/RecordComponentDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;Lnet/bytebuddy/description/type/RecordComponentDescription$Token;)V
    .locals 2

    sget-object v0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;->INSTANCE:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;

    invoke-static {}, Lnet/bytebuddy/dynamic/Transformer$NoOp;->make()Lnet/bytebuddy/dynamic/Transformer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;-><init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;Lnet/bytebuddy/description/type/RecordComponentDescription$Token;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;Lnet/bytebuddy/description/type/RecordComponentDescription$Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/type/RecordComponentDescription;",
            ">;",
            "Lnet/bytebuddy/description/type/RecordComponentDescription$Token;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    invoke-direct {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional$AbstractBase;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->recordComponentAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    iput-object p4, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->token:Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    return-void
.end method


# virtual methods
.method public annotateRecordComponent(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->recordComponentAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    new-instance v4, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    iget-object v5, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->token:Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    invoke-virtual {v5}, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->token:Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    invoke-virtual {v6}, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->token:Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    invoke-virtual {v7}, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v7, v8}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v4, v5, v6, p1}, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;-><init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;Lnet/bytebuddy/description/type/RecordComponentDescription$Token;)V

    return-object v0
.end method

.method public attribute(Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;)Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    new-instance v2, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory$Compound;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->recordComponentAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory$Compound;-><init>([Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;)V

    iget-object p1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->token:Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    invoke-direct {v0, v1, v2, p1, v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;-><init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;Lnet/bytebuddy/description/type/RecordComponentDescription$Token;)V

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->recordComponentAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;

    check-cast p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->recordComponentAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->token:Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->token:Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->recordComponentAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->token:Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

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

    iget-object v2, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    move-object v1, v2

    iget-object v2, v2, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->instrumentedType:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    iget-object v3, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->token:Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;->withRecordComponent(Lnet/bytebuddy/description/type/RecordComponentDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v2

    iget-object v5, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v3, v5, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->fieldRegistry:Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;

    iget-object v4, v5, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->methodRegistry:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;

    iget-object v5, v5, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->recordComponentRegistry:Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;

    new-instance v6, Lnet/bytebuddy/matcher/LatentMatcher$ForRecordComponentToken;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->token:Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    invoke-direct {v6, v7}, Lnet/bytebuddy/matcher/LatentMatcher$ForRecordComponentToken;-><init>(Lnet/bytebuddy/description/type/RecordComponentDescription$Token;)V

    iget-object v7, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->recordComponentAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-interface {v5, v6, v7, v8}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;->prepend(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;

    move-result-object v5

    iget-object v15, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

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

.method public transform(Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/type/RecordComponentDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->recordComponentAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;

    new-instance v3, Lnet/bytebuddy/dynamic/Transformer$Compound;

    const/4 v4, 0x2

    new-array v4, v4, [Lnet/bytebuddy/dynamic/Transformer;

    iget-object v5, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-direct {v3, v4}, Lnet/bytebuddy/dynamic/Transformer$Compound;-><init>([Lnet/bytebuddy/dynamic/Transformer;)V

    iget-object p1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;->token:Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentDefinitionAdapter;-><init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;Lnet/bytebuddy/description/type/RecordComponentDescription$Token;)V

    return-object v0
.end method
