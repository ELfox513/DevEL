.class public abstract Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase$ForTypeVariable$WithIndex$DoubleIndexed;
.super Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase$ForTypeVariable$WithIndex;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase$ForTypeVariable$WithIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DoubleIndexed"
.end annotation


# instance fields
.field private final preIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;II)V
    .locals 0
    .param p2    # Lnet/bytebuddy/jar/asm/TypePath;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase$ForTypeVariable$WithIndex;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;I)V

    iput p4, p0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase$ForTypeVariable$WithIndex$DoubleIndexed;->preIndex:I

    return-void
.end method


# virtual methods
.method public abstract getDoubleIndexedPathMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
.end method

.method public getIndexedPathMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase$ForTypeVariable$WithIndex$DoubleIndexed;->getDoubleIndexedPathMap()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase$ForTypeVariable$WithIndex$DoubleIndexed;->preIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v2, p0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase$ForTypeVariable$WithIndex$DoubleIndexed;->preIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method
