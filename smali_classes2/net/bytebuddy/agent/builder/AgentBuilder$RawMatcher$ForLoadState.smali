.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForLoadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

.field public static final enum LOADED:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

.field public static final enum UNLOADED:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;


# instance fields
.field private final unloaded:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    const-string v1, "LOADED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->LOADED:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    const-string v3, "UNLOADED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->UNLOADED:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

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

    iput-boolean p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->unloaded:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;

    return-object v0
.end method


# virtual methods
.method public matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z
    .locals 0
    .param p2    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p3    # Lnet/bytebuddy/utility/JavaModule;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Class;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-nez p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-boolean p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;->unloaded:Z

    if-ne p3, p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
