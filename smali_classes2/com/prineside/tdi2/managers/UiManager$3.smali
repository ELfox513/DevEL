.class Lcom/prineside/tdi2/managers/UiManager$3;
.super Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener$ProgressManagerListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/UiManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/UiManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/UiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/UiManager$3;->a:Lcom/prineside/tdi2/managers/UiManager;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener$ProgressManagerListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public developerConsoleEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager$3;->a:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v0, Lcom/prineside/tdi2/managers/UiManager;->developerConsole:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    if-nez v1, :cond_0

    new-instance v1, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-direct {v1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/managers/UiManager;->developerConsole:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    :cond_0
    return-void
.end method
