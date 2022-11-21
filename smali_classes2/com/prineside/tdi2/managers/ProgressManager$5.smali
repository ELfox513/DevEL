.class Lcom/prineside/tdi2/managers/ProgressManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/ProgressManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/ProgressManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/ProgressManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ProgressManager$5;->a:Lcom/prineside/tdi2/managers/ProgressManager;

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

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$5;->a:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->saveIfRequired()V

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method
