.class public Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldToken"
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

.field private final descriptor:Ljava/lang/String;

.field private final genericSignature:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/UnknownNull;
    .end annotation
.end field

.field private final modifiers:I

.field private final name:Ljava/lang/String;

.field private final signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForField;

.field private final typeAnnotationTokens:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .param p4    # Ljava/lang/String;
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x20001

    and-int/2addr p2, v0

    iput p2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->modifiers:I

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->name:Ljava/lang/String;

    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->descriptor:Ljava/lang/String;

    iput-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->genericSignature:Ljava/lang/String;

    sget-boolean p1, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->RAW_TYPES:Z

    if-eqz p1, :cond_0

    sget-object p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$Raw;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$Raw;

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfField;->extract(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForField;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForField;

    iput-object p5, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->typeAnnotationTokens:Ljava/util/Map;

    iput-object p6, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->annotationTokens:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyFieldDescription;
    .locals 0

    invoke-direct {p0, p1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->toFieldDescription(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyFieldDescription;

    move-result-object p0

    return-object p0
.end method

.method private toFieldDescription(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyFieldDescription;
    .locals 11

    new-instance v10, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyFieldDescription;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->name:Ljava/lang/String;

    iget v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->modifiers:I

    iget-object v4, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->descriptor:Ljava/lang/String;

    iget-object v5, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->genericSignature:Ljava/lang/String;

    iget-object v6, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForField;

    iget-object v7, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->typeAnnotationTokens:Ljava/util/Map;

    iget-object v8, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->annotationTokens:Ljava/util/List;

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyFieldDescription;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForField;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/pool/TypePool$1;)V

    return-object v10
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
    iget v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->modifiers:I

    check-cast p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;

    iget v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->modifiers:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->name:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->descriptor:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->descriptor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->genericSignature:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->genericSignature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForField;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForField;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->typeAnnotationTokens:Ljava/util/Map;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->typeAnnotationTokens:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->annotationTokens:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->annotationTokens:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->modifiers:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->descriptor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->genericSignature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForField;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->typeAnnotationTokens:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;->annotationTokens:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
