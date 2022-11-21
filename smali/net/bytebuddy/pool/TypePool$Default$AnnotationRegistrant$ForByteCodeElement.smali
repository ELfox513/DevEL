.class public Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement;
.super Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForByteCodeElement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement$WithIndex;
    }
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


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$AbstractBase;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement;->annotationTokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement;->annotationTokens:Ljava/util/List;

    return-object v0
.end method
