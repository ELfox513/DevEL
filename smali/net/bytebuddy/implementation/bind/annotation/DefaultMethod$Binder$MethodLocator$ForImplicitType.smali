.class public final enum Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator$ForImplicitType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForImplicitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator$ForImplicitType;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator$ForImplicitType;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator$ForImplicitType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator$ForImplicitType;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator$ForImplicitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator$ForImplicitType;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator$ForImplicitType;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator$ForImplicitType;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator$ForImplicitType;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator$ForImplicitType;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator$ForImplicitType;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator$ForImplicitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator$ForImplicitType;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator$ForImplicitType;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator$ForImplicitType;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator$ForImplicitType;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator$ForImplicitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/annotation/DefaultMethod$Binder$MethodLocator$ForImplicitType;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
    .locals 0

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/implementation/Implementation$Target;->invokeDefault(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object p1

    return-object p1
.end method
