.class Lcom/prineside/tdi2/screens/StatisticsScreen$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/StatisticsScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/StatisticsScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/StatisticsScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/StatisticsScreen$6;->a:Lcom/prineside/tdi2/screens/StatisticsScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getIssuedPrizes()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_1

    const/16 v3, 0x32

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/IssuedItems;

    iput-boolean v1, v3, Lcom/prineside/tdi2/IssuedItems;->shown:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->showNewlyIssuedPrizesPopup()V

    return-void
.end method
