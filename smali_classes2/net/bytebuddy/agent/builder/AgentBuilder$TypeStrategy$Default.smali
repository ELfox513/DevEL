.class public abstract enum Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

.field public static final enum DECORATE:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

.field public static final enum REBASE:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

.field public static final enum REDEFINE:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

.field public static final enum REDEFINE_FROZEN:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default$1;

    const-string v1, "REBASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;->REBASE:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default$2;

    const-string v3, "REDEFINE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;->REDEFINE:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    new-instance v3, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default$3;

    const-string v5, "REDEFINE_FROZEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;->REDEFINE_FROZEN:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    new-instance v5, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default$4;

    const-string v7, "DECORATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;->DECORATE:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/agent/builder/AgentBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy$Default;

    return-object v0
.end method
