.class public final Lr4/xp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e81;


# instance fields
.field public final a:Lr4/cs0;


# direct methods
.method public constructor <init>(Lr4/cs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/xp1;->a:Lr4/cs0;

    return-void
.end method


# virtual methods
.method public final e0(Landroid/content/Context;)V
    .locals 0

    iget-object p1, p0, Lr4/xp1;->a:Lr4/cs0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lr4/cs0;->onPause()V

    :cond_0
    return-void
.end method

.method public final o(Landroid/content/Context;)V
    .locals 0

    iget-object p1, p0, Lr4/xp1;->a:Lr4/cs0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lr4/cs0;->onResume()V

    :cond_0
    return-void
.end method

.method public final v(Landroid/content/Context;)V
    .locals 0

    iget-object p1, p0, Lr4/xp1;->a:Lr4/cs0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lr4/cs0;->destroy()V

    :cond_0
    return-void
.end method
