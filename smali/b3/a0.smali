.class public final Lb3/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lb3/b0;


# direct methods
.method public constructor <init>(Lb3/b0;)V
    .locals 0

    iput-object p1, p0, Lb3/a0;->a:Lb3/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object p1, p0, Lb3/a0;->a:Lb3/b0;

    iget-object p1, p1, Lb3/b0;->a:Landroid/content/Context;

    const-string p2, "https://support.google.com/dfp_premium/answer/7160685#push"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lb3/k2;->x(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
