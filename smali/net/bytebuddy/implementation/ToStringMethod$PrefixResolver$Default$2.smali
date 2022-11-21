.class final enum Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default$2;
.super Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/ToStringMethod$1;)V

    return-void
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
    .locals 0
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
