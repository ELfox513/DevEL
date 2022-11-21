.class final enum Lnet/bytebuddy/implementation/SuperMethodCall$Appender$TerminationHandler$1;
.super Lnet/bytebuddy/implementation/SuperMethodCall$Appender$TerminationHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/SuperMethodCall$Appender$TerminationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/SuperMethodCall$Appender$TerminationHandler;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/SuperMethodCall$1;)V

    return-void
.end method


# virtual methods
.method public of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 0

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    return-object p1
.end method
