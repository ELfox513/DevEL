.class public final synthetic Lg5/y8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/c9;

.field public final synthetic b:I

.field public final synthetic d:Lg5/q3;

.field public final synthetic k:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lg5/c9;ILg5/q3;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/y8;->a:Lg5/c9;

    iput p2, p0, Lg5/y8;->b:I

    iput-object p3, p0, Lg5/y8;->d:Lg5/q3;

    iput-object p4, p0, Lg5/y8;->k:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lg5/y8;->a:Lg5/c9;

    iget v1, p0, Lg5/y8;->b:I

    iget-object v2, p0, Lg5/y8;->d:Lg5/q3;

    iget-object v3, p0, Lg5/y8;->k:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lg5/c9;->c(ILg5/q3;Landroid/content/Intent;)V

    return-void
.end method
