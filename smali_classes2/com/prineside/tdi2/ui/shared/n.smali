.class public final synthetic Lcom/prineside/tdi2/ui/shared/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/n;->a:Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/n;->a:Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->a(Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;)V

    return-void
.end method
