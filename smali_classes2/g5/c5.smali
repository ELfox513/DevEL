.class public final synthetic Lg5/c5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/u5;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lg5/u5;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/c5;->a:Lg5/u5;

    iput-object p2, p0, Lg5/c5;->b:Ljava/lang/String;

    iput-object p3, p0, Lg5/c5;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg5/c5;->a:Lg5/u5;

    iget-object v1, p0, Lg5/c5;->b:Ljava/lang/String;

    iget-object v2, p0, Lg5/c5;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lg5/u5;->p6(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
