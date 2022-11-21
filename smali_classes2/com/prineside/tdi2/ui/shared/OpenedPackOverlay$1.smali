.class Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay;->show(Lcom/badlogic/gdx/utils/Array;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/ItemCell;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay;Lcom/prineside/tdi2/ui/actors/ItemCell;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay$1;->b:Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay$1;->a:Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay$1;->a:Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->reveal()V

    return-void
.end method
