.class final enum Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Statement$1;
.super Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Statement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Statement;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$1;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader<",
            "TE;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    instance-of v0, p3, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Statement;->a:Ljava/lang/String;

    const-string v1, "String"

    invoke-static {p1, v0, p2, v1}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;->s(Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;->z(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public d(Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader<",
            "TE;>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    return-void
.end method

.method public f(Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader<",
            "TE;>;)V"
        }
    .end annotation

    return-void
.end method
