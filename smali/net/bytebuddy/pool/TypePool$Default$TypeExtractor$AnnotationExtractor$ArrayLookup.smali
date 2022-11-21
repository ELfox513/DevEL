.class public Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$ArrayLookup;
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
    name = "ArrayLookup"
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

.field private final componentTypeReference:Lnet/bytebuddy/pool/TypePool$AbstractBase$ComponentTypeReference;

.field private final name:Ljava/lang/String;

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$AbstractBase$ComponentTypeReference;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$ArrayLookup;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$ArrayLookup;->name:Ljava/lang/String;

    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$ArrayLookup;->componentTypeReference:Lnet/bytebuddy/pool/TypePool$AbstractBase$ComponentTypeReference;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$ArrayLookup;->values:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$AbstractBase$ComponentTypeReference;Lnet/bytebuddy/pool/TypePool$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$ArrayLookup;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$AbstractBase$ComponentTypeReference;)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 7

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$ArrayLookup;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->a(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;)Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$ArrayLookup;->name:Ljava/lang/String;

    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForArray;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$ArrayLookup;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v3, v3, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v3, v3, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default;

    iget-object v4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$ArrayLookup;->componentTypeReference:Lnet/bytebuddy/pool/TypePool$AbstractBase$ComponentTypeReference;

    iget-object v5, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$ArrayLookup;->values:Ljava/util/List;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForArray;-><init>(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/pool/TypePool$AbstractBase$ComponentTypeReference;Ljava/util/List;Lnet/bytebuddy/pool/TypePool$1;)V

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;->register(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)V

    return-void
.end method

.method public register(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;)V"
        }
    .end annotation

    iget-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$ArrayLookup;->values:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
