.class public final Lv3/e1;
.super Lv3/h0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/app/Dialog;

.field public final synthetic b:Lv3/f1;


# direct methods
.method public constructor <init>(Lv3/f1;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lv3/e1;->b:Lv3/f1;

    iput-object p2, p0, Lv3/e1;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Lv3/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lv3/e1;->b:Lv3/f1;

    iget-object v0, v0, Lv3/f1;->b:Lv3/h1;

    invoke-static {v0}, Lv3/h1;->r(Lv3/h1;)V

    iget-object v0, p0, Lv3/e1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv3/e1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
