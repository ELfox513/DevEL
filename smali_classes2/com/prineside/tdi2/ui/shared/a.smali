.class public final synthetic Lcom/prineside/tdi2/ui/shared/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/a;->a:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/a;->a:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->hide()V

    return-void
.end method
