.class public abstract enum Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "DefaultMethodInvocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

.field public static final enum DISABLED:Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

.field public static final enum ENABLED:Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation$1;

    const-string v1, "ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;->ENABLED:Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

    new-instance v1, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation$2;

    const-string v3, "DISABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;->DISABLED:Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;->$VALUES:[Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/Implementation$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V8:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;->ENABLED:Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;->DISABLED:Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;->$VALUES:[Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

    return-object v0
.end method


# virtual methods
.method public abstract apply(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
.end method
