.class public Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;
.super Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordComponentMatchAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional$AbstractBase<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

.field private final matcher:Lnet/bytebuddy/matcher/LatentMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/RecordComponentDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final recordComponentAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;

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
.method public constructor <init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;Lnet/bytebuddy/matcher/LatentMatcher;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/RecordComponentDescription;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$NoOp;

    invoke-static {}, Lnet/bytebuddy/dynamic/Transformer$NoOp;->make()Lnet/bytebuddy/dynamic/Transformer;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;-><init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/RecordComponentDescription;",
            ">;",
            "Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/type/RecordComponentDescription;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    invoke-direct {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional$AbstractBase;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;->matcher:Lnet/bytebuddy/matcher/LatentMatcher;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;->recordComponentAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;

    iput-object p4, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    return-void
.end method


# virtual methods
.method public annotateRecordComponent(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional;
    .locals 2
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

    new-instance v0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Explicit;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Explicit;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;->attribute(Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;)Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional;

    move-result-object p1

    return-object p1
.end method

.method public attribute(Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;)Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition$Optional<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;->matcher:Lnet/bytebuddy/matcher/LatentMatcher;

    new-instance v3, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory$Compound;

    const/4 v4, 0x2

    new-array v4, v4, [Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;

    iget-object v5, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;->recordComponentAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-direct {v3, v4}, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory$Compound;-><init>([Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;)V

    iget-object p1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;-><init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)V

    return-object v0
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

    iget-object v5, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    move-object v1, v5

    iget-object v2, v5, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->instrumentedType:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    iget-object v3, v5, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->fieldRegistry:Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;

    iget-object v4, v5, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->methodRegistry:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;

    iget-object v5, v5, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->recordComponentRegistry:Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;->matcher:Lnet/bytebuddy/matcher/LatentMatcher;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;->recordComponentAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-interface {v5, v6, v7, v8}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;->prepend(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;

    move-result-object v5

    iget-object v15, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

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
    .locals 8
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

    new-instance v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;->matcher:Lnet/bytebuddy/matcher/LatentMatcher;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;->recordComponentAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;

    new-instance v4, Lnet/bytebuddy/dynamic/Transformer$Compound;

    const/4 v5, 0x2

    new-array v5, v5, [Lnet/bytebuddy/dynamic/Transformer;

    iget-object v6, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v4, v5}, Lnet/bytebuddy/dynamic/Transformer$Compound;-><init>([Lnet/bytebuddy/dynamic/Transformer;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$RecordComponentMatchAdapter;-><init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)V

    return-object v0
.end method
