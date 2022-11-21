.class public Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable;
.super Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase$ForTypeVariable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForTypeVariable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable$WithIndex;
    }
.end annotation


# instance fields
.field private final pathMap:Ljava/util/Map;
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
.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;Ljava/util/Map;)V
    .locals 0
    .param p2    # Lnet/bytebuddy/jar/asm/TypePath;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/jar/asm/TypePath;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase$ForTypeVariable;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;)V

    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable;->pathMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getPathMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable;->pathMap:Ljava/util/Map;

    return-object v0
.end method
