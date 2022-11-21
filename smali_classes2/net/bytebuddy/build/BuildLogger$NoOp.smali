.class public final enum Lnet/bytebuddy/build/BuildLogger$NoOp;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/BuildLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/BuildLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/build/BuildLogger$NoOp;",
        ">;",
        "Lnet/bytebuddy/build/BuildLogger;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/build/BuildLogger$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/build/BuildLogger$NoOp;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/build/BuildLogger$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/build/BuildLogger$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/build/BuildLogger$NoOp;->INSTANCE:Lnet/bytebuddy/build/BuildLogger$NoOp;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/build/BuildLogger$NoOp;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/build/BuildLogger$NoOp;->$VALUES:[Lnet/bytebuddy/build/BuildLogger$NoOp;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/build/BuildLogger$NoOp;
    .locals 1

    const-class v0, Lnet/bytebuddy/build/BuildLogger$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/build/BuildLogger$NoOp;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/build/BuildLogger$NoOp;
    .locals 1

    sget-object v0, Lnet/bytebuddy/build/BuildLogger$NoOp;->$VALUES:[Lnet/bytebuddy/build/BuildLogger$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/build/BuildLogger$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/build/BuildLogger$NoOp;

    return-object v0
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
