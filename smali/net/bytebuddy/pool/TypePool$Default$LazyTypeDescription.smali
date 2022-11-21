.class public Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;
.super Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyTypeDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyFieldDescription;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TokenizedGenericType;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyNestMemberList;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyTypeList;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyPackageDescription;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$RecordComponentToken;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$RecordComponentTokenList;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodTokenList;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldTokenList;
    }
.end annotation


# static fields
.field private static final NO_TYPE:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field


# instance fields
.field private final actualModifiers:I

.field private final annotationTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;"
        }
    .end annotation
.end field

.field private final anonymousType:Z

.field private final classFileVersion:Lnet/bytebuddy/ClassFileVersion;

.field private final declaredTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final declaringTypeName:Ljava/lang/String;
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

.field private final genericSignature:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final interfaceAnnotationTokens:Ljava/util/Map;
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

.field private final interfaceTypeDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
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

.field private final modifiers:I

.field private final name:Ljava/lang/String;

.field private final nestHost:Ljava/lang/String;
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

.field private final signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;

.field private final superClassAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final superClassDescriptor:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

.field private final typePool:Lnet/bytebuddy/pool/TypePool;

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
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/pool/TypePool;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/ClassFileVersion;)V
    .locals 7
    .param p5    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/pool/TypePool;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;>;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;",
            ">;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;",
            ">;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$RecordComponentToken;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/bytebuddy/ClassFileVersion;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p6

    move-object/from16 v2, p9

    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;-><init>()V

    move-object v3, p1

    iput-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    and-int/lit8 v3, p2, -0x21

    iput v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->actualModifiers:I

    const v3, -0x20021

    and-int/2addr v3, p3

    iput v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->modifiers:I

    invoke-static {p4}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->name:Ljava/lang/String;

    if-nez p5, :cond_0

    sget-object v3, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->NO_TYPE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p5}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->superClassDescriptor:Ljava/lang/String;

    move-object v3, p7

    iput-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->genericSignature:Ljava/lang/String;

    sget-boolean v4, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->RAW_TYPES:Z

    if-eqz v4, :cond_1

    sget-object v3, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$Raw;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$Raw;

    goto :goto_1

    :cond_1
    invoke-static {p7}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfType;->extract(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;

    move-result-object v3

    :goto_1
    iput-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;

    if-nez v1, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->interfaceTypeDescriptors:Ljava/util/List;

    :cond_2
    move-object v1, p8

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->interfaceTypeDescriptors:Ljava/util/List;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    iget-object v6, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->interfaceTypeDescriptors:Ljava/util/List;

    invoke-static {v5}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v5

    invoke-virtual {v5}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :goto_3
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    if-nez v2, :cond_4

    sget-object v1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->NO_TYPE:Ljava/lang/String;

    goto :goto_4

    :cond_4
    const/16 v1, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->declaringTypeName:Ljava/lang/String;

    move-object/from16 v1, p10

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->declaredTypes:Ljava/util/List;

    move/from16 v1, p11

    iput-boolean v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->anonymousType:Z

    if-nez p12, :cond_5

    sget-object v1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->NO_TYPE:Ljava/lang/String;

    goto :goto_5

    :cond_5
    invoke-static/range {p12 .. p12}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v1

    :goto_5
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->nestHost:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface/range {p13 .. p13}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->nestMembers:Ljava/util/List;

    invoke-interface/range {p13 .. p13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->nestMembers:Ljava/util/List;

    invoke-static {v2}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    move-object/from16 v2, p14

    iput-object v2, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->superClassAnnotationTokens:Ljava/util/Map;

    move-object/from16 v1, p15

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->interfaceAnnotationTokens:Ljava/util/Map;

    move-object/from16 v1, p16

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeVariableAnnotationTokens:Ljava/util/Map;

    move-object/from16 v1, p17

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeVariableBoundsAnnotationTokens:Ljava/util/Map;

    move-object/from16 v1, p18

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->annotationTokens:Ljava/util/List;

    move-object/from16 v1, p19

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->fieldTokens:Ljava/util/List;

    move-object/from16 v1, p20

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->methodTokens:Ljava/util/List;

    move-object/from16 v1, p21

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->recordComponentTokens:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface/range {p22 .. p22}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->permittedSubclasses:Ljava/util/List;

    invoke-interface/range {p22 .. p22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->permittedSubclasses:Ljava/util/List;

    invoke-static {v2}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    move-object/from16 v2, p23

    iput-object v2, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    return-void
.end method

.method public static synthetic d(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->methodTokens:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic e(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->recordComponentTokens:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic g(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Lnet/bytebuddy/pool/TypePool;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    return-object p0
.end method

.method public static synthetic i(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->fieldTokens:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getActualModifiers(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->actualModifiers:I

    or-int/lit8 p1, p1, 0x20

    goto :goto_0

    :cond_0
    iget p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->actualModifiers:I

    :goto_0
    return p1
.end method

.method public getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->annotationTokens:Ljava/util/List;

    invoke-static {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription;->asList(Lnet/bytebuddy/pool/TypePool;Ljava/util/List;)Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldTokenList;

    invoke-direct {v0, p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldTokenList;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)V

    return-object v0
.end method

.method public getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/MethodList<",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodTokenList;

    invoke-direct {v0, p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodTokenList;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)V

    return-object v0
.end method

.method public getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 3

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyTypeList;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->declaredTypes:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyTypeList;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->declaringTypeName:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-interface {v1, v0}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 2
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-interface {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;->getEnclosingMethod(Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-interface {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;->getEnclosingType(Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature()Ljava/lang/String;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->genericSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->interfaceTypeDescriptors:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->interfaceAnnotationTokens:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3, p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;->resolveInterfaceTypes(Ljava/util/List;Lnet/bytebuddy/pool/TypePool;Ljava/util/Map;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->modifiers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNestHost()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->nestHost:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-interface {v1, v0}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNestMembers()Lnet/bytebuddy/description/type/TypeList;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->nestHost:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyNestMemberList;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->nestMembers:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyNestMemberList;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/pool/TypePool;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-interface {v1, v0}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getNestMembers()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPackage()Lnet/bytebuddy/description/type/PackageDescription;
    .locals 5
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyPackageDescription;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {v2, v3, v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyPackageDescription;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$1;)V

    return-object v2
.end method

.method public getPermittedSubtypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 3

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyTypeList;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->permittedSubclasses:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyTypeList;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/util/List;)V

    return-object v0
.end method

.method public getRecordComponents()Lnet/bytebuddy/description/type/RecordComponentList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/type/RecordComponentList<",
            "Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$RecordComponentTokenList;

    invoke-direct {v0, p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$RecordComponentTokenList;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)V

    return-object v0
.end method

.method public getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 4
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->superClassDescriptor:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->superClassDescriptor:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->superClassAnnotationTokens:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3, p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;->resolveSuperClass(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool;Ljava/util/Map;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_1
    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForType;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeVariableAnnotationTokens:Ljava/util/Map;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeVariableBoundsAnnotationTokens:Ljava/util/Map;

    invoke-interface {v0, v1, p0, v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution;->resolveTypeVariables(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/TypeVariableSource;Ljava/util/Map;Ljava/util/Map;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public isAnonymousType()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->anonymousType:Z

    return v0
.end method

.method public isLocalType()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->anonymousType:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->typeContainment:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;->isLocalType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecord()Z
    .locals 2

    iget v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->actualModifiers:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/utility/JavaType;->RECORD:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->superClassDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSealed()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->permittedSubclasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
