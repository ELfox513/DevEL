.class Lcom/prineside/tdi2/managers/UiManager$_ScreenManagerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/managers/ScreenManager$ScreenManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/UiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_ScreenManagerListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/UiManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/UiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/UiManager$_ScreenManagerListener;->a:Lcom/prineside/tdi2/managers/UiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/managers/UiManager;Lcom/prineside/tdi2/managers/UiManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/managers/UiManager$_ScreenManagerListener;-><init>(Lcom/prineside/tdi2/managers/UiManager;)V

    return-void
.end method


# virtual methods
.method public screenChanged()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager$_ScreenManagerListener;->a:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager;->removeAllHighlights()V

    return-void
.end method
