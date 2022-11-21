.class public Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement$WithIndex;
.super Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithIndex"
.end annotation


# instance fields
.field private final annotationTokens:Ljava/util/Map;
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

.field private final index:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement$WithIndex;->index:I

    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement$WithIndex;->annotationTokens:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getTokens()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement$WithIndex;->annotationTokens:Ljava/util/Map;

    iget v1, p0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement$WithIndex;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement$WithIndex;->annotationTokens:Ljava/util/Map;

    iget v2, p0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement$WithIndex;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
