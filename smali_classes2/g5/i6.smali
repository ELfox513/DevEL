.class public final synthetic Lg5/i6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/i7;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lg5/i7;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/i6;->a:Lg5/i7;

    iput-object p2, p0, Lg5/i6;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg5/i6;->a:Lg5/i7;

    iget-object v1, p0, Lg5/i6;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lg5/i7;->l(Landroid/os/Bundle;)V

    return-void
.end method
