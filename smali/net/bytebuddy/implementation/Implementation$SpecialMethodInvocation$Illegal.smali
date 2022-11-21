.class public final enum Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Illegal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;",
        ">;",
        "Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;->$VALUES:[Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;->$VALUES:[Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot implement an undefined method"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMethodDescription()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An illegal special method invocation must not be applied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An illegal special method invocation must not be applied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public withCheckedCompatibilityTo(Lnet/bytebuddy/description/method/MethodDescription$TypeToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
    .locals 0

    return-object p0
.end method
