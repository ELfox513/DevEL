.class Lcom/prineside/tdi2/managers/ItemManager$1;
.super Lcom/prineside/tdi2/CraftRecipe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/ItemManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/prineside/tdi2/enums/ResourceType;

.field public final synthetic d:Lcom/prineside/tdi2/managers/ItemManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/ItemManager;Lcom/prineside/tdi2/enums/ResourceType;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ItemManager$1;->d:Lcom/prineside/tdi2/managers/ItemManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/ItemManager$1;->c:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-direct {p0}, Lcom/prineside/tdi2/CraftRecipe;-><init>()V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ItemManager$1;->c:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->isResourceOpened(Lcom/prineside/tdi2/enums/ResourceType;)Z

    move-result v0

    return v0
.end method
