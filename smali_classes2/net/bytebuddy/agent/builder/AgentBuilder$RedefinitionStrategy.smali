.class public abstract enum Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "RedefinitionStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionEnforcer;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

.field public static final enum DISABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

.field public static final DISPATCHER:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;

.field public static final enum REDEFINITION:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

.field public static final enum RETRANSFORMATION:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;


# instance fields
.field private final enabled:Z

.field private final retransforming:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$1;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->DISABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$2;

    const-string v3, "REDEFINITION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$2;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->REDEFINITION:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    new-instance v3, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$3;

    const-string v5, "RETRANSFORMATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4, v4}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$3;-><init>(Ljava/lang/String;IZZ)V

    sput-object v3, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->RETRANSFORMATION:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->d(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->DISPATCHER:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->enabled:Z

    iput-boolean p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->retransforming:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZZLnet/bytebuddy/agent/builder/AgentBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;)V
    .locals 13

    move-object v0, p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->check(Ljava/lang/instrument/Instrumentation;)V

    move-object/from16 v1, p6

    invoke-interface {v1, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;->resolve(Ljava/lang/instrument/Instrumentation;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    move-object v5, p0

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p12

    invoke-virtual/range {v5 .. v12}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->make(Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;

    move-result-object v5

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_3

    move-object/from16 v7, p7

    invoke-virtual {v7, v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->isInstrumented(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    sget-object v8, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->DISPATCHER:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;

    invoke-interface {v8, p1, v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Dispatcher;->isModifiableClass(Ljava/lang/instrument/Instrumentation;Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-static {v8}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v9

    invoke-virtual {v9, v8}, Lnet/bytebuddy/ClassFileVersion;->isAtMost(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v5, v6, v8}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->consider(Ljava/lang/Class;Z)V

    goto :goto_1

    :cond_3
    move-object/from16 v7, p7

    goto :goto_1

    :cond_4
    move-object/from16 v7, p7

    move-object/from16 v6, p9

    move-object/from16 v8, p11

    invoke-virtual {v5, p1, v8, v6, v3}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->apply(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;I)I

    move-result v3

    goto :goto_0

    :cond_5
    return-void
.end method

.method public abstract check(Ljava/lang/instrument/Instrumentation;)V
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->enabled:Z

    return v0
.end method

.method public isRetransforming()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->retransforming:Z

    return v0
.end method

.method public abstract make(Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;
.end method
