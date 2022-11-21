.class public final synthetic Lcom/prineside/tdi2/ui/shared/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/TextInputOverlay;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/TextInputOverlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/v1;->a:Lcom/prineside/tdi2/ui/shared/TextInputOverlay;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/v1;->a:Lcom/prineside/tdi2/ui/shared/TextInputOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/TextInputOverlay;->c(Lcom/prineside/tdi2/ui/shared/TextInputOverlay;)V

    return-void
.end method
