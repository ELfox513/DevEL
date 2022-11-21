.class public final enum Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Simple"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;->$VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;->$VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker$Simple;

    return-object v0
.end method


# virtual methods
.method public invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 0

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object p1

    return-object p1
.end method
