.class public final enum Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForInterceptedMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;",
        ">;",
        "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;->INSTANCE:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;->$VALUES:[Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;->$VALUES:[Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForInterceptedMethod;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 0

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    return-object p1
.end method
