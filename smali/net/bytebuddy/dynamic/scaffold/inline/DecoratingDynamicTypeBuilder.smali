.class public Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;
.super Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

.field private final annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

.field private final asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

.field private final auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

.field private final auxiliaryTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;"
        }
    .end annotation
.end field

.field private final classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

.field private final classFileVersion:Lnet/bytebuddy/ClassFileVersion;

.field private final classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

.field private final ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

.field private final typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

.field private final typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/ClassFileLocator;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/ClassFileVersion;",
            "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationRetention;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
            "Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")V"
        }
    .end annotation

    invoke-virtual/range {p5 .. p5}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType$Differentiating;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType$Differentiating;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    sget-object v0, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;->INSTANCE:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;

    :goto_0
    move-object v3, v0

    sget-object v4, Lnet/bytebuddy/asm/AsmVisitorWrapper$NoOp;->INSTANCE:Lnet/bytebuddy/asm/AsmVisitorWrapper$NoOp;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v15, p11

    invoke-direct/range {v1 .. v15}, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;Lnet/bytebuddy/dynamic/ClassFileLocator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;",
            "Lnet/bytebuddy/ClassFileVersion;",
            "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationRetention;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
            "Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iput-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iput-object p5, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iput-object p6, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iput-object p7, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iput-object p8, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iput-object p9, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iput-object p10, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iput-object p11, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iput-object p12, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    iput-object p13, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->auxiliaryTypes:Ljava/util/List;

    iput-object p14, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    return-void
.end method


# virtual methods
.method public annotateType(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$Explicit;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$Explicit;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->attribute(Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public attribute(Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v16, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    new-instance v3, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const/4 v4, 0x1

    aput-object p1, v1, v4

    invoke-direct {v3, v1}, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$Compound;-><init>([Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;)V

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->auxiliaryTypes:Ljava/util/List;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    return-object v16
.end method

.method public declaredTypes(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot change type declaration of decorated type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public defineConstructor(I)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot define constructor for decorated type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public defineField(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDefinition;I)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "I)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot define field for decorated type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public defineMethod(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDefinition;I)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "I)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot define method for decorated type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot define record component for decorated type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/ClassFileVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    :cond_a
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    :cond_b
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    :cond_c
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    :cond_d
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    :cond_e
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->auxiliaryTypes:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->auxiliaryTypes:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    :cond_f
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v1

    :cond_10
    return v0
.end method

.method public field(Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Valuable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Valuable<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot change field for decorated type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v1}, Lnet/bytebuddy/ClassFileVersion;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->auxiliaryTypes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public ignoreAlso(Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v16, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    new-instance v13, Lnet/bytebuddy/matcher/LatentMatcher$Disjunction;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/matcher/LatentMatcher;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    const/4 v15, 0x0

    aput-object v14, v1, v15

    const/4 v14, 0x1

    aput-object p1, v1, v14

    invoke-direct {v13, v1}, Lnet/bytebuddy/matcher/LatentMatcher$Disjunction;-><init>([Lnet/bytebuddy/matcher/LatentMatcher;)V

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->auxiliaryTypes:Ljava/util/List;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    return-object v16
.end method

.method public implement(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot implement interface for decorated type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initializer(Lnet/bytebuddy/implementation/LoadedTypeInitializer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/LoadedTypeInitializer;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot add initializer of decorated type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initializer(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot add initializer of decorated type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public innerTypeOf(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/DynamicType$Builder$InnerTypeDefinition$ForType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$InnerTypeDefinition$ForType<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot change type declaration of decorated type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public innerTypeOf(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/dynamic/DynamicType$Builder$InnerTypeDefinition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$InnerTypeDefinition<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot change type declaration of decorated type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public invokable(Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot intercept method for decorated type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/TypeResolutionStrategy;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/pool/TypePool$Empty;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Empty;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object p1

    return-object p1
.end method

.method public make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/TypeResolutionStrategy;",
            "Lnet/bytebuddy/pool/TypePool;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
            "TT;>;"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->auxiliaryTypes:Ljava/util/List;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-interface {v4, v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->compile(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph;->listNodes()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;

    move-result-object v4

    invoke-virtual {v4}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;->asMethodList()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v4

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v5, v6}, Lnet/bytebuddy/matcher/LatentMatcher;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object v5

    invoke-static {v5}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    invoke-interface {v4, v5}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v4

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v5

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isVirtual()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-static {v6}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-interface {v5, v6}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-object/from16 v13, p2

    invoke-static/range {v1 .. v14}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->forDecoration(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/dynamic/TypeResolutionStrategy;->resolve()Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter;->make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v1

    return-object v1
.end method

.method public merge(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot change modifiers of decorated type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public modifiers(I)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot change modifiers of decorated type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot change name of decorated type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nestHost(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot change type declaration of decorated type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nestMembers(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot change type declaration of decorated type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public permittedSubclass(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot change permitted subclasses of decorated type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public recordComponent(Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/RecordComponentDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$RecordComponentDefinition<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot change record component for decorated type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public require(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v16, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->auxiliaryTypes:Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v15, p1

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v14}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    return-object v16
.end method

.method public suffix(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot change name of decorated type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public topLevelType()Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot change type declaration of decorated type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot transform decorated type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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
            "TT;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot add type variable to decorated type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsealed()Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot unseal decorated type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visit(Lnet/bytebuddy/asm/AsmVisitorWrapper;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v16, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    new-instance v4, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    const/4 v6, 0x0

    aput-object v5, v1, v6

    const/4 v5, 0x1

    aput-object p1, v1, v5

    invoke-direct {v4, v1}, Lnet/bytebuddy/asm/AsmVisitorWrapper$Compound;-><init>([Lnet/bytebuddy/asm/AsmVisitorWrapper;)V

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->auxiliaryTypes:Ljava/util/List;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    return-object v16
.end method
