.class public Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodToken"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final annotationTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/UnknownNull;
    .end annotation
.end field

.field private final descriptor:Ljava/lang/String;

.field private final exceptionName:[Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final exceptionTypeAnnotationTokens:Ljava/util/Map;
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

.field private final genericSignature:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/UnknownNull;
    .end annotation
.end field

.field private final modifiers:I

.field private final name:Ljava/lang/String;

.field private final parameterAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final parameterTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;",
            ">;"
        }
    .end annotation
.end field

.field private final parameterTypeAnnotationTokens:Ljava/util/Map;
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

.field private final receiverTypeAnnotationTokens:Ljava/util/Map;
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

.field private final returnTypeAnnotationTokens:Ljava/util/Map;
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

.field private final signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;

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

.field private final typeVariableBoundAnnotationTokens:Ljava/util/Map;
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
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;)V
    .locals 3
    .param p4    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p15    # Lnet/bytebuddy/description/annotation/AnnotationValue;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
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
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;",
            ">;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v1, -0x20001

    and-int/2addr v1, p2

    iput v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->modifiers:I

    move-object v1, p1

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->name:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->descriptor:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->genericSignature:Ljava/lang/String;

    sget-boolean v2, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->RAW_TYPES:Z

    if-eqz v2, :cond_0

    sget-object v1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$Raw;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$Raw;

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;->extract(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;

    move-object v1, p5

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->exceptionName:[Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->typeVariableAnnotationTokens:Ljava/util/Map;

    move-object v1, p7

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->typeVariableBoundAnnotationTokens:Ljava/util/Map;

    move-object v1, p8

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->returnTypeAnnotationTokens:Ljava/util/Map;

    move-object v1, p9

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->parameterTypeAnnotationTokens:Ljava/util/Map;

    move-object v1, p10

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->exceptionTypeAnnotationTokens:Ljava/util/Map;

    move-object v1, p11

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->receiverTypeAnnotationTokens:Ljava/util/Map;

    move-object v1, p12

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->annotationTokens:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->parameterAnnotationTokens:Ljava/util/Map;

    move-object/from16 v1, p14

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->parameterTokens:Ljava/util/List;

    move-object/from16 v1, p15

    iput-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    return-void
.end method

.method public static synthetic a(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 0

    invoke-direct {p0, p1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->toMethodDescription(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p0

    return-object p0
.end method

.method private toMethodDescription(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    new-instance v20, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    move-object/from16 v1, v20

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->name:Ljava/lang/String;

    iget v4, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->modifiers:I

    iget-object v5, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->descriptor:Ljava/lang/String;

    iget-object v6, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->genericSignature:Ljava/lang/String;

    iget-object v7, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;

    iget-object v8, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->exceptionName:[Ljava/lang/String;

    iget-object v9, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->typeVariableAnnotationTokens:Ljava/util/Map;

    iget-object v10, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->typeVariableBoundAnnotationTokens:Ljava/util/Map;

    iget-object v11, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->returnTypeAnnotationTokens:Ljava/util/Map;

    iget-object v12, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->parameterTypeAnnotationTokens:Ljava/util/Map;

    iget-object v13, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->exceptionTypeAnnotationTokens:Ljava/util/Map;

    iget-object v14, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->receiverTypeAnnotationTokens:Ljava/util/Map;

    iget-object v15, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->annotationTokens:Ljava/util/List;

    move-object/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->parameterAnnotationTokens:Ljava/util/Map;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->parameterTokens:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-object/from16 v18, v1

    const/16 v19, 0x0

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/pool/TypePool$1;)V

    return-object v20
.end method


# virtual methods
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
    iget v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->modifiers:I

    check-cast p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;

    iget v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->modifiers:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->name:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->descriptor:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->descriptor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->genericSignature:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->genericSignature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->exceptionName:[Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->exceptionName:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->typeVariableAnnotationTokens:Ljava/util/Map;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->typeVariableAnnotationTokens:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->typeVariableBoundAnnotationTokens:Ljava/util/Map;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->typeVariableBoundAnnotationTokens:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    :cond_a
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->returnTypeAnnotationTokens:Ljava/util/Map;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->returnTypeAnnotationTokens:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    :cond_b
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->parameterTypeAnnotationTokens:Ljava/util/Map;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->parameterTypeAnnotationTokens:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    :cond_c
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->exceptionTypeAnnotationTokens:Ljava/util/Map;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->exceptionTypeAnnotationTokens:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    :cond_d
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->receiverTypeAnnotationTokens:Ljava/util/Map;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->receiverTypeAnnotationTokens:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    :cond_e
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->annotationTokens:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->annotationTokens:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    :cond_f
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->parameterAnnotationTokens:Ljava/util/Map;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->parameterAnnotationTokens:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    :cond_10
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->parameterTokens:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->parameterTokens:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    :cond_11
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->modifiers:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->descriptor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->genericSignature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->exceptionName:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->typeVariableAnnotationTokens:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->typeVariableBoundAnnotationTokens:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->returnTypeAnnotationTokens:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->parameterTypeAnnotationTokens:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->exceptionTypeAnnotationTokens:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->receiverTypeAnnotationTokens:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->annotationTokens:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->parameterAnnotationTokens:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->parameterTokens:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
