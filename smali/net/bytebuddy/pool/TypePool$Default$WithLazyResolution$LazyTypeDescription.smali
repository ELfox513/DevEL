.class public Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyTypeDescription;
.super Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LazyTypeDescription"
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;

.field private transient synthetic delegate:Lnet/bytebuddy/description/type/TypeDescription;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyTypeDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;

    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyTypeDescription;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delegate()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "delegate"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyTypeDescription;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyTypeDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyTypeDescription;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;->doResolve(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyTypeDescription;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyTypeDescription;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    :goto_1
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyTypeDescription;->name:Ljava/lang/String;

    return-object v0
.end method
