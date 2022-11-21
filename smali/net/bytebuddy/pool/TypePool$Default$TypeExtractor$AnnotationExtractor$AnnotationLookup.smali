.class public Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$AnnotationLookup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnnotationLookup"
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

.field private final descriptor:Ljava/lang/String;

.field private final name:Ljava/lang/String;

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
.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$AnnotationLookup;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$AnnotationLookup;->descriptor:Ljava/lang/String;

    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$AnnotationLookup;->name:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$AnnotationLookup;->values:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 7

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$AnnotationLookup;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->a(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;)Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$AnnotationLookup;->name:Ljava/lang/String;

    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForAnnotationValue;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$AnnotationLookup;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v3, v3, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v3, v3, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default;

    new-instance v4, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;

    iget-object v5, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$AnnotationLookup;->descriptor:Ljava/lang/String;

    iget-object v6, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$AnnotationLookup;->values:Ljava/util/Map;

    invoke-direct {v4, v5, v6}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForAnnotationValue;-><init>(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;Lnet/bytebuddy/pool/TypePool$1;)V

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;->register(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)V

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

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$AnnotationLookup;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
