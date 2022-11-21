.class Lcom/prineside/tdi2/managers/ProgressManager$3$1;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/ProgressManager$3;->gameLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/prineside/tdi2/managers/ProgressManager$3;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/ProgressManager$3;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ProgressManager$3$1;->q:Lcom/prineside/tdi2/managers/ProgressManager$3;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$3$1;->q:Lcom/prineside/tdi2/managers/ProgressManager$3;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ProgressManager$3;->a:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->b(Lcom/prineside/tdi2/managers/ProgressManager;)V

    return-void
.end method
