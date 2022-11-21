.class public final synthetic Lcom/prineside/tdi2/ui/shared/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/x1;->a:Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/x1;->a:Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->hide()V

    return-void
.end method
