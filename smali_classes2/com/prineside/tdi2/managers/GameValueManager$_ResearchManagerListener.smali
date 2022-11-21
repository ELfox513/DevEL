.class Lcom/prineside/tdi2/managers/GameValueManager$_ResearchManagerListener;
.super Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener$ResearchManagerListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/GameValueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_ResearchManagerListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/GameValueManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/GameValueManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/GameValueManager$_ResearchManagerListener;->a:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener$ResearchManagerListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/managers/GameValueManager;Lcom/prineside/tdi2/managers/GameValueManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/managers/GameValueManager$_ResearchManagerListener;-><init>(Lcom/prineside/tdi2/managers/GameValueManager;)V

    return-void
.end method


# virtual methods
.method public researchesUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager$_ResearchManagerListener;->a:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->requireRecalculation()V

    return-void
.end method
