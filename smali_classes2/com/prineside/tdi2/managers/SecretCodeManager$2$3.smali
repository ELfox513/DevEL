.class Lcom/prineside/tdi2/managers/SecretCodeManager$2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/SecretCodeManager$2;->cancelled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/SecretCodeManager$2;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/SecretCodeManager$2;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/SecretCodeManager$2$3;->a:Lcom/prineside/tdi2/managers/SecretCodeManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const-string v1, "Error, please try again later"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    return-void
.end method
