.class Lcom/prineside/tdi2/managers/AuthManager$9$1;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/AuthManager$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/prineside/tdi2/managers/AuthManager$9;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AuthManager$9;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$9$1;->q:Lcom/prineside/tdi2/managers/AuthManager$9;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$9$1;->q:Lcom/prineside/tdi2/managers/AuthManager$9;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AuthManager$9;->k:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/AuthManager;->t(Lcom/prineside/tdi2/managers/AuthManager;)V

    return-void
.end method
