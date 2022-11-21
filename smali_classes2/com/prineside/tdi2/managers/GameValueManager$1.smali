.class Lcom/prineside/tdi2/managers/GameValueManager$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/GameValueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/GameValueManager$1;->c()Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    move-result-object v0

    return-object v0
.end method
