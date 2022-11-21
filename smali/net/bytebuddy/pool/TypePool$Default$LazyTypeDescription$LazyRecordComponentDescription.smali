.class Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;
.super Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LazyRecordComponentDescription"
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

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
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForRecordComponent;

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
.method private constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForRecordComponent;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForRecordComponent;",
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

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    invoke-direct {p0}, Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape$AbstractBase;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;->name:Ljava/lang/String;

    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;->descriptor:Ljava/lang/String;

    iput-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;->genericSignature:Ljava/lang/String;

    iput-object p5, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForRecordComponent;

    iput-object p6, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;->typeAnnotationTokens:Ljava/util/Map;

    iput-object p7, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;->annotationTokens:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForRecordComponent;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/pool/TypePool$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForRecordComponent;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getActualName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->g(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;->annotationTokens:Ljava/util/List;

    invoke-static {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription;->asList(Lnet/bytebuddy/pool/TypePool;Ljava/util/List;)Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    return-object v0
.end method

.method public getGenericSignature()Ljava/lang/String;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;->genericSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;->signatureResolution:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForRecordComponent;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;->descriptor:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    invoke-static {v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->g(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyRecordComponentDescription;->typeAnnotationTokens:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3, p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForRecordComponent;->resolveRecordType(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool;Ljava/util/Map;Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method
