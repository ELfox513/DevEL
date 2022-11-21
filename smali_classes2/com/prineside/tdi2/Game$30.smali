.class Lcom/prineside/tdi2/Game$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/Game;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/Game;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/Game;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/Game$30;->a:Lcom/prineside/tdi2/Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Game$30;->a:Lcom/prineside/tdi2/Game;

    new-instance v1, Lcom/prineside/tdi2/managers/BuffManager;

    invoke-direct {v1}, Lcom/prineside/tdi2/managers/BuffManager;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v0, p0, Lcom/prineside/tdi2/Game$30;->a:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->managers:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method
