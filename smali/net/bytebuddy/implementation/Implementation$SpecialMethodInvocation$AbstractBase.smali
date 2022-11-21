.class public abstract Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$AbstractBase;
.super Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# instance fields
.field private transient synthetic hashCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    invoke-interface {p0}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;->getMethodDescription()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object v1

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;->getMethodDescription()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "hashCode"
    .end annotation

    iget v0, p0, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$AbstractBase;->hashCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;->getMethodDescription()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget v0, p0, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$AbstractBase;->hashCode:I

    goto :goto_1

    :cond_1
    iput v0, p0, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$AbstractBase;->hashCode:I

    :goto_1
    return v0
.end method
