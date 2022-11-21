.class public final Lr4/vd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lr4/xd0;


# direct methods
.method public constructor <init>(Lr4/xd0;)V
    .locals 0

    iput-object p1, p0, Lr4/vd0;->a:Lr4/xd0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lr4/vd0;->a:Lr4/xd0;

    invoke-virtual {p1}, Lr4/xd0;->j()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object p2, p0, Lr4/vd0;->a:Lr4/xd0;

    invoke-static {p2}, Lr4/xd0;->h(Lr4/xd0;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lb3/k2;->p(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
