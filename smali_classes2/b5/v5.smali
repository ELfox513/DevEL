.class public final Lb5/v5;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lb5/x5;


# direct methods
.method public constructor <init>(Lb5/x5;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lb5/v5;->a:Lb5/x5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, Lb5/v5;->a:Lb5/x5;

    invoke-virtual {p1}, Lb5/x5;->e()V

    return-void
.end method
