.class Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Input$TextInputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$2;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$2;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$2$1;->a:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canceled()V
    .locals 0

    return-void
.end method

.method public input(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$2$1;->a:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$2;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$2;->a:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->setSelectedCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ItemCountSelectionOverlay"

    const-string v1, "invalid value"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
