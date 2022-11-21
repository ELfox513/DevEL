.class final enum Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing$4;
.super Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;-><init>(Ljava/lang/String;ILnet/bytebuddy/build/Plugin$1;)V

    return-void
.end method


# virtual methods
.method public onManifest(Ljava/util/jar/Manifest;)V
    .locals 1
    .param p1    # Ljava/util/jar/Manifest;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Required a manifest but no manifest was found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
