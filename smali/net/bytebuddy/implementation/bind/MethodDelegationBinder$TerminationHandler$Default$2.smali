.class final enum Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler$Default$2;
.super Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler$Default;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bind/MethodDelegationBinder$1;)V

    return-void
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 0

    invoke-interface {p4}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p4}, Lnet/bytebuddy/description/DeclaredByType$WithMandatoryDeclaration;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p4}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/Removal;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    return-object p1
.end method
