.class public final enum Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Directional"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;

.field public static final enum LEFT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;

.field public static final enum RIGHT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;


# instance fields
.field private final left:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;->LEFT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;

    new-instance v1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;

    const-string v4, "RIGHT"

    invoke-direct {v1, v4, v3, v2}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;->RIGHT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;

    const/4 v4, 0x2

    new-array v4, v4, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;->$VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;->left:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;->$VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;
    .locals 0

    iget-boolean p1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Directional;->left:Z

    if-eqz p1, :cond_0

    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->LEFT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->RIGHT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    :goto_0
    return-object p1
.end method
