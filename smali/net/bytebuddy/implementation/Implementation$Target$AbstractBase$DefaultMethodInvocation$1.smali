.class final enum Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation$1;
.super Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/Implementation$1;)V

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
    .locals 1

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getSort()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->isUnique()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getRepresentative()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p1

    invoke-static {p1, p2}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Simple;->of(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;

    :goto_0
    return-object p1
.end method
