.class Lcom/prineside/tdi2/managers/PurchaseManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Game$GameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/PurchaseManager;->reload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lcom/prineside/tdi2/managers/PurchaseManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/PurchaseManager;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/PurchaseManager$5;->b:Lcom/prineside/tdi2/managers/PurchaseManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/PurchaseManager$5;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gameLoaded()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/PurchaseManager$5;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public gameStartedLoading()V
    .locals 0

    return-void
.end method

.method public render()V
    .locals 0

    return-void
.end method
