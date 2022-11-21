.class Lcom/prineside/tdi2/managers/ResearchManager$2;
.super Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener$ResearchManagerListenerAdapter;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ResearchManager$2;->a:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener$ResearchManagerListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public researchCompleted(Lcom/prineside/tdi2/Research;)V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "type"

    aput-object v3, v1, v2

    iget-object v2, p1, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "level"

    aput-object v3, v1, v2

    iget p1, p1, Lcom/prineside/tdi2/Research;->installedLevel:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const-string p1, "research_completed"

    invoke-interface {v0, p1, v1}, Lcom/prineside/tdi2/ActionResolver;->logCustomEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
