.class Lcom/prineside/tdi2/managers/GameValueManager$_ProgressManagerListener;
.super Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener$ProgressManagerListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/GameValueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_ProgressManagerListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/GameValueManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/GameValueManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/GameValueManager$_ProgressManagerListener;->a:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener$ProgressManagerListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/managers/GameValueManager;Lcom/prineside/tdi2/managers/GameValueManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/managers/GameValueManager$_ProgressManagerListener;-><init>(Lcom/prineside/tdi2/managers/GameValueManager;)V

    return-void
.end method


# virtual methods
.method public itemsChanged(Lcom/prineside/tdi2/Item;II)V
    .locals 0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/enums/ItemType;->TROPHY:Lcom/prineside/tdi2/enums/ItemType;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/managers/GameValueManager$_ProgressManagerListener;->a:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/GameValueManager;->requireRecalculation()V

    :cond_0
    return-void
.end method
