.class public Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEBUG_HIGH:I = 0x2

.field public static final DEBUG_LOW:I = 0x1

.field public static final DEBUG_NONE:I


# instance fields
.field public a:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader<",
            "TE;>;"
        }
    .end annotation
.end field

.field public debugLevel:I

.field public distributionAdapters:Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;

    invoke-direct {v0}, Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;-><init>(Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;I)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;-><init>(Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;I)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;-><init>(Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;ILcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;ILcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;",
            "I",
            "Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->distributionAdapters:Lcom/badlogic/gdx/ai/btree/utils/DistributionAdapters;

    iput p2, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->debugLevel:I

    if-nez p3, :cond_0

    new-instance p3, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;

    invoke-direct {p3}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;-><init>()V

    :cond_0
    iput-object p3, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->a:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;

    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;->setParser(Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;)V

    return-void
.end method

.method public static b(Lcom/badlogic/gdx/ai/btree/Task;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, p1, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->getGuard()Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Guard"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->getGuard()Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->b(Lcom/badlogic/gdx/ai/btree/Task;I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/ai/btree/Task;->getChild(I)Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object v1

    add-int/lit8 v2, p1, 0x2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->b(Lcom/badlogic/gdx/ai/btree/Task;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/ai/btree/Task;Ljava/lang/Object;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;TE;)",
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->debugLevel:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->b(Lcom/badlogic/gdx/ai/btree/Task;I)V

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/ai/btree/BehaviorTree;-><init>(Lcom/badlogic/gdx/ai/btree/Task;Ljava/lang/Object;)V

    return-object v0
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Object;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "TE;)",
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->a:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)V

    iget-object p1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->a:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;

    iget-object p1, p1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;->p:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->a(Lcom/badlogic/gdx/ai/btree/Task;Ljava/lang/Object;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/Object;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "TE;)",
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->a:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->parse(Ljava/io/InputStream;)V

    iget-object p1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->a:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;

    iget-object p1, p1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;->p:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->a(Lcom/badlogic/gdx/ai/btree/Task;Ljava/lang/Object;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/Reader;Ljava/lang/Object;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "TE;)",
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->a:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->parse(Ljava/io/Reader;)V

    iget-object p1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->a:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;

    iget-object p1, p1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;->p:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->a(Lcom/badlogic/gdx/ai/btree/Task;Ljava/lang/Object;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TE;)",
            "Lcom/badlogic/gdx/ai/btree/BehaviorTree<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->a:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->parse(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->a:Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;

    iget-object p1, p1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;->p:Lcom/badlogic/gdx/ai/btree/Task;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser;->a(Lcom/badlogic/gdx/ai/btree/Task;Ljava/lang/Object;)Lcom/badlogic/gdx/ai/btree/BehaviorTree;

    move-result-object p1

    return-object p1
.end method
