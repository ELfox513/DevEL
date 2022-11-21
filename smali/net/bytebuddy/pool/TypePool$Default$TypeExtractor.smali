.class public Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypeExtractor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;,
        Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;,
        Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;,
        Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;
    }
.end annotation


# static fields
.field private static final REAL_MODIFIER_MASK:I = 0xffff

.field private static final SUPER_CLASS_INDEX:I = -0x1


# instance fields
.field public final synthetic a:Lnet/bytebuddy/pool/TypePool$Default;

.field private actualModifiers:I

.field private final annotationTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;"
        }
    .end annotation
.end field

.field private anonymousType:Z

.field private classFileVersion:Lnet/bytebuddy/ClassFileVersion;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final declaredTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private declaringTypeName:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final fieldTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;",
            ">;"
        }
    .end annotation
.end field

.field private genericSignature:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private interfaceName:[Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private internalName:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final methodTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;",
            ">;"
        }
    .end annotation
.end field

.field private modifiers:I

.field private nestHost:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final nestMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final permittedSubclasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final recordComponentTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$RecordComponentToken;",
            ">;"
        }
    .end annotation
.end field

.field private superClassName:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final superTypeAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

.field private final typeVariableAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final typeVariableBoundsAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$Default;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default;

    sget p1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->superTypeAnnotationTokens:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeVariableAnnotationTokens:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeVariableBoundsAnnotationTokens:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->annotationTokens:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->fieldTokens:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->methodTokens:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->recordComponentTokens:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->anonymousType:Z

    sget-object p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$SelfContained;

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->nestMembers:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->declaredTypes:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->permittedSubclasses:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->fieldTokens:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->methodTokens:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic c(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->recordComponentTokens:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public toTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->internalName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->superTypeAnnotationTokens:Ljava/util/Map;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v26, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    iget-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default;

    iget v4, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->actualModifiers:I

    iget v5, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->modifiers:I

    iget-object v6, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->internalName:Ljava/lang/String;

    iget-object v7, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->superClassName:Ljava/lang/String;

    iget-object v8, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->interfaceName:[Ljava/lang/String;

    iget-object v9, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->genericSignature:Ljava/lang/String;

    iget-object v10, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    iget-object v11, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->declaringTypeName:Ljava/lang/String;

    iget-object v12, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->declaredTypes:Ljava/util/List;

    iget-boolean v13, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->anonymousType:Z

    iget-object v14, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->nestHost:Ljava/lang/String;

    iget-object v15, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->nestMembers:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    :cond_0
    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->superTypeAnnotationTokens:Ljava/util/Map;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeVariableAnnotationTokens:Ljava/util/Map;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeVariableBoundsAnnotationTokens:Ljava/util/Map;

    move-object/from16 v19, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->annotationTokens:Ljava/util/List;

    move-object/from16 v20, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->fieldTokens:Ljava/util/List;

    move-object/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->methodTokens:Ljava/util/List;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->recordComponentTokens:Ljava/util/List;

    move-object/from16 v23, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v24, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    move-object/from16 v25, v1

    move-object/from16 v2, v26

    invoke-direct/range {v2 .. v25}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;-><init>(Lnet/bytebuddy/pool/TypePool;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/ClassFileVersion;)V

    return-object v26

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Internal name or class file version were not set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "The array is not modified by class contract."
        value = {
            "EI_EXPOSE_REP2"
        }
    .end annotation

    const v0, 0xffff

    and-int/2addr v0, p2

    iput v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->modifiers:I

    iput p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->actualModifiers:I

    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->internalName:Ljava/lang/String;

    iput-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->genericSignature:Ljava/lang/String;

    iput-object p5, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->superClassName:Ljava/lang/String;

    iput-object p6, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->interfaceName:[Ljava/lang/String;

    invoke-static {p1}, Lnet/bytebuddy/ClassFileVersion;->ofMinorMajor(I)Lnet/bytebuddy/ClassFileVersion;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 3

    new-instance p2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->annotationTokens:Ljava/util/List;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {v1, v2, p1}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1, v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Ljava/lang/String;Ljava/util/List;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object p2
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 6
    .param p4    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    new-instance p5, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;

    const v0, 0xffff

    and-int v2, p1, v0

    move-object v0, p5

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p5
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->internalName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->declaringTypeName:Ljava/lang/String;

    iget-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    invoke-interface {p1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;->isSelfContained()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    :cond_0
    if-nez p3, :cond_1

    iget-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    invoke-interface {p1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;->isSelfContained()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->anonymousType:Z

    :cond_1
    const p1, 0xffff

    and-int/2addr p1, p4

    iput p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->modifiers:I

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->internalName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->declaredTypes:Ljava/util/List;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "L"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 8
    .param p4    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    const-string v0, "<clinit>"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/bytebuddy/pool/TypePool$Default;->a()Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v7, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;

    const v0, 0xffff

    and-int v2, p1, v0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$MethodExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move-object p1, v7

    :goto_0
    return-object p1
.end method

.method public visitNestHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->nestHost:Ljava/lang/String;

    return-void
.end method

.method public visitNestMember(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->nestMembers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    const-string v0, "<clinit>"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;

    invoke-direct {v0, p1, p2, p3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance p2, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    :cond_1
    :goto_0
    return-void
.end method

.method public visitPermittedSubclass(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->permittedSubclasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$RecordComponentExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 7
    .param p2    # Lnet/bytebuddy/jar/asm/TypePath;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    new-instance p4, Lnet/bytebuddy/jar/asm/TypeReference;

    invoke-direct {p4, p1}, Lnet/bytebuddy/jar/asm/TypeReference;-><init>(I)V

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getSort()I

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex$DoubleIndexed;

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getTypeParameterBoundIndex()I

    move-result v4

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getTypeParameterIndex()I

    move-result v5

    iget-object v6, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeVariableBoundsAnnotationTokens:Ljava/util/Map;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex$DoubleIndexed;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;IILjava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected type reference: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getSort()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getSuperTypeIndex()I

    move-result p4

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->superTypeAnnotationTokens:Ljava/util/Map;

    invoke-direct {p1, p3, p2, p4, v0}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;ILjava/util/Map;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getTypeParameterIndex()I

    move-result p4

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->typeVariableAnnotationTokens:Ljava/util/Map;

    invoke-direct {p1, p3, p2, p4, v0}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;ILjava/util/Map;)V

    :goto_0
    new-instance p2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    new-instance p4, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {p4, v0, p3}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1, p4}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object p2
.end method
