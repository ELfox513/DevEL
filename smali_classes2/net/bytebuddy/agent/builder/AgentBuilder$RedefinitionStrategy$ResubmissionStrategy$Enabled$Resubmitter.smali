.class public Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$Resubmitter;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$Adapter;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionEnforcer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resubmitter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$Resubmitter$ConcurrentHashSet;
    }
.end annotation


# instance fields
.field private final resubmissionImmediateMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$ResubmissionImmediateMatcher;

.field private final resubmissionOnErrorMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$ResubmissionOnErrorMatcher;

.field private final types:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$ResubmissionOnErrorMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$ResubmissionImmediateMatcher;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$ResubmissionOnErrorMatcher;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$ResubmissionImmediateMatcher;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$Adapter;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$Resubmitter;->resubmissionOnErrorMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$ResubmissionOnErrorMatcher;

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$Resubmitter;->resubmissionImmediateMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$ResubmissionImmediateMatcher;

    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$Resubmitter;->types:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public isEnforced(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;)Z
    .locals 1
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
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Cross-comparison is intended."
        value = {
            "GC_UNRELATED_TYPES"
        }
    .end annotation

    if-nez p4, :cond_1

    iget-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$Resubmitter;->resubmissionImmediateMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$ResubmissionImmediateMatcher;

    invoke-interface {p4, p1, p2, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$ResubmissionImmediateMatcher;->matches(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$Resubmitter;->types:Ljava/util/concurrent/ConcurrentMap;

    new-instance p4, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$LookupKey;

    invoke-direct {p4, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$LookupKey;-><init>(Ljava/lang/ClassLoader;)V

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    if-nez p3, :cond_0

    new-instance p3, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$Resubmitter$ConcurrentHashSet;

    invoke-direct {p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$Resubmitter$ConcurrentHashSet;-><init>()V

    iget-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$Resubmitter;->types:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;

    invoke-direct {v0, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;-><init>(Ljava/lang/ClassLoader;)V

    invoke-interface {p4, v0, p3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    if-eqz p2, :cond_0

    move-object p3, p2

    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onError(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLjava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p3    # Lnet/bytebuddy/utility/JavaModule;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Cross-comparison is intended."
        value = {
            "GC_UNRELATED_TYPES"
        }
    .end annotation

    if-nez p4, :cond_1

    iget-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$Resubmitter;->resubmissionOnErrorMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$ResubmissionOnErrorMatcher;

    invoke-interface {p4, p5, p1, p2, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$ResubmissionOnErrorMatcher;->matches(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$Resubmitter;->types:Ljava/util/concurrent/ConcurrentMap;

    new-instance p4, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$LookupKey;

    invoke-direct {p4, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$LookupKey;-><init>(Ljava/lang/ClassLoader;)V

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    if-nez p3, :cond_0

    new-instance p3, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$Resubmitter$ConcurrentHashSet;

    invoke-direct {p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$Resubmitter$ConcurrentHashSet;-><init>()V

    iget-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$Resubmitter;->types:Ljava/util/concurrent/ConcurrentMap;

    new-instance p5, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;

    invoke-direct {p5, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey;-><init>(Ljava/lang/ClassLoader;)V

    invoke-interface {p4, p5, p3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    if-eqz p2, :cond_0

    move-object p3, p2

    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
