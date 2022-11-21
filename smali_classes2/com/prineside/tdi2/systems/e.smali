.class public final synthetic Lcom/prineside/tdi2/systems/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/MapEditorSystem;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/MapEditorSystem;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/e;->a:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iput-object p2, p0, Lcom/prineside/tdi2/systems/e;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/e;->a:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/e;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->c(Lcom/prineside/tdi2/systems/MapEditorSystem;Ljava/lang/Runnable;)V

    return-void
.end method
