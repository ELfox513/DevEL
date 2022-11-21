.class public abstract Lcom/prineside/tdi2/Projectile$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Projectile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/prineside/tdi2/Projectile;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Disposable;"
    }
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/Projectile$Factory$1;

    const/16 v1, 0x10

    const v2, 0x7fffffff

    invoke-direct {v0, p0, v1, v2}, Lcom/prineside/tdi2/Projectile$Factory$1;-><init>(Lcom/prineside/tdi2/Projectile$Factory;II)V

    iput-object v0, p0, Lcom/prineside/tdi2/Projectile$Factory;->a:Lcom/badlogic/gdx/utils/Pool;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/prineside/tdi2/Projectile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public clearPool()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile$Factory;->a:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->clear()V

    return-void
.end method

.method public clearPools()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile$Factory;->a:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public free(Lcom/prineside/tdi2/Projectile;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile$Factory;->a:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    return-void
.end method

.method public final obtain()Lcom/prineside/tdi2/Projectile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile$Factory;->a:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Projectile;

    return-object v0
.end method

.method public setup()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Projectile$Factory;->setupAssets()V

    :cond_0
    return-void
.end method

.method public setupAssets()V
    .locals 0

    return-void
.end method
