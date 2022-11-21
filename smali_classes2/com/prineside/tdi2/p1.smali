.class public final synthetic Lcom/prineside/tdi2/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/HeadlessReplayCleanupGame;

.field public final synthetic b:Lcom/badlogic/gdx/utils/JsonValue;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/HeadlessReplayCleanupGame;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/p1;->a:Lcom/prineside/tdi2/HeadlessReplayCleanupGame;

    iput-object p2, p0, Lcom/prineside/tdi2/p1;->b:Lcom/badlogic/gdx/utils/JsonValue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/p1;->a:Lcom/prineside/tdi2/HeadlessReplayCleanupGame;

    iget-object v1, p0, Lcom/prineside/tdi2/p1;->b:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->d(Lcom/prineside/tdi2/HeadlessReplayCleanupGame;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method
