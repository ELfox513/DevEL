.class final enum Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$8;
.super Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/implementation/InvokeDynamic$1;)V

    return-void
.end method


# virtual methods
.method public make(Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$WrappingArgumentProvider;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->forValue(D)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$WrappingArgumentProvider;-><init>(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
.end method
