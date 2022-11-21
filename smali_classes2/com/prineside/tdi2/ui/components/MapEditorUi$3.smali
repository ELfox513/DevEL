.class Lcom/prineside/tdi2/ui/components/MapEditorUi$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/MapEditorUi;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/MapEditorUi;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorUi;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi$3;->a:Lcom/prineside/tdi2/ui/components/MapEditorUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi$3;->a:Lcom/prineside/tdi2/ui/components/MapEditorUi;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->mapEditorHints:Lcom/prineside/tdi2/ui/components/MapEditorHints;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/MapEditorHints;->show()V

    return-void
.end method
