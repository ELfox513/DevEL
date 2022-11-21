.class Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$1;->b:Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;-><init>()V

    iput-object p0, v0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->start()V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$1;->c()Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;

    move-result-object v0

    return-object v0
.end method
