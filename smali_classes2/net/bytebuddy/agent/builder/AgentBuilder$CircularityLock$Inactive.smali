.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Inactive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;

    return-object v0
.end method


# virtual methods
.method public acquire()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
