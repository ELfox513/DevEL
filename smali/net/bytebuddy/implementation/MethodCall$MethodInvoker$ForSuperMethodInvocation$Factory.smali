.class final enum Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;",
        ">;",
        "Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;

    return-object v0
.end method


# virtual methods
.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;
    .locals 3

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation;

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke super method for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
