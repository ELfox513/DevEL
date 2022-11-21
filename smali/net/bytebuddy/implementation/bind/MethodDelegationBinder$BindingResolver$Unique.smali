.class public final enum Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unique"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;

.field private static final ONLY:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;->$VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;->$VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Unique;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;",
            ">;)",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " allowed for more than one binding: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
