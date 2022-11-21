.class Lcom/prineside/tdi2/ui/components/MapShiftButtons$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/MapShiftButtons;-><init>(Lcom/prineside/tdi2/CameraController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/MapShiftButtons;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapShiftButtons;Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$1;->b:Lcom/prineside/tdi2/ui/components/MapShiftButtons;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$1;->a:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$1;->b:Lcom/prineside/tdi2/ui/components/MapShiftButtons;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->a(Lcom/prineside/tdi2/ui/components/MapShiftButtons;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$1;->b:Lcom/prineside/tdi2/ui/components/MapShiftButtons;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->a(Lcom/prineside/tdi2/ui/components/MapShiftButtons;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$1;->b:Lcom/prineside/tdi2/ui/components/MapShiftButtons;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->a(Lcom/prineside/tdi2/ui/components/MapShiftButtons;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ui/components/MapShiftButtons$MapShiftButtonsListener;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$1;->a:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    invoke-interface {v1, v2}, Lcom/prineside/tdi2/ui/components/MapShiftButtons$MapShiftButtonsListener;->shifted(Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$1;->b:Lcom/prineside/tdi2/ui/components/MapShiftButtons;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->a(Lcom/prineside/tdi2/ui/components/MapShiftButtons;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method
