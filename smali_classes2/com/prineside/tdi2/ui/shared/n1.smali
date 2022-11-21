.class public final synthetic Lcom/prineside/tdi2/ui/shared/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/n1;->a:Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/n1;->a:Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay;->a(Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay;)V

    return-void
.end method
