.class Lcom/prineside/tdi2/managers/ResearchManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/ResearchManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/ResearchManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/ResearchManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ResearchManager$3;->a:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager$3;->a:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/ResearchManager;->b(Lcom/prineside/tdi2/managers/ResearchManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ResearchManager$3;->a:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ResearchManager;->save()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method
