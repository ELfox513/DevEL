.class public abstract enum Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;",
        ">;",
        "Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;

.field public static final enum DECORATE:Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;

.field public static final enum REBASE:Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;

.field public static final enum REDEFINE:Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default$1;

    const-string v1, "REDEFINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;->REDEFINE:Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;

    new-instance v1, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default$2;

    const-string v3, "REBASE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;->REBASE:Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;

    new-instance v3, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default$3;

    const-string v5, "DECORATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;->DECORATE:Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;->$VALUES:[Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/build/Plugin$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;
    .locals 1

    const-class v0, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;
    .locals 1

    sget-object v0, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;->$VALUES:[Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;

    invoke-virtual {v0}, [Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$Default;

    return-object v0
.end method
