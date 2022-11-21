.class public final synthetic Lr4/g12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final a:Lr4/c12;

.field public final b:Ljava/lang/String;

.field public final d:Lr4/ls1;

.field public final k:Landroid/app/Activity;

.field public final p:Lr4/xt2;

.field public final q:La3/n;


# direct methods
.method public constructor <init>(Lr4/c12;Ljava/lang/String;Lr4/ls1;Landroid/app/Activity;Lr4/xt2;La3/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/g12;->a:Lr4/c12;

    iput-object p2, p0, Lr4/g12;->b:Ljava/lang/String;

    iput-object p3, p0, Lr4/g12;->d:Lr4/ls1;

    iput-object p4, p0, Lr4/g12;->k:Landroid/app/Activity;

    iput-object p5, p0, Lr4/g12;->p:Lr4/xt2;

    iput-object p6, p0, Lr4/g12;->q:La3/n;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v3, p0, Lr4/g12;->a:Lr4/c12;

    iget-object v4, p0, Lr4/g12;->b:Ljava/lang/String;

    iget-object v1, p0, Lr4/g12;->d:Lr4/ls1;

    iget-object v0, p0, Lr4/g12;->k:Landroid/app/Activity;

    iget-object v2, p0, Lr4/g12;->p:Lr4/xt2;

    iget-object p1, p0, Lr4/g12;->q:La3/n;

    invoke-virtual {v3, v4}, Lr4/c12;->f(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string p2, "dialog_action"

    const-string v5, "dismiss"

    invoke-interface {v6, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "dialog_click"

    invoke-static/range {v0 .. v6}, Lr4/k12;->i7(Landroid/content/Context;Lr4/ls1;Lr4/xt2;Lr4/c12;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, La3/n;->a()V

    :cond_1
    return-void
.end method
