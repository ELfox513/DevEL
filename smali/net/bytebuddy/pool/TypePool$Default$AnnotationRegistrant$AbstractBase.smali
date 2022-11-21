.class public abstract Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase$ForTypeVariable;
    }
.end annotation


# instance fields
.field private final descriptor:Ljava/lang/String;

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase;->descriptor:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase;->values:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract getTokens()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;"
        }
    .end annotation
.end method

.method public onComplete()V
    .locals 4

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase;->getTokens()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase;->descriptor:Ljava/lang/String;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase;->values:Ljava/util/Map;

    invoke-direct {v1, v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public register(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
