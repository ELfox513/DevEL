.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForAdvice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

.field private final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field private final classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

.field private final locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

.field private final poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lnet/bytebuddy/asm/Advice;->withCustomMapping()Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;)V
    .locals 8

    sget-object v2, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;->SUPPRESSING:Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v4, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    sget-object v5, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;->FAST:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;

    sget-object v6, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;->STRONG:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;",
            "Lnet/bytebuddy/asm/Advice$ExceptionHandler;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iput-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iput-object p5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iput-object p6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iput-object p7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public advice(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;

    invoke-direct {v0, p1}, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice(Lnet/bytebuddy/matcher/LatentMatcher;Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    move-result-object p1

    return-object p1
.end method

.method public advice(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;

    invoke-direct {v0, p1}, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-virtual {p0, v0, p2, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice(Lnet/bytebuddy/matcher/LatentMatcher;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    move-result-object p1

    return-object p1
.end method

.method public advice(Lnet/bytebuddy/matcher/LatentMatcher;Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;"
        }
    .end annotation

    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    new-instance v7, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForUnifiedAdvice;

    invoke-direct {v7, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForUnifiedAdvice;-><init>(Lnet/bytebuddy/matcher/LatentMatcher;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-object v8
.end method

.method public advice(Lnet/bytebuddy/matcher/LatentMatcher;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;"
        }
    .end annotation

    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    new-instance v7, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForSplitAdvice;

    invoke-direct {v7, p1, p2, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForSplitAdvice;-><init>(Lnet/bytebuddy/matcher/LatentMatcher;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-object v8
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    invoke-virtual {v1}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public include(Ljava/util/List;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;"
        }
    .end annotation

    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    new-instance v4, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    invoke-static {v0, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v4, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;-><init>(Ljava/util/List;)V

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-object v8
.end method

.method public varargs include([Ljava/lang/ClassLoader;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-static {v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->include(Ljava/util/List;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    move-result-object p1

    return-object p1
.end method

.method public varargs include([Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->include(Ljava/util/List;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lnet/bytebuddy/dynamic/DynamicType$Builder;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 7
    .param p3    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p4    # Lnet/bytebuddy/utility/JavaModule;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    new-instance p5, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    invoke-interface {v1, p3, p4}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;->classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object p4

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-direct {p5, v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;-><init>([Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    iget-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    invoke-interface {p4, p5, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;->typePool(Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool;

    move-result-object p3

    new-instance p4, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    invoke-direct {p4}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;-><init>()V

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;

    invoke-virtual {v3}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;->getMatcher()Lnet/bytebuddy/matcher/LatentMatcher;

    move-result-object v4

    invoke-interface {v4, p2}, Lnet/bytebuddy/matcher/LatentMatcher;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object v4

    new-array v5, v1, [Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    invoke-virtual {v3, v6, p3, p5}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;->resolve(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object v3

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v3, v6}, Lnet/bytebuddy/asm/Advice;->withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/asm/Advice;

    move-result-object v3

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    invoke-virtual {v3, v6}, Lnet/bytebuddy/asm/Advice;->withExceptionHandler(Lnet/bytebuddy/asm/Advice$ExceptionHandler;)Lnet/bytebuddy/asm/Advice;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-virtual {p4, v4, v5}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->invokable(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-interface {p1, p4}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->visit(Lnet/bytebuddy/asm/AsmVisitorWrapper;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9

    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-object v8
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9

    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    move-object v0, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-object v8
.end method

.method public with(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9

    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    move-object v0, v8

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-object v8
.end method

.method public withExceptionHandler(Lnet/bytebuddy/asm/Advice$ExceptionHandler;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9

    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-object v8
.end method
