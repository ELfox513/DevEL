.class final Lcom/badlogic/gdx/ai/msg/MessageDispatcher$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/msg/MessageDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/badlogic/gdx/ai/msg/Telegram;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Pool;-><init>(I)V

    return-void
.end method


# virtual methods
.method public c()Lcom/badlogic/gdx/ai/msg/Telegram;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/ai/msg/Telegram;

    invoke-direct {v0}, Lcom/badlogic/gdx/ai/msg/Telegram;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher$1;->c()Lcom/badlogic/gdx/ai/msg/Telegram;

    move-result-object v0

    return-object v0
.end method
