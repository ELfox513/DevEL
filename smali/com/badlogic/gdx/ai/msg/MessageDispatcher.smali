.class public Lcom/badlogic/gdx/ai/msg/MessageDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/msg/Telegraph;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/msg/MessageDispatcher$PendingMessageCallback;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "MessageDispatcher"

.field public static final f:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/ai/msg/Telegram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/badlogic/gdx/ai/msg/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/msg/PriorityQueue<",
            "Lcom/badlogic/gdx/ai/msg/Telegram;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/msg/Telegraph;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/msg/TelegramProvider;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher$1;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher$1;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->f:Lcom/badlogic/gdx/utils/Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;

    invoke-direct {v0}, Lcom/badlogic/gdx/ai/msg/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->a:Lcom/badlogic/gdx/ai/msg/PriorityQueue;

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->b:Lcom/badlogic/gdx/utils/IntMap;

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->c:Lcom/badlogic/gdx/utils/IntMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/ai/msg/Telegram;)V
    .locals 6

    iget-object v0, p1, Lcom/badlogic/gdx/ai/msg/Telegram;->receiver:Lcom/badlogic/gdx/ai/msg/Telegraph;

    const-string v1, " not handled"

    const-string v2, "Message "

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/ai/msg/Telegraph;->handleMessage(Lcom/badlogic/gdx/ai/msg/Telegram;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->d:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v0

    sget-object v3, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/badlogic/gdx/ai/msg/Telegram;->message:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->b:Lcom/badlogic/gdx/utils/IntMap;

    iget v3, p1, Lcom/badlogic/gdx/ai/msg/Telegram;->message:I

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    :goto_0
    iget v5, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_2

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/ai/msg/Telegraph;

    invoke-interface {v5, p1}, Lcom/badlogic/gdx/ai/msg/Telegraph;->handleMessage(Lcom/badlogic/gdx/ai/msg/Telegram;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    :cond_3
    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->d:Z

    if-eqz v0, :cond_4

    if-nez v3, :cond_4

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v0

    sget-object v3, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/badlogic/gdx/ai/msg/Telegram;->message:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget v0, p1, Lcom/badlogic/gdx/ai/msg/Telegram;->returnReceiptStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lcom/badlogic/gdx/ai/msg/Telegram;->sender:Lcom/badlogic/gdx/ai/msg/Telegraph;

    iput-object v0, p1, Lcom/badlogic/gdx/ai/msg/Telegram;->receiver:Lcom/badlogic/gdx/ai/msg/Telegraph;

    iput-object p0, p1, Lcom/badlogic/gdx/ai/msg/Telegram;->sender:Lcom/badlogic/gdx/ai/msg/Telegraph;

    const/4 v0, 0x2

    iput v0, p1, Lcom/badlogic/gdx/ai/msg/Telegram;->returnReceiptStatus:I

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->a(Lcom/badlogic/gdx/ai/msg/Telegram;)V

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->f:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public addListener(Lcom/badlogic/gdx/ai/msg/Telegraph;I)V
    .locals 11

    iget-object v0, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->b:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iget-object v2, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->b:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v2, p2, v0}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->c:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_3

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/ai/msg/TelegramProvider;

    invoke-interface {v3, p2, p1}, Lcom/badlogic/gdx/ai/msg/TelegramProvider;->provideMessageInfo(ILcom/badlogic/gdx/ai/msg/Telegraph;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    const-class v4, Lcom/badlogic/gdx/ai/msg/Telegraph;

    invoke-static {v4, v3}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isInstance(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v3, Lcom/badlogic/gdx/ai/msg/Telegraph;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move-object v6, v3

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v4 .. v10}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public varargs addListeners(Lcom/badlogic/gdx/ai/msg/Telegraph;[I)V
    .locals 3

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->addListener(Lcom/badlogic/gdx/ai/msg/Telegraph;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addProvider(Lcom/badlogic/gdx/ai/msg/TelegramProvider;I)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->c:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iget-object v1, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->c:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v1, p2, v0}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public varargs addProviders(Lcom/badlogic/gdx/ai/msg/TelegramProvider;[I)V
    .locals 3

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->addProvider(Lcom/badlogic/gdx/ai/msg/TelegramProvider;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->clearQueue()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->clearListeners()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->clearProviders()V

    return-void
.end method

.method public clearListeners()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->b:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap;->clear()V

    return-void
.end method

.method public clearListeners(I)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->b:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public varargs clearListeners([I)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->clearListeners(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearProviders()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->c:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap;->clear()V

    return-void
.end method

.method public clearProviders(I)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->c:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public varargs clearProviders([I)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->clearProviders(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearQueue()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->a:Lcom/badlogic/gdx/ai/msg/PriorityQueue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->f:Lcom/badlogic/gdx/utils/Pool;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->a:Lcom/badlogic/gdx/ai/msg/PriorityQueue;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->get(I)Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->a:Lcom/badlogic/gdx/ai/msg/PriorityQueue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->clear()V

    return-void
.end method

.method public dispatchMessage(FI)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    return-void
.end method

.method public dispatchMessage(FILjava/lang/Object;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    return-void
.end method

.method public dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;I)V
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    return-void
.end method

.method public dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    return-void
.end method

.method public dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    return-void
.end method

.method public dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;IZ)V
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    return-void
.end method

.method public dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;I)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    return-void
.end method

.method public dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    return-void
.end method

.method public dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V
    .locals 5

    if-nez p2, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Sender cannot be null when a return receipt is needed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->f:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/ai/msg/Telegram;

    iput-object p2, v1, Lcom/badlogic/gdx/ai/msg/Telegram;->sender:Lcom/badlogic/gdx/ai/msg/Telegraph;

    iput-object p3, v1, Lcom/badlogic/gdx/ai/msg/Telegram;->receiver:Lcom/badlogic/gdx/ai/msg/Telegraph;

    iput p4, v1, Lcom/badlogic/gdx/ai/msg/Telegram;->message:I

    iput-object p5, v1, Lcom/badlogic/gdx/ai/msg/Telegram;->extraInfo:Ljava/lang/Object;

    iput p6, v1, Lcom/badlogic/gdx/ai/msg/Telegram;->returnReceiptStatus:I

    const/4 p5, 0x0

    const-string p6, ". Message code is "

    const-string v2, " for "

    cmpg-float p5, p1, p5

    if-gtz p5, :cond_3

    iget-boolean p1, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->d:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getTimepiece()Lcom/badlogic/gdx/ai/Timepiece;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/ai/Timepiece;->getTime()F

    move-result p1

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object p5

    sget-object v0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instant telegram dispatched at time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " by "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, v0, p1}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->a(Lcom/badlogic/gdx/ai/msg/Telegram;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getTimepiece()Lcom/badlogic/gdx/ai/Timepiece;

    move-result-object p5

    invoke-interface {p5}, Lcom/badlogic/gdx/ai/Timepiece;->getTime()F

    move-result p5

    add-float/2addr p1, p5

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/ai/msg/Telegram;->setTimestamp(F)V

    iget-object p1, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->a:Lcom/badlogic/gdx/ai/msg/PriorityQueue;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->add(Ljava/lang/Comparable;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_4
    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->d:Z

    if-eqz v0, :cond_6

    const-string v0, "Delayed telegram from "

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object p1

    sget-object v1, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " recorded at time "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object p1

    sget-object p5, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->e:Ljava/lang/String;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " rejected by the queue. Message code is "

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p5, p2}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;IZ)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    return-void
.end method

.method public dispatchMessage(I)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    return-void
.end method

.method public dispatchMessage(ILjava/lang/Object;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    return-void
.end method

.method public dispatchMessage(Lcom/badlogic/gdx/ai/msg/Telegraph;I)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    return-void
.end method

.method public dispatchMessage(Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    return-void
.end method

.method public dispatchMessage(Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    return-void
.end method

.method public dispatchMessage(Lcom/badlogic/gdx/ai/msg/Telegraph;IZ)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    return-void
.end method

.method public dispatchMessage(Lcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;I)V
    .locals 7

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    return-void
.end method

.method public dispatchMessage(Lcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    return-void
.end method

.method public dispatchMessage(Lcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    return-void
.end method

.method public dispatchMessage(Lcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;IZ)V
    .locals 7

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;Z)V

    return-void
.end method

.method public handleMessage(Lcom/badlogic/gdx/ai/msg/Telegram;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isDebugEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->d:Z

    return v0
.end method

.method public removeListener(Lcom/badlogic/gdx/ai/msg/Telegraph;I)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->b:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/utils/Array;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    :cond_0
    return-void
.end method

.method public varargs removeListener(Lcom/badlogic/gdx/ai/msg/Telegraph;[I)V
    .locals 3

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->removeListener(Lcom/badlogic/gdx/ai/msg/Telegraph;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scanQueue(Lcom/badlogic/gdx/ai/msg/MessageDispatcher$PendingMessageCallback;)V
    .locals 12

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getTimepiece()Lcom/badlogic/gdx/ai/Timepiece;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/Timepiece;->getTime()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->a:Lcom/badlogic/gdx/ai/msg/PriorityQueue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->a:Lcom/badlogic/gdx/ai/msg/PriorityQueue;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->get(I)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/ai/msg/Telegram;

    invoke-virtual {v3}, Lcom/badlogic/gdx/ai/msg/Telegram;->getTimestamp()F

    move-result v4

    sub-float v6, v4, v0

    iget-object v7, v3, Lcom/badlogic/gdx/ai/msg/Telegram;->sender:Lcom/badlogic/gdx/ai/msg/Telegraph;

    iget-object v8, v3, Lcom/badlogic/gdx/ai/msg/Telegram;->receiver:Lcom/badlogic/gdx/ai/msg/Telegraph;

    iget v9, v3, Lcom/badlogic/gdx/ai/msg/Telegram;->message:I

    iget-object v10, v3, Lcom/badlogic/gdx/ai/msg/Telegram;->extraInfo:Ljava/lang/Object;

    iget v11, v3, Lcom/badlogic/gdx/ai/msg/Telegram;->returnReceiptStatus:I

    move-object v5, p1

    invoke-interface/range {v5 .. v11}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher$PendingMessageCallback;->report(FLcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDebugEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->d:Z

    return-void
.end method

.method public update()V
    .locals 6

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getTimepiece()Lcom/badlogic/gdx/ai/Timepiece;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/Timepiece;->getTime()F

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->a:Lcom/badlogic/gdx/ai/msg/PriorityQueue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->peek()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/ai/msg/Telegram;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/badlogic/gdx/ai/msg/Telegram;->getTimestamp()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->d:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Queued telegram ready for dispatch: Sent to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/badlogic/gdx/ai/msg/Telegram;->receiver:Lcom/badlogic/gdx/ai/msg/Telegraph;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". Message code is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/badlogic/gdx/ai/msg/Telegram;->message:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->a(Lcom/badlogic/gdx/ai/msg/Telegram;)V

    iget-object v1, p0, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->a:Lcom/badlogic/gdx/ai/msg/PriorityQueue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->poll()Ljava/lang/Comparable;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
