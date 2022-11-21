.class final enum Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Statement$2;
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

    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Statement;->a:Ljava/lang/String;

    invoke-static {p1, v1, p2, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;->t(Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    instance-of v0, p3, Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Statement;->a:Ljava/lang/String;

    const-string v1, "String"

    invoke-static {p1, v0, p2, v1}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;->s(Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p2, ""

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;->q:Ljava/lang/String;

    if-nez p2, :cond_2

    check-cast p3, Ljava/lang/String;

    iput-object p3, p1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;->q:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Statement;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": the name has been already specified"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Statement;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": the name connot be empty"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader<",
            "TE;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;->R(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader;->q:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeParser$DefaultBehaviorTreeReader$Statement;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": the name has not been specified"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
