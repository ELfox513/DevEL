.class Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/DarkOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueuedCaller"
.end annotation


# instance fields
.field public alpha:F

.field public layer:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public name:Ljava/lang/String;

.field public onClick:Ljava/lang/Runnable;

.field public removing:Z

.field public tint:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/DarkOverlay$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;-><init>()V

    return-void
.end method
